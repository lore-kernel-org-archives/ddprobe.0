Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E8F1F3BA9
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754478594; cv=none; b=UVHVvqDTPGRYgco/HXn7uWIbVBixP7Pzc8PVk4OAO4ERtLtlonHRPUa1+zzXCyE1zWQS/SDKSIFU0lDRI7oM9+7eQqZs6m/E7RXzMI7hd8NxSGd+kbYB7QrMJMxPrMU3Tpv+OoOqet6OamFX6kFChSsPGCVLRCM8WtrvX94YAn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754478594; c=relaxed/simple;
	bh=Dtx8BAXbkM/58YGUbLU86zrTMqckXWdz6PfNAqqtkNc=;
	h=To:Subject:From:Message-Id:Date; b=pHoNvkkwKy0en/XjUuxHs04Yp8OUxiBzeC+ty4Z/GeFnX9+XzZNhoHQ0p+uvbDG3XUERNb6d/IYN2tw0WZqWKXh3o9UEhLkJojqVDwR4bazpy4IN137/6nSFcYDaKYv9A5AiwQOWbuy402O6lZXniPWwExznCTAjKPGIHmCMV2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOlO7+Ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOlO7+Ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0712C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754478593;
	bh=Dtx8BAXbkM/58YGUbLU86zrTMqckXWdz6PfNAqqtkNc=;
	h=To:Subject:From:Date:From;
	b=tOlO7+IaI0yW2cFqpWGxJI85vglTuwu4ieyVQ8OFNqErUVRejw/ZN37V/KOgjaNks
	 0R13AyZTr7RXWlQROaPX3g9maNwVXXQNB+5WIVEwwVGRpxZrWz6GejvmcZJo0eg+eb
	 W2VwkQf7y6ieVIU5TDFuOqO8zct4oGuPrhGT1rl6qr2QgAiFTMrFpsvN0VbAougnd0
	 tsoiUz4AEwNF4BwrJPt26cl+gMMxgzof3nwLsZszf37TtkTaeK3O3igr0nlBmhQUJr
	 SkDdDNsIdbEXuArgt5EdLBW3Q+e2Ybulzt8qhEVdBQHsc8llGTxb3fCASXjNPRjWd5
	 gJH+aBJvz64vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E5C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447859357.19539.5278045309807429262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa9ebac05dcf5f22df53d6e1601b038ba3f9a75c220f87cfaa66558e25b2184
Date: Wed, 06 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754478593
