Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC81494D9
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763272254; cv=none; b=E97v3k7i86v9WggIEr28dq3UQT1pA/2OMK2T7JudGwFHOdrVS8kI7AMhmFGfVuaZzhEbGRY8cHVXKe/ON2HvqT49nYhI1VucMWcfXtnei1aHpM1Ce1KsPqUY6WkRCw7z+zVlfWQ/m+EDr26SW8OjC2Y6dKPJ3T+8uEYx30Ef1EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763272254; c=relaxed/simple;
	bh=dBgm18uCcoS663TQEr6+GeGCRoWaRtEjc6uRJUn4WO4=;
	h=To:Subject:From:Message-Id:Date; b=nYdVzINKV7s/XuvCMNFK2msUdV0eVImg+K9Y5ir3S97fO28/S9sQaVRP35es36jAxZinlUI5UKat3NSc0NYR57fJ+yTcuh0tkj0vkeRnNT+ai2sQ+O938vpF1IqCwFuMTlSWf+DLjdYepTljm0VRlavquHrM1L2hNyaL4lP5mNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+Xl2DC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+Xl2DC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763272253;
	bh=dBgm18uCcoS663TQEr6+GeGCRoWaRtEjc6uRJUn4WO4=;
	h=To:Subject:From:Date:From;
	b=o+Xl2DC5n5QaXMeYTvQhRx5RPsK70FURB1WWZ1XoH2aWhtpUBMYz4PsgtDTWJv2PX
	 We9fCoAxxHfSMpU4FBH/zEMjBq65HykWn0EDoCh7h4I2z/HPmSn6MIB5G0UROgpcVF
	 FRSswi6n843TszNiT7vlpS0AeKhuaznXQQhfRSJZp8Cl43SC3LQEouEhnv/55QnJ+I
	 TcujETFLBcA5kIDoYeO6H0vCl78+yCopkNwQ2o/xyHrAycjdU+50kqL7N8coNnI5Rs
	 c8BEhuUgq7iyKsjc2PDOrV0OP1HHWYyl0hRoLxW6m4dY58ZZ4mpfTIZreJhScbfW8a
	 8bAtJtkUyc3aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B66CCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327225360.27382.6277596385928367711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d4632810fedacf37783df2a7f00663803d5085cf2fbd5974762d6a2a90595d
Date: Sun, 16 Nov 2025 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763272253
