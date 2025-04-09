Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D041EB18C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744232994; cv=none; b=Di6gBX+fR4DPXSVJD29THnMF6HcONm4w3nw0oO23F8vNCXWsoKugTZ+K3vam2YsRZBq7JvChwWJ2pR9gRrzmgfqDM4Uk8yJIFlRJV56jmV2FxR/mkKRXs4GwALqcSAxkj6hzXGxAoGItqajVpxStM92/av8zETEWk8IXLVMz+SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744232994; c=relaxed/simple;
	bh=5bjQgIf0pYvhEDL+kqgThblN1b23aDUc7s71KK6OVo4=;
	h=To:Subject:From:Message-Id:Date; b=a5W5BYxZ6jGir+tgtNKIZZZtt9oBsz0WRv9p+RLKldGW0V0tusEc2+mefQ8cEc06MqjJUupcUayeBgHPH6oWvoy/dmpdlNSAusPNXWG05WigHU0b4vGafdc2ejEMBzMLww09d2/EZ3eFVfj4+NNS7043n3DlsEaxXgLBu6sqt8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8KpW/9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8KpW/9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C097CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744232993;
	bh=5bjQgIf0pYvhEDL+kqgThblN1b23aDUc7s71KK6OVo4=;
	h=To:Subject:From:Date:From;
	b=U8KpW/9BbJlAfja/VpU8ZU93CgPy02FjE/dcat59kFgkWC3gRaKBPpyT8OkqO2YqP
	 vPV2aFCWQHC/YeObfv8webL03HYG7etJ9A2Z3OIB+wKapiyVFA8daZAAF++dNm3M7O
	 zGdvFb3NpJoE45xmUMjQyDrQFcHsKerVnYyvwqjngE8LEfAl1imZMmhk51hbtBYeyM
	 2/55h5FcucSQNozEsTSgV+O99EgpcjhlF1/nbM8fztVs/PTib04eiAfv98UAhSnPPh
	 VZN8c9HLw09YWmiK04JNr8YGjcyC/81KMw9j6FmlHX9RhaN+8QZytpyHwdkLW2+7Kw
	 B6XufHYfkJauA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD240C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423299364.16500.2602728526974231811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf7d78416ddd6877bd9d516afe2b3a20604a71cc0a19ccbff43bbbc9db1718d
Date: Wed, 09 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744232993
