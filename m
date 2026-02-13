Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4E9231842
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771010094; cv=none; b=PYdxDhWlvk3mozrpx0L6gEBWnfDZ+GIgGRv77A/LkG1LGuNs1a85gtrVnctALxSDLq/r4YPmLPAmwy2jHtDL6fd6/xlzudMa95gSMCvKAfKhKyUHPUrgikvINZd4DbGWkKwcb1IvToTrsIkLzh0dfT3Li3jK2CnIYqCE1D8vPWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771010094; c=relaxed/simple;
	bh=ubVMkX0eKrvYbVSZcbR8DrUXtyZXoFOIW0NHjiFDQIk=;
	h=To:Subject:From:Message-Id:Date; b=txCoR7itVX2/6IIup9OS8ouG9jjMBFI23xxolp7dJgNI0dP84ae3j2dtdzXKk3T6qM8+FO4ohI4032mZ4nqe0QRkiSQzdQCBgRJjkNtfA+16dJH+ahgRmRJtNSasCwHavvl4v+C/xN7L2NnPt4xMqTc/VHfMIOB9TxTfjxTcDUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWzmAL+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWzmAL+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9D1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771010093;
	bh=ubVMkX0eKrvYbVSZcbR8DrUXtyZXoFOIW0NHjiFDQIk=;
	h=To:Subject:From:Date:From;
	b=uWzmAL+r+J+gaeBmIb0s4UtCppn6L87DK4s+ikVHKMfpOV5QCwt+tT8+SyQ7am1+g
	 hSA0XncujxvIETDw4Dl2RmHVMc//PKau+rTOAfjaqeht6mx4LbwQJbybURhZwAOA/M
	 EfDkA14PwGpdIXoj1vwXBLbJN/gGjWhbyAZzNlabM1UMWO6FsTIG8ajNXHY5m9ymLw
	 UWcPxhBCugfYuq+BF793b2ppqECe7rCMXt5TCE5euuTwumsmZCZ7BBh04+28qaQZ/P
	 s/slA2VG77tKH/y65Vjk2kfoQ559X+it0wiLgcz1fOyNmr6SlWhxOJDKzecVqWW76U
	 kau9xxMNpvLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EF6EF99CD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101009361.12775.5017493875278073495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abac61607acc62e9a3c21d1630ce475935462bb63cf722d74ca71b789ca322d
Date: Fri, 13 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771010093
