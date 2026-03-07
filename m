Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9D42D876A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772846693; cv=none; b=s60NWJe5OG8HNPR4YPsQ0u4UO6nEopCp0EoXFqmb8XTrEZt6nrSN0PHLFdl7lxq2prxD0x2fplvfk/a3YA3VwpC/+uTu58kRdeS4wDaWSduElwDCLeV79a7SRqTIfUY7AlL2NKxKwgbFeZi212YH2kYaAL2nuJvaF2ZMGUU717M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772846693; c=relaxed/simple;
	bh=PkSbMQpfIsK/HzISPNZzLSs8Vjphi/N0+yVXIhMbESA=;
	h=To:Subject:From:Message-Id:Date; b=BUS1/E2s8AgM1BDrq7VtxefvmDW7xHgcwsuvcfDoAlzyAXShsqsSUkpZoffqeGpS3UBbU56TKBkLVzWwNQPZOFE8Ytaoxq01t2N+9BAoHhRTDFQ/EtJ07HRYpicHwpbGZ4sDCKkKPnic3a/kyuAgJW2YgKt39mEBWJrXXmRAbgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdTl4kMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdTl4kMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA22C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772846693;
	bh=PkSbMQpfIsK/HzISPNZzLSs8Vjphi/N0+yVXIhMbESA=;
	h=To:Subject:From:Date:From;
	b=hdTl4kMir60R2nd2mlcidr8iKmDlUGk8/fwqEXDXIrwN8ICb+OA1EkKtt4gNJuNa6
	 A+Q7CgsvkjXCqK8Z6763jI0d5oXCPR6AxtDp6jJ8mWVMjNGySpuxnDXUwaUIKOrX6Z
	 nSzh4XDecU+ZI7DUp7LAM3DAhG+1aY96krLZRqJYXO5OQo4gPaKyt0+9FPYSigcVB1
	 lKhXIWhdXriW0gpkfFWdwpUon2G6xOj7ZW6XSW9tVEBuv1ZnQNJ1zKtHSZEy9P05KY
	 v/nR1ob+ixSgooK5cfKxVFEreQvMi6CNZwSN0U3FTmXwgCOnOtkpsBbIeeu09j1gvy
	 v0Y3d+5VLmpCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C23FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284669358.31455.3657539638542049601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2b457c4945ee7af5a19c6698876e1214a17f94c2be66cc8079af2d1eefba77
Date: Sat, 07 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772846693
