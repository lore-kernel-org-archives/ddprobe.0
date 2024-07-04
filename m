Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5385913BADF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720098323; cv=none; b=J7QgBss24O7nRuW1Ow9G08vCBQRqmkY5PzQe7tsunJEQ0/a98XiMYBj4lZtzSP+2yuFVRhlJqrn0owwczBDg9ZnHhpALrpZt14J+ko+252S+KO8SnnIjT2D0GfYsSM7Vsum5qaztjk+Shat4BwOglHjl7m4CZAyHuD0/QaSC5cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720098323; c=relaxed/simple;
	bh=6LVQYYOj8kT919w31ucK3mbaFdTBIfx1PtL4ayEgZyM=;
	h=To:Subject:From:Message-Id:Date; b=jxxcirZN1+/TsBGqPNI08S/dNWSTLahTaraFtm2CXHdG7BNHLlb5cTf4/IYX8g7ZgflZ8JQ3SOUwbSLGQrISix5cYgTjQMXhNaXNpyQb88ifR9wMMwvCF4mSb6uuAzOGVN/GbqlQnC1eWzJaBDFWo1jCrU5X9SxGz8HWr9agrZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTogBjG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTogBjG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D835CC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720098322;
	bh=6LVQYYOj8kT919w31ucK3mbaFdTBIfx1PtL4ayEgZyM=;
	h=To:Subject:From:Date:From;
	b=WTogBjG1qooyil+y8bvx0q1rCehulpvNxib82gnSU2xVG7DnLH0e0tirgn8w/OZ1X
	 MwFL4sqKTjh7IXUhjW2SZAmwknrbLS4qqVpnLJYyrTNOt8bkqizIZ91JIspXVwlpnK
	 JcCvBVfNjqCVTn4V8bgxxSuN37aCTQ/K7YkXKq9wmiC4U5BY4MjPVDTWmWAN2/36Gz
	 zUJ/02wxvzzRMatVvAqfk8HoUYdNIBsqPkmzQwA0nSGRpjBPUTcZqZZNgd1w47Deop
	 uyTqJmyjMGduLYBFeWNod9P3mM+ROeFmxIj6znwvfLcr5ltxWf8XHKLFOOhdQyAM9b
	 6+Q1M0122MbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD39EC3271E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009832282.1142.290562799308768443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c1fcb1199da75593d7c4347fa89334c9c02f18a75bbf4c5578613f400f3347
Date: Thu, 04 Jul 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720098322
