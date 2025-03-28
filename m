Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E83219B3CB
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743170394; cv=none; b=lUI/KZDIPwjei0nTg3PdumqdQinZeMxj3hVM9RHSQMJnzQdhVUjVHL0JuuWCbk3vO8aDVuy/3U93Ppb1iUxTorP2OovC+Y+JhuOgnNt2jn8blXemaNoWBZZIIfh+4NCJ06xT3xHoJhyraukjDjiXWk4pLBYzhVHNWXWrrMT8blc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743170394; c=relaxed/simple;
	bh=MWBj/QKrzA33fhsqOCxL8rFMBjUTZ5enc7A7zjTo3Do=;
	h=To:Subject:From:Message-Id:Date; b=iBnAGQ7dsyxOTOP/Ie7NHOavWVBhpdDoRS5N9zkfvMwu2tu2S/+3WrDoFCrt/b1C+VoXH6hQ9whQWFhSppy6Q/1DlI9bC8rrnJZlRbDFKwDPRy37/Mf329ABMYOlL70mfwvrfltS9f4pjdCKvnIEN3CGTLXKrXIEJkO7f7gcbg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL8RvJlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL8RvJlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC74C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743170393;
	bh=MWBj/QKrzA33fhsqOCxL8rFMBjUTZ5enc7A7zjTo3Do=;
	h=To:Subject:From:Date:From;
	b=eL8RvJlGUFas5jVNOqlU1kTwojrOAmJ2m/RbNmUsgz3mFxKZEPBKYlq30mAIis9xO
	 vroLj0mZEbWMcgHWeuXCnSFiLpTVBnkO0exwqPLYSoN+gTyRc2/eEnJCDin/t5bLbO
	 EDjVF8icy8JJofkuKI7VSmj19DADeUJ7Yy+ZATwZ62bIfaW4K0G2kyF3j1UPYPw6AL
	 pUrF3bAeClIMQMngukbT7ugKoA01FclWj1fn0mEmgtIOYuiIWnBNYd9+ku2fVzYouM
	 mmWC6XXUsr276LnB8k589HAZeCQlz20k2wQEGSkuCRTJfMM4YlszDrQHwVCM5uwn15
	 wso5PvZGl4f3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD816C36011
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317039369.17116.15946060950025240927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a80ba449a91b6a42edf49dbdd63b817c1c75bd4a72b1b08d63c8dd5fddb0545
Date: Fri, 28 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743170393
