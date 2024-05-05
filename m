Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C19184D
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714883543; cv=none; b=p8yiHW6hWa5wi+Rv5tHpwXcUvXCwE/W06wa9D4UUtIT0wjnwpcnJlhHDKQCEMjhpdb0XWnkRcH28tFZdzW3uWt6vkJLd56Ki09LkVgmPuQo1zKp/BFXeMbr9lYGo0nBaPG/pAl9QvKlSOteLvO9g1Pc/maHj7M0JY8UpOWlDeHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714883543; c=relaxed/simple;
	bh=QMuITLrZvZ0uyCkqi4S3swu3AEqwnAmZZNgoZWztOl8=;
	h=To:Subject:From:Message-Id:Date; b=S8EK21ueXcT+XgHxDZoK4BA+6eulmVYGqoKjWPtD+mvl+YvH0HDajQw/5xJjDYgGwq6Mkcz7JsZOEE0WEZb6Q4KZdxUKHGTP+wEwouJ5AQ8Bm/HmPnpsd88XRp5g0Pzv+a9p5mlCgwAYh1hUSyF51IEa3wV7xc5SEL8YzFWX2oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fD8/JptA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fD8/JptA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5070C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714883542;
	bh=QMuITLrZvZ0uyCkqi4S3swu3AEqwnAmZZNgoZWztOl8=;
	h=To:Subject:From:Date:From;
	b=fD8/JptAX60fyUkbyqQ7vr/kTzAtfmaGO/dWOJ0e85ln9zM5UVQJt5jPBtGq5jBC2
	 6j53X/wTZ9g3DY6eQ8mfPkn619NwBQj9SSowzPB1ZCRQc3RF1cR9px55O9EG/21TTm
	 sYHnWiwl6DNRoZ/cjiytkUN9nutSFLVe3XaqHDlqAho+07cKJvo9YeY7/zRGpR4G9E
	 lMwt6ZhqQG8kT9mes2WzgJ+x6PVy4vrO8ujaW0CdSvil0m0XZPoYaxqEAKyyQf0KCq
	 LThOAV2mjNK+gDIDZk/XsSASZ8dnt5ryS5NDuY/eGZ/jJYA0VShMLJDVcWC4FBIwAT
	 2GUJCqK4H7LbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DCDC25B10
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171488354276.28357.8993365237371823505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b074cb9b44dfce78c714325f80ee28de75c4d40b5885b0ee82224a9f48ea01
Date: Sun, 05 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714883542
