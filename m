Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F067283FC3
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767010434; cv=none; b=BfoZfk6ORuVQ7DODePNA0XR5bOZ3ok1kCn6fwvsdlN3+SVUD8/MOJZ4v6OL9awpwShzewfD39ekg4xF5Ii6655u/OW3yTGZM+9WGaaIMeyVawGBVkTnlrecVxshdOThmNocMZQ4tW3nYRZKdZgTGvxHLovjFg6N+ckZnwcoSTk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767010434; c=relaxed/simple;
	bh=/PzgC0tnbjgy/QzVXyiBlEsd9TqFEaNmQ276McSvOGE=;
	h=To:Subject:From:Message-Id:Date; b=cjt0jI5gMUvk4Aetf2L3CGmH12JG81X2beSMfHjLNsf1dyzQP/Zqlu3jwVZRdi4ioqA8eMOkt+EIjEe/N/Bozrbf9tEBG7NRerkI5nZZC/hfxMQ58oF4WiwAacWkCD3r9hBc+365H+ycaVjmJCfHnWEVTPh0DsauojeAAXSnbIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHeKUjqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHeKUjqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6F6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767010433;
	bh=/PzgC0tnbjgy/QzVXyiBlEsd9TqFEaNmQ276McSvOGE=;
	h=To:Subject:From:Date:From;
	b=GHeKUjqTuBxDCKbGFWAroP4eHGtKhMlHrHpkzbQ5gcGJIICktPC1wZCINziJawxNp
	 WMmbx2GWlwoMStTKld8u6ZGSFotJfSw5t60XlXl3lDpNQ2sG5Orgec2QdW55o2ScEh
	 7IbOg3iaf/nUiHR+8amqSaTmPayZpEiu90740rhYP5eAe1J+ikZqrMT5oSRsZGQLHp
	 pfv1gG9kpW1EnPQ7F69kev9ysx9cFPN8y+6SgsaeKQx+T8SFaxzd1uZs+urp8Kzz5T
	 g9iMFBaMMWKFbWxxzC+9li5LOO6bPrlFNpczMC5zWXEwiEi/zcZFdrDOv1ZGt46VLJ
	 QNGCFVyMMjpTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB2D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701043365.27228.10559960310942695572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd5010750aa6930498c09e182d008b87b85a1e720faaf97d1a4f9dd5545471f
Date: Mon, 29 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767010433
