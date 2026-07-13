Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492FC17736
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783901914; cv=none; b=rH45gW7+Z3LXPdUujqPs3sPS/QtBL19TMJsbjZFJzmJc0evVF8ZhJZy48BNBg0TC6Vq8YghO8xbevKQHxOsWLJ2s4yrp5jNRdFMLMNnVRZsIQaYGshOUG/3Rr0Naxg4iHD+QsYOXMiBAGlYq+nf2jNOczPnK8rn4nRlZQGQ/2mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783901914; c=relaxed/simple;
	bh=hVAHk7SpJuVvuChZhd3i1x9zRP1QST7wcffBZYZPr0M=;
	h=To:Subject:From:Message-Id:Date; b=OEdtKwpZyaArqyURFXmISvel6pdpZI3fr0z5fSIO0FLdHYS8e06qRcRIyLL+HqICguUi9/Ld4HBfX2FSBRKl6t9QRZtNVq4t+3U5548XR07cjTXyzmkNq4l3JDo+g9YCsKwsOogtn8lj+Hqt01IoH9E4Qo5a2khm42VJWwfX8kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0CE6jTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0CE6jTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60D6C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783901913;
	bh=hVAHk7SpJuVvuChZhd3i1x9zRP1QST7wcffBZYZPr0M=;
	h=To:Subject:From:Date:From;
	b=V0CE6jTEMcRADBYE1xr0CVm/76q/EmiGegP2W97UckvbrbxCH8NXLjQOp+Q2HYzRV
	 VJ3Q0FmD4dxP+9oxaSp7Fvfh4j0ULo90tIM2duerioKYzSz2J2G8dzvhGZrIk0Woot
	 DuNMs7k2B/AzG1GlvqvXYW+/P4Be3s36/s2U2zAdDUZT6xBatPkyWtZ0apaF1uYaYQ
	 zATW0gwLKUQ4ixXl8on0GoDN6y2aTE8mdX64mHHNzbbAg/WnckkWRpfn7qo5+UKcrG
	 oBW6UsWOemr5qsG500vntewpQSr21iZaYGSKEkZThgs1nqD+oeOPqNrBqPKuh+/RVt
	 SRjYrBBQBMfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB61DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390191368.18418.8389821536090608616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c4c8ba544ad1a1da48081333f926dedbf57808f2845673c20bb28d0a575a80
Date: Mon, 13 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783901913
