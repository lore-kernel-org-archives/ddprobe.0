Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ED7208CB
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720295783; cv=none; b=qIdCTa6ESG95Hv2ZiJObqAkiZABr552irxmb/AbwG2gfxG8REnXUyK8HtpNpf/1W2emt+udVoAuRj8bkMXnYu7GXsgExNdQzhR79j8t4X0nC97z+k7RBB2wFTas1dMynhoMOriCuLWFjUbNgKL6vVEDPimiUeeoOHVCZyijAncE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720295783; c=relaxed/simple;
	bh=TJNexg5YRFW9n3kc4PKcb7PzSVWFcc6SXGYjqeSp5pM=;
	h=To:Subject:From:Message-Id:Date; b=hl1kK/V+8nBW5+Jrf6I4ixRzNzP4KSgBuIvykHi1VuGomoBAkLW5KjOAWX7k/uZCIWNtpgyV5lasrmT1ZIQOTeMAsvg2Y3PAzPZGjBrNH8KNS0qD4QLajA0dgQNxJexkvXsT2t/ZdF3gTGF3lm1fhupPDHzJoQZJlM6DznOBYA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdkltXSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdkltXSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C85C4AF0E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720295782;
	bh=TJNexg5YRFW9n3kc4PKcb7PzSVWFcc6SXGYjqeSp5pM=;
	h=To:Subject:From:Date:From;
	b=hdkltXSvHQHmunXzvMGyMAiA3jxNdSfV4j18tDkYLudx/ZnyJkO3oBSbsS9zQrBVi
	 plsszRBrM9yzT2eGq5UR+9NeDVxz0rePz24XzfJ1jY+qxud323V0/RKSvWg1SEfq2Z
	 BrZ/P9pKT47KNPZX9EnGfMsEmpbO0Ru/awvZAZz0awQ2qPD7oGTgDq0VWktUyIx461
	 UBwinebAAr4YPGmR3RYKijJr6H4PavoimJ72nyKJQ3Mzyi81dfs6+rkqeF5Fbjem+2
	 tJtpAB7R9/7kO+igt11cZUh8zLbIW+hjEl40dmis1wQUxwZDI/2M1EqL+Arp48AkUG
	 LWnYMH0K8Lwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C011AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029578276.11276.10194712289503662078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a33777bf59c7da1184bf11a0d11c48f2bbb1c468f1e214607422eca2d3b3b93
Date: Sat, 06 Jul 2024 19:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720295782
