Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D813A1B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714189943; cv=none; b=SDfqiPn75ipZBTfspK2RU0W+86EBYsNzRDvQ6CgEBkfrbDhJQIlYWhCKRsdScndIPzTGaS1aHFbB3VKXLrDn8HlR/t/2za1nWuQbMrLPotJ/3wJ/6XIgH/uD6vfRM5SvNAyC9v/QLOPrNWAdExqlkeu0nCAMcNMDi2Y9DaPycEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714189943; c=relaxed/simple;
	bh=ZeB6zY21PJJLvW3BFwpiBcm1cZzDJ2lQq9GnNOFPW+c=;
	h=To:Subject:From:Message-Id:Date; b=d8Oxs92d/SpACyTGYSj1CAYLHcQXqoMZrfyQwOxLNnMtsSDdyHgY+BB1H+16SfLD/IAvjwxZEH69v7ny/jlCaiXyjUCK73E0KMlzdYGS+EhhI8PtvZ0lgVCmFQH0uToEQ6g0J/2Zx0/P54xf1k72nsO59wvoiBGQ5Z+sy2vt2uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL4OQklq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL4OQklq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F2C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714189942;
	bh=ZeB6zY21PJJLvW3BFwpiBcm1cZzDJ2lQq9GnNOFPW+c=;
	h=To:Subject:From:Date:From;
	b=BL4OQklqdrA+d8JtDJWHyp3Zxes+YWIkfSMr8/vOpy8wfbRtSr8Idd6CSmd58inBQ
	 UfF070FL8x0CF20qfhUcMZoS3S4HXjjsO3pmIK2eJTnMtzO2Di5TOU5zSFGaeffUsJ
	 /u1OQt2rnwAiySu79oXnwH0XLV619UEjMOtvsfKpINzT2e4Go/aSf2RO2USIfE6xHk
	 u1r/hSLBOW8BVRKtK/2JRGPtytVaeWcTqx2XMd4a9BC+UF+KKzgGYhaKwPFvkeI6xl
	 oYDHSWOt6VqHuIEGCdHklSUqN9B/MstTlXkSjXPqyGFs5gBDE0wNkZovVSHtiQ2RTt
	 9a0UDqWHydT4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07D5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418994277.378.8911739035876151902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bcf7276ca4fc75dfb2eddff311bf1339c92908eda197269efedb0c9cfa44b4
Date: Sat, 27 Apr 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714189942
