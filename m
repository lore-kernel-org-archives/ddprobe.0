Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8F91474CC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751651994; cv=none; b=EDUAtZZ1BE7fupSVHCqFK5mdCXfya1dk2V5eszDMWGs+UvIBcjpr+VXUsQheGEAKfjodsk5bA7IR/2dc44ZLzy6n0k2bmSNIh1C+Gc5ocoZbWebBODttY4wlLDieoLQUy3g1g301G9krcEy8Q6h2rl+mn8Aa+4sMRdy0PeAdYwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751651994; c=relaxed/simple;
	bh=sDkW9HT0dWbfJjj89HxbK68BvZRBy9+XGxLXKu17gdY=;
	h=To:Subject:From:Message-Id:Date; b=C33tascySmNRyjJbOwJKAtErJHOXj5QPIAQq/r1OeZvPtdaIjZxQnUwxwD3Hr6nOAKXRT/WtTj3V0A81gLzsi1wdJb56lESpBeJTS+YW2KeezZvLSw0defr5yBhOxCgYvzNcbo1L5DWirQR0oJZTonWjI50AaFcIvPJuPILG4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nV/XyAPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nV/XyAPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07EFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751651993;
	bh=sDkW9HT0dWbfJjj89HxbK68BvZRBy9+XGxLXKu17gdY=;
	h=To:Subject:From:Date:From;
	b=nV/XyAPFAo1s2P0zOWYRHXB/fboa/FhQPUr7AcCwTvc1EQpfPHSjsjUPdQURVcDCK
	 b2XklroMNGGZxmgCu4YxW1AYJrKMhGT3MN0EKrV2CZ8P4fnJC1PDSEQerIJW0DRJW8
	 uumWyHXmiyTasu+bv5j7gCdQIg07fdEzQKSNMzwWR0wLkecAVlSFJsad4nt14bkFYO
	 syeENy23HaA1zfh5mJ5P1cCvNJlSKW6i3yoOMMewnDO8dFTADT4uf8df3pDQlzNJ2T
	 i9kEIwbMiK2nb2xNxw5bojUDg43ciDzjYjYIOD2OorLF1Zn3VtFKjB5a6cnL8IgnQy
	 dhHpc1oZcLI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24BC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165199357.25980.10527118259280204004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3eb09570b8e106bcd0fd1ffa0b0e896841c534787f749b6022e97cc614ba5c
Date: Fri, 04 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751651993
