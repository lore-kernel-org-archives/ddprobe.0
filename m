Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D5E1953AD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737063954; cv=none; b=Ecjam5FT5ZYBMbqv3LiqhX9tmencHUjdkxXBW5XzP+xhaJe2fwaSaeKfHLZe6s4ZKbQ8WqilvQa8oPUnYERNPSovj1clyeOFRtnx5EDcCB5HeYp5uSonR44VDasR7WbLTdTIleCNgIJYS82T11z8i7c9BQUngo/pd81thD67rJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737063954; c=relaxed/simple;
	bh=/I8DiamWMLln6ErEr7Kafm+q9wkzGuwJXJDdSqx8jBg=;
	h=To:Subject:From:Message-Id:Date; b=DJBb+timhCKZid2vzY5dkw6qcsZR0XNtSbJKybSlJNlWXLuH6XJE1KZxjX9f+Bk4hfRsY6hmnM6oZeYh4UPodUQVLnd5S7RYJKIjdeQIbBG9ijjwWYszhF8ZgJ8fIAkB9i6qD0aArLWuhgfkHr+mKd536womnLFNoE9vuD+3ASo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFhQSVDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFhQSVDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9823C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737063953;
	bh=/I8DiamWMLln6ErEr7Kafm+q9wkzGuwJXJDdSqx8jBg=;
	h=To:Subject:From:Date:From;
	b=XFhQSVDyKsTPKX1NgaHSI0Uavy/uZ74bq/NkXFjX/zq71QEnbAxWkOEOwx+4oTU8I
	 0dQzPzpJaMRrUpH+yDFJwGiQuWXEt15RzKghq06xY20bzVam8Mk5FYbVnNciNMOkbg
	 fwHGeD8A+mHwFi//oAH0PoVt72fRQoJyYmlKNM2vvfI7UWLGTyqOMxrADujFwhaoLL
	 btJU7OMI9h6x0yll0D2aTjbM0xTkv/sUV4MOGa7aDSju8ijkK3bSUKKufmd7pZ7h+j
	 /+7hw04LKuOnrHw/gTqFYwiFHIe7wy2oT6qPIYInfIoap1hkyVyFKzgH9SgSGWu8sJ
	 kgmKzP1CmbWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97607C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706395361.14236.2874439141552015973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6090292ab9eeefe699e3568a20cf22a3f075056f18ca95a2b3a49c398b0188fb
Date: Thu, 16 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737063953
