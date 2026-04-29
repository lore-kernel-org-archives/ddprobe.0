Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E57A10F2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777426654; cv=none; b=W8pFe0XWjq9f8kwugedxP5G95NInl4d1r4LukIKksmB6fD+VWBKOESLSdHSurpgEsD3fL1W3MjoGa9EpZSrBarVy/FGl6qMtlm6hCY919J67GqS2iyVNOMYyDq0+hTMh8Mvsnk/qx8TpACPhIfgy6DaSL4UD6Q7LRwBtxUzX0hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777426654; c=relaxed/simple;
	bh=wOKyGetxCUj5FyhYcN3pAY1PCapstJEgdQObDCWat9E=;
	h=To:Subject:From:Message-Id:Date; b=XvFtQcF6coulCE9D8qjmjFM/WxOAT58nEaK/0Hmwwx4b9ikeLiAHyZRHBQi4OgF5AAnPfvghDqUAPI397cH/QOFwFAP8YrbGuq/dQE68qBjeKDWPeoZZKM9gcFLz1ER9DB4Y8VAawjgpSomy/Uf31J61Za5dJLOfTnqty/Zv9as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNaf5b27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNaf5b27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D76C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777426653;
	bh=wOKyGetxCUj5FyhYcN3pAY1PCapstJEgdQObDCWat9E=;
	h=To:Subject:From:Date:From;
	b=tNaf5b27GZTrFE1MqJR4vNPzpISo0QS1wQ4a0iyttGN2LVsifcaTge0fzvVm5Uguk
	 bt+fv8D59RUdXlNOp7UJXvNB1TdwfK4sbmrNSq6/C0Pys432Pxmt3OBryVWUgZdh6S
	 MVNIDS0TMUrOKu58diQ5KJDSf/YjnTqVydtDZc+lKs/f08Mvx6OdscWzVG2Hghaz+d
	 yifClKKHZdr9k36Ejdltwn2tinydT+rYiXlia/j0i+sarHuMMdC+OyL1tCrLKpI+2U
	 gdClQctGFPhtEoaLpNRkDvFSt5iYxSOVqkFwNg22/EHcNNyWXzxcp2Eec297mv85Dz
	 UV1d68EurKf9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BC2FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742665369.20308.15869770033325983843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95363537a6852853136db48ef8302738c656c522d00d22291eb94bc168c3af2e
Date: Wed, 29 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777426653
