Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5AE2931C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784056714; cv=none; b=d1wD7jsvDfJSc0m2WJrPOCIuCqcuiwFcD1SIp6VlcU1VzQ7dsGulmM0HTF+HksFvl16h/C457Mmg9KS1NQ7rqPB0ukFMiwoD5L13a6Nse/2fNRqBBpwXm6EPQZHsTPrQqbU6NjxFk/VNN88FQtTnTKYMTd//eyw2FHgk2X6ODdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784056714; c=relaxed/simple;
	bh=YI4RJ7IkO6rN47Eq7SbYFVwDyYMjQzLR+p+tCej0Sko=;
	h=To:Subject:From:Message-Id:Date; b=V1wius7vzggzA3lbFj7Q7OcY+/9uBfoPiggIYOU3+lodXbN4GGrilXYaRwXVR1/Il4jUJhRucV7vmWygnqiyV63MTJr6RTzKYjmqna38WNv2XhvjBfIhd6frb88RjwtrzNBnyauxcRiZ/Fz+XwVPEjr2WRUGMhQVfnZhnmxn6o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCTMQfVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCTMQfVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6049C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784056713;
	bh=YI4RJ7IkO6rN47Eq7SbYFVwDyYMjQzLR+p+tCej0Sko=;
	h=To:Subject:From:Date:From;
	b=oCTMQfVrdQfiYDD+HN89nKZzAbYUciX5y97i0l9Lpzy87NB8s8hakCvEkvqXVbFfs
	 iAlMeNnUPrTtzfgup1mqYSk9z+6UrByK/e02K//FSEnI+eH1/jS7wpUR48p9URZ1Uc
	 X7qAR2g20hH83p8DSiqBi7Gahjh8VjzCw4Wrlw6VKRy3qKTYHTCmYGosfliJS9zjD6
	 3j49ytnE4Se8l4Q711u+xhuWv0+esH0+GMHXTD0RzyIspEwKYXj6HkuwO9KpXlR9gt
	 AdLfgzdlCLHCEwjzZVcdu4a07KvM72lvtrkjdoKCOHaXeDTjpj/CDrCShXezM2DRny
	 g6AT3+E32r4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFDC4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405671368.3081.12052740917435867574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1f2f01c4dc42d1d0b6065f55b89e4aa510c2bdedfa66e257bec0e08550f0e7
Date: Tue, 14 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784056713
