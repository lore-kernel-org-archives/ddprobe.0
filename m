Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACA379CC
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727120754; cv=none; b=oWNrS9eZ6pqu8USADL6b+l1sEKLqlqv+GpGRxmGbNEjIV+Or4nt+73gI+JOjnIhiZ8rSUjR+llcui0k0OYvYR7ZdXkL7No2e0A7QXFfA+dJJZADk0XjI9KOsANFVY4IWvHfehVQyems6Lm7/Er2MQbNy4wFiUNdcTBbyzIzSyWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727120754; c=relaxed/simple;
	bh=xtPlLkNnSrqwQPl0yqSHRcCFXfUgYeX6ki+5K6TLGZE=;
	h=To:Subject:From:Message-Id:Date; b=PyxaJr/VZWfhf/Negtl/oE+JAq86s2j6ToTlS0jJ94iKPsTz0uZut0cyCNRgmiRaDh/78EkUasvW3UHAh1BNayXAn1trrAdyx/9pIrkgNWrfMjvWRcaRviQE+V9Ah/f/GEx+dR3+kVCEEE56RwTvqFdfGe5bZ2BRoTIWo5RLahQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7hI8+F/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7hI8+F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46EFC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727120753;
	bh=xtPlLkNnSrqwQPl0yqSHRcCFXfUgYeX6ki+5K6TLGZE=;
	h=To:Subject:From:Date:From;
	b=g7hI8+F/6aTNML7ITV1gWsPEXRrXT8fDzfqJdpfAqxeGqTPGXMSvxp/+7zydrrNAp
	 4vRq04rp3Bd2EYclWiS7Hk0/w9+uf08OnMMR/HAdwPKKb5dosglTI+KPzAeBmJKQ+I
	 gPQamSRrGIguUMq7lMlFBSboWt95LYkTbk7JoNiNkC2ZKjRP6X3LcxOIZxDD1oJDUI
	 l/eE+NB6EYT5qPfddg1LKWjieMxCmwm/6dAlwM6RDZkIuAtmif/OHdKMtSJ5k+c8yc
	 uD/Y62/Qmtwmriz1U5xOZSQ8hJsTOslgDfPYNsOQHz018wvdoHYIXTWZfhUGCZiZj2
	 Q7zuIoaqPEWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDCCF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712075358.10886.2695984579021836398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0109cfe47aab594c7d3c847924e755a2c4476e1862e0debc5e8bec7068198720
Date: Mon, 23 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727120753
