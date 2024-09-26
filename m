Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380452F2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727325954; cv=none; b=U4jR8mCIe2zCguLQxaeZdnSUd63A/lXXC+nsRdvM1Uwfdr0N+F+PDgiQUSn2BPNZ9Tfc21fm4Ir8jyv63mDiMHL5pR3G9I1BwrS+zRqhl8QnY0bKaUkMBb0F8wGAIm8QsFjaVlKHJZl6Z4dVVNKzqGdcCjK/b2sENkZ53/ruo2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727325954; c=relaxed/simple;
	bh=S8b6HfppW/NxcYxFOYbFZJ85BASXo1QxXROVlPfAmd8=;
	h=To:Subject:From:Message-Id:Date; b=f6bujlipC+zdX7vbI4ILOE7PAjNyQcbj/k9JX/ZLhUXcdS75ajsRVmSRRKWlROU/h4SytOoftjg2hWjVknpBC6FitjtQR7Bkkh/eOMe/pCbKOSazL6w5+7/buxQKZ7r74EklU1Usro8uRvEi9s5+QbNl9X96Qj7u61aUQF9y3Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIlmoPj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIlmoPj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB615C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727325953;
	bh=S8b6HfppW/NxcYxFOYbFZJ85BASXo1QxXROVlPfAmd8=;
	h=To:Subject:From:Date:From;
	b=tIlmoPj/H0ajaKELLcO8oUNtmCRSoZcYlGL1XRYol/HSqYeoUVR2xFUzOL1iVWrk2
	 CNSCst7ZS41TqilD8cRpwfHHrkBioRJW+LVd8sHZCPoKByW9rMrkiDZGOTq7vaII7R
	 daOFjMdJI6L/69yTuDk0Piz63nV3yBRo4QNKHIF6byD6QFpO+oXUjP0XNutcE3cenE
	 dXN23sMNX9R9phFWWxEscj5ai5DSlSQOfI4TctB3GYnn3kCgrukY9Y0l8eSSNpygB/
	 YeDTYlmyX+se5DMtYE4XgPmJxkXOo0km/3DrLAkxNOFhlJFbdAS8eJ5Qt8QxWSa3lD
	 tts/0ekJdUseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92112CCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732595357.30726.3385284191707014295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5624a1b0ee57a070156664c8f9fbc11640513b57651f2fb7ce28084bf6f32104
Date: Thu, 26 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727325953
