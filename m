Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591FB28EF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720463783; cv=none; b=Ny7Qw94u5RzrkON6rjThX3scyPM+7yuuljX90LDD1v+IvN7/17m365AzjKysuIYmdfuekoDmT2uGGurlmadYMXrXYCkxqVcP0DKhDfoVYZUffqbwFRqob69d6cRNn1cA4nBRBpU29s/yZYT1mADLrfrkRJL7smLxyKY5ngs8NgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720463783; c=relaxed/simple;
	bh=HBuMImA9/EWH5DbGIYfcnTXBEBCcANCoBBaQ7lNSO04=;
	h=To:Subject:From:Message-Id:Date; b=atc1vKIqyReU5KoB3QLFxfgZI68dkVZ53zqqSmJ0Dts7XcoEOwJ2RUV1FDGeKMpBgI/8BHOyC8JXwPvri/w8M48IkZbiEDmoP8T30AiC3KrDg69z11cy3miHz9yuWfmLoo8X69//PVeCQzExE0Zv/1hdDIdbg5ngdkM4Sby4SGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp+Rs1IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp+Rs1IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE678C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720463782;
	bh=HBuMImA9/EWH5DbGIYfcnTXBEBCcANCoBBaQ7lNSO04=;
	h=To:Subject:From:Date:From;
	b=Rp+Rs1IQlTKOSSCarbcQbkVYh2C/XZoefBi15iY5q0GocqYqXTlA701iZlSeCzREP
	 atNu6UWoY9NZ/fGnFySSk4xLZMUafe7fH9BxhUCEp6Cjag/WpUl7S33E7eduazYlAG
	 W8OglHcDP/YzWwY+aT8HWpeCGypSynrsTjndwowfqrMQC8KuwPuwkFoL59tyMVppTP
	 Vr7ABLGyUhpT1Nk1jtTjYFteL76rtVQI78raHusKA86eGLEwOfdD8tmyEW7kQjE73m
	 pRAsal8JjiVC7PuVbl7VRGWbASI9B+z4qXHWG7EMRLrQQOMEIerIlYMs5BthW9VYD1
	 02Gg313ydJPkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE62C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046378277.11681.2422624877250522180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d4b15d1132a9c005d604ff4d67459ae10b893f53d6bd839f867a36853eeaac
Date: Mon, 08 Jul 2024 18:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720463782
