Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275233BCD32
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779769954; cv=none; b=qUYYbW9g/wQZXooMPsRR+LI8Cw/zmh0t9OT9YgfFwRSbHC6oGQ/BJfmFbWMwlOygCHog3TRPLu4qIXYnwqhDoky8YhLF9tXqgHGq5Owu9dXAYkJQiGSZZFbfmczRyW4VPX2c2/+90NiiydpQdP3BM7RgVItj9bkhPI9QGgF0o9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779769954; c=relaxed/simple;
	bh=77NDpOgPcCPAFC0RmKjgv62PiJb+qNISp6CeEeJOG9Y=;
	h=To:Subject:From:Message-Id:Date; b=kJSfMGMHtpfza+yWe4ezzh/va3yY4QCFgFnQo2im6/d60i8zDZtk+3wi0TM+8ec7JvIgsSYIxy1jFrb3WaNzFqxOtrh8FelAff5VukPSufXiwdskDCMalNiNAG2uReHCMLmLSEJEOr2qXFsqFVmTBAYlPtzVpDrBP2jN7jukwzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0OFYZ+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0OFYZ+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BF3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779769953;
	bh=77NDpOgPcCPAFC0RmKjgv62PiJb+qNISp6CeEeJOG9Y=;
	h=To:Subject:From:Date:From;
	b=O0OFYZ+7Jm3GHBy0v6BDdpQXdJUsbDFfY3pgIrj3XlRaocSnmFeL5Du+acj/7FRDt
	 WQ5Nf7CMKgcZytgj4NkNxL2qVr5Ut3ip1TIB5i5p44waof8D9JkennN1hJbAMYRlkc
	 U/EbTX+/K8B+tbh4+/UASF3G0q2Ht76W3rKtOhY47ncA8UjyGFexaHIwJ7swXEn0at
	 V7dLfPdnxYDnQdPZxJ2gd9QXxVh9GkNs/b5usKXMMbZN8YnvDYZdbogzpLPsg7LMyf
	 Mznk2d//HkXNZ5FraZqZYlT2Jtk9qnkTLh/PXFPdlQsCb3fPkAXU3KN9XxIPVc4/+K
	 JXqj0dTPo4I6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD4ECD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976995370.20433.9896707555921240299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79cfe42b882198ffff8753feca65fc1905277be97a7d40e5d6f1375818e6a930
Date: Tue, 26 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779769953
