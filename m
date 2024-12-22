Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4A57DA8C
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887754; cv=none; b=dKusb+hokiLlQtcvLaihbNQcS8rPIyepO/tgok0KUDdFJ6CXAh66HyKGRDFF+ZqUW4vyvVRbOzYyJcLE0J+6y535ePNGhO+Amzl29yu5FWJDN7xYk6tcru4C+LFk6KVTIPhTkEHW9mJa+rhOTiDxntz5efOKgdrrJAWKOruVrDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887754; c=relaxed/simple;
	bh=3d/fW0oPDfC4fXvjnAXqs4K+F6zQOzYnpxdB9kv5Qtg=;
	h=To:Subject:From:Message-Id:Date; b=eDJXwfCTwM/KzwNaVc9RpdPRAL+b8lB7Wal1A2Sq8fUVlMN7n6oL4rCtiH9KLlFkRQGcHBw/vsWJ2Ayn1md8kReQROk4tCv2RaZuP03SO1MJDLK0ApX90VHc03FYtc65nCuhWbTuzQVW/LgBTjtA1YOli7EilRJWrqPTAckqgxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX5tG5gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX5tG5gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0FCC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734887753;
	bh=3d/fW0oPDfC4fXvjnAXqs4K+F6zQOzYnpxdB9kv5Qtg=;
	h=To:Subject:From:Date:From;
	b=BX5tG5gciq7q85aJY8mHH2G0UMpTseqODd6iZJOu74PiGtFoK5dQKDYHeitVmQJ6G
	 xipnBXLC/n7b4fMXYbxZE9NE4YZSMs7eWjzrNtNcC3rR+rmjd937dtJuSPOdrMr8kL
	 fY2ipR7Lvy/g5dI9BuvyKX5Iw0m5XzFG7V4Xe93jn3xMbdtnzZB3jd8xJ0sObRqgvO
	 RgQ+ENhzNnKnQ0HcBDNZBAbT2MC1ab2t1KpsQQ3Cp7wiGcBp5VERbHTPT7aEsf8d7I
	 Cjtfxd+pncRCrkPlpP5blnwWYsQk4Ccea0dDO5GMXJ8miM1gshUsfys1DKuRhHgX9Y
	 NNCuMhHJewoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FEE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488775357.13300.16044665188000175223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cec5243c728f7af6c38aeaf863c94bf5f1bef73a7dff86bdfc4840b787fcdc
Date: Sun, 22 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734887753
