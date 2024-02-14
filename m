Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFCD53380
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707916097; cv=none; b=ixW1+eFynv9fh0z0/nVrPtCXeT3Z27PkxPcCzIc1qy6/siJ7suycziFi/VnJu0V6JtSOgYwhn8whu52EDquh30IRhz4C387rnfU15G8e/C+mfPhoSD2n8CktmyWM4sEb4PDG3j2w31koaiZXpzbcPWtSWGcgKCi7s7n6+6AJIpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707916097; c=relaxed/simple;
	bh=T8Hg6Y+E+wzTDEAUNN98bINCFi+vfdTOvetjOKgJup0=;
	h=To:Subject:From:Message-Id:Date; b=NOye1l/xSrfp9jlZWEzmraNon1UcqPD1iplhAFrXCAdmHslMxFcYoODMX0RKdqu/+WEu3jU2BqcMA5LrSU0yFBcTj7Lnijosjo/JhCqeySV5yFf60CVDmekh5J5RKYj4gJtZm/7XXyy0nN6WMOy6altalutFOjPeec7/p82Ix0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qf0kRJOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qf0kRJOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7969EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707916096;
	bh=T8Hg6Y+E+wzTDEAUNN98bINCFi+vfdTOvetjOKgJup0=;
	h=To:Subject:From:Date:From;
	b=Qf0kRJOmtKqGJ/R9Xe3IQkw7vusHN9R+mv7vN8IW3f/H7k6zkhrlnq6R6ce+LUhfa
	 l6qq+MC91k8u/c++g1IrHY651cjnN9jwJ+7EJq0oRjNJHskdBLat0iee8IZngFN6Iy
	 KFnswCtzN4+Y4Y/CuEqfdsy1SLn+GQkeeMHT6oapBwvomaAi8vQUshl7ILxBwlOYLz
	 dx+9Fi8+RX89hh+BjcQfysyCiUgk90OtIhfoJSemhMD69sUMw/hA19baU3RtuomMEn
	 WC3BKV8XQ2070cYzhwOcV0FmQzvRurCYep8i+Yd9LmcC1eYu/rVPeokiEEq5m/wKg2
	 jxSjGxeGgGiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8BAC48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170791609637.28077.15682663854076132689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3705858286f2147b09fb497cdd2a9f760dd64a982845e08add041f26969b45
Date: Wed, 14 Feb 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707916096
