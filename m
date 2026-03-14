Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E572ED15D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773524094; cv=none; b=b1uunPGTpxlWWBVdXqx7jL1Bwp9/LVv+j2CaIFp0J5K5g2SLvw4Y5QT7OY5re/GRygliJbSWZ2kr6IY29yBQ+6yarP4fFdEYESGxvtA/Ufr/KFNwiLBHNcj4m8jJIqN3EnVidUjkqU3gncYLnQ9hWR8H9kyQ4DUVFJaaz7HgUjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773524094; c=relaxed/simple;
	bh=6P/Cb5FvkgztmfM/XAhnZsb8QgKMdSN3kaVNrIKRneg=;
	h=To:Subject:From:Message-Id:Date; b=jRGz35tW53vz45kT9FYKDwJSTMNuAj7oufAQLMk6KqwxWD1LSJM5s+r49rYIDPTXJGb7Ur6oxQRoidHXMjvDnj9BaGXwHCj2FYNC5spbJdOaaUm+ieGLJ+3DDl4jdHcV0gw/UP8hUvdioBXGMtKkoxd1y4sHAH9qY0mEyutkhrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7vFPuqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7vFPuqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC65C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773524093;
	bh=6P/Cb5FvkgztmfM/XAhnZsb8QgKMdSN3kaVNrIKRneg=;
	h=To:Subject:From:Date:From;
	b=f7vFPuqRDzcRTp2jc6Y3+xqWhB4Bj6tPZWiMMMhsh+MFe3vdkPl1i4+JJfBmzoWta
	 6igwOB7R6MF+PAmAM40FR1akrFwDdQHdoOB6heGCLy7YG9rmDFEp2IQCpdXROJHBaB
	 +gso2ClvFRUyvpILgQOG+RixiSWcwO5xWlO2L9j1jLV6NSMkDsgbAo1CQgePjf+29z
	 5hdEGuFXddRMpTIr441Z8tjy2I6St/VTnLHl1oMqvw3GCdzAvIsWA0DBeEgM4Z1Uap
	 VzVpzSQ6VafYj0BgF1TyyhfWKMmZgfeKAoSIIlwzlsP9IIrDF2A5lI4BAHdW0m6b2+
	 p0TJfUbfQBDTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9750D10854A7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352409358.29458.13620616339706543184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9519b334c0b12b0ebc54cb22aaf196e9a9879de54d3b3693d72d12ad0f6ea69c
Date: Sat, 14 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773524093
