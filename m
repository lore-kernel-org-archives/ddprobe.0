Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD58672630
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750439394; cv=none; b=eFvcX423vonI7nejZv+MHIwfF2zkKJZu0e5vYTloJUFlyn/mPkxhR3b6noINWrqi+IxN142aRnctotmQEAQ4xFo1x3uaIhi1qGbdhoQj5AKcl8NN+7lXUaA/Lrwv1nmatbojbPy18O+zfJzX8UPC8P+iGuaeed6ep8EeFJPt+DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750439394; c=relaxed/simple;
	bh=JtdsD6XQDA66bzrRpwn3pI+Xww9u86fAKkOTMlnceOI=;
	h=To:Subject:From:Message-Id:Date; b=XSqCM6HKlZMS9eELiAhmXQdehJEi4W7BTO75T0IgCnClRAD3A6w0iOKqXJIIT5aAUOsjk8Bl5bmxeG+AqtBcKEt92KkLE1uCwJY23fqmVbE2fL2uujof8fe65fn53oht5C6mzSl+ji2xVUloMqb5Y3ahHs9axII1BfG5jjUtZfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz6XWPCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz6XWPCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3102C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750439393;
	bh=JtdsD6XQDA66bzrRpwn3pI+Xww9u86fAKkOTMlnceOI=;
	h=To:Subject:From:Date:From;
	b=jz6XWPCiZJQ0APDX3D5WErGvbf23OCgwb8LCGn7xOqoXOueKEqOmF4FfHoXdIMfnF
	 68WTa1JsT1l02+sQFXs/h62ewvArI5i59fzfliJVbHT6yAWrYDCwuqc3Mm1c8TLM7Z
	 teMRgnBSi43reD4sGU63khewXTSqzzDuxb/Pn5Vay1+yink7blFYHTF0ZS7EC7GA7b
	 TmzUuJBe0JUNPPi5dPEHkmkTwUQKtuAbZ011/gsETE4FpKG62LXI4RiEUg3IqkJriP
	 WWB7T/tUS0fwX1QS3YnIeFCyffpLDJ2BXduJJlvBqwqwO132CWye3sNyiUQ/Q8Rehs
	 4ItEwJm5Diy4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED7C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043939357.21478.13270322845157475512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19cc12b34a5cd56b32bb2d88a74e27d3a83f88a9919df622f860713d6eb474c
Date: Fri, 20 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750439393
