Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134F11F4634
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879694; cv=none; b=gWqNAq4X161RtwA1gE5b+fhDizlmjquWPwv1wFp/M+vrw0M5HIfV5GWcBhrTEp5nvZaur27MHcJAo3zNZlQajgNsP0h1tW38u8pve7tReEXaSJT3NYW1T2wimOKYroE7pVnC519VIAUZNGkragVCrbOkyAbSdwGh2Um107lvyCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879694; c=relaxed/simple;
	bh=zUEzcO5TuaMf1995nBplpunLSRYflnhfrWjA269eqaM=;
	h=To:Subject:From:Message-Id:Date; b=sajzR3HE6bbbOEbqJV+rvITJDYmlCe+i92cJL2/FrjE2E2I5Df4aeeYcEX034im4oAasshI2mzCfqeFL2wYvNRlZnW47amO5bveRyetPHF1qyNAW1MWfTuJlWRd726N1hJihDHoxzR+rKlqqq2RtgLeEL4JnsITxayT+ZY580HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILu5i6Sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILu5i6Sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4503C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772879693;
	bh=zUEzcO5TuaMf1995nBplpunLSRYflnhfrWjA269eqaM=;
	h=To:Subject:From:Date:From;
	b=ILu5i6SwtdfbdedUwE1eX3x2bAwMU7OMOckaElpgm2Lj1jsqp8mGjxiyrQq5cU5R0
	 iaWtKcRBfcbNEvdt8s5/o+zHWZrxjQ0vXDyUDZdcZBb/DNbhdk5+SlpcybuMc10KdT
	 cqOhtow91RvubE1RCw8Dl3LMSR3bA8E9swJl00afha3WM/x4OSsZwvB8HtY39EGdG2
	 gMLfxRRsjTKI1tW6Tm8fpYqElJpwl2xpCVdWaIQKH8YVQfU2s4PAZ4oO8D4moynibT
	 hHTOzTnWljmSzQrK2v6UIi7EU75VwlxOCMETOVkQI9xKgLgAV0HHVv/ARFQNN4b03b
	 4q89GbmdEiF4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A161FC9EEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287969362.646.1030661350566299336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5380544e068e15db53dc2b776d24d9355fcbd36406e46b209d4ec63d2764f018
Date: Sat, 07 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772879693
