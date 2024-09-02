Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A713320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725249954; cv=none; b=AC8hVXk1Tm8G/9rXug50eyTuqjs6bMQUWre1DTPpPrO5E6ZxTjPe7gsXSL42ybfDfvklOhF/b/x4P6muarqX1ZbGHxs3kAPzT35h/KoHHZ/+moTtgf/5vk3K2jSQooGbu9AAhQi+oT2+N5/QxIJ35jIFz6SgFnyCX1+LL9Tc64c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725249954; c=relaxed/simple;
	bh=y9G7xCahY4ZSHaDyg2Eb2/ZeeUS9T4vUnsReCnLJ6c8=;
	h=To:Subject:From:Message-Id:Date; b=TMpHs+f5+M7ptN0uCY0tx2Cr+vRItnN1P7ZuhxcsELOHsRUClkNiKK8dLnvCFVJJZnw4F8QMqJRw0eHou8GqlI4WsN0bp0I/e9VFdVSglPjXcY+p0+L4P3OL+s4y17Gd893ZevOR5CcO58VRGiclfrx4DNnUJrAD/IoQyej6pF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkhksVy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkhksVy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50E1C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725249953;
	bh=y9G7xCahY4ZSHaDyg2Eb2/ZeeUS9T4vUnsReCnLJ6c8=;
	h=To:Subject:From:Date:From;
	b=AkhksVy4TZPygzK2wRye1t0Bv+OMDKc+SHR33DREdbFq9pBatGsisGoHVt/9mNEn2
	 5NzwpEWNRF7Nq7nObXNlwEpulVXWvBe8hOw8B15xgpWnSlttw7tW6aFYlKaURMHxZF
	 wYeisHiFUb0vV7JIgd5nG3erOulnrKVo1mHNqhy7RM70ddhBHysDpDp2ndh4cVV28M
	 sO0gYuzRV/H8/Z8Wbo5Y9YJ7qq4j+56KtGBkhnM92PhRcvYWKygFxXoJ++y5EJf0T2
	 KHbSeCDNKu0jypVv8BI3w5Ke/O99cBq55Wrc1PlXusfCirvV89UX26tm/E36bIAhPh
	 00BVZlSHtoBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559FC54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524995360.30278.10425422883481189933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de3993025bb244df72181d6f3244675000264f620c85c40cf649762b6273495
Date: Mon, 02 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725249953
