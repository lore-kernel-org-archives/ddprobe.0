Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4188A35AC31
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789282834; cv=none; b=Wu3MX0ua9CxnLLTPFK2Sdz8IPD2cKz/l0iPNJZg/CY9A/3oflDIK8IzMtFHig8Qh97TRw/ngszmbt0twDCO434O/0NtLF1zSfyGQv2JGy5a1mHldXWwHPDtTaHB3NMRxJS05zGZfM8MxBIYqMgHm88zoiWfl2pxE8JvnCb6lTdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789282834; c=relaxed/simple;
	bh=VYd5O/flV5NHTJV+b8IdKWCc1M8DywKn3TVj0cMOmlo=;
	h=To:Subject:From:Message-Id:Date; b=uIuSyDZFnXfiYpG5Ifu56uk7YnIvmyxaosLCEZ2HccGmbz520xp0DvS8qJBp0LkxuuYq6ocGVw05oFXZonGqU3WIc0S/w71tByFkniwYZRsCDFCCvT1OkKsARSK5WoeYVmUrt/7ZPFNsYVLZxzJ1n/umMA/QTaqDvZXJqDOHJa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjaD3N0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjaD3N0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA09DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789282833;
	bh=VYd5O/flV5NHTJV+b8IdKWCc1M8DywKn3TVj0cMOmlo=;
	h=To:Subject:From:Date:From;
	b=XjaD3N0VwSdJbuZJ6icvWa12iFOug7EifZ7ZsKeg524kCirFIeCrMKRbyNgslMqhk
	 tOyKVFxEjIAKS3VG5sOvllOp7ZQg+9RuG5Osy5kKEk5vk84r0zzXxxYrYdOOWcXYhF
	 LbRJR/Q7rS4SeaXd+IS+nyfafEFRnMJUs5AxjoibKi4M4bSuE07WP3rrBDgqIFjlJ5
	 gIT+huXD2TcHUx0Z8rdgiPaNbXeuYlqtXbrOIsKxn7qFp5vEaIBfkxD1uUpUs2x/kb
	 RWvk6wtPuRs4VMSAELs7GPEw60d5Q3ExCD/pORrYzvpf61PEcwU541AVPlS9zfVf3q
	 TrqA7HYjowZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F28C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928283370.4629.3784100139213296118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be729d70ed10862b282008fec76e44184fb55f9b4588885103d2142579b2392
Date: Sun, 13 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789282833
