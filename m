Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CF5C8E6
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757255394; cv=none; b=pRTLWyE0XadvS2i+vaRMxv4/2PC+04hA43uNu5MFoTmwAoxkwnSb73mqyeefiOky5H0s1vYGp6W3UD9czKhzwjO7z+DRV7TA/phtMfVD8cJbIGhovsH7WHSIys6Mbrb5Lr3Ig7IlNgFYfG3+4CAaiqsynDXjTUPu9mxM8KGRKq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757255394; c=relaxed/simple;
	bh=yLOMoGjh1DjzVWMdIXQPMXRSsJr2wp1GL/y1lZyamJs=;
	h=To:Subject:From:Message-Id:Date; b=h0gWvDhnjvJLBYyHBvK63hXWginTsw6SbFoKlTUDMj0pN70o9prAvONYUGyf+UnWwg6XlcYgL/M7gqJ0+Hx655RnHo0oHbv44DwN4nwRjxGiPVJSAsZtDcVooTAJRwMifPYCGIJ4xcOsDCJcZmqN9cB4UuNSQ/VgFVZLwFXkiDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBYdZEOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBYdZEOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE68C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757255393;
	bh=yLOMoGjh1DjzVWMdIXQPMXRSsJr2wp1GL/y1lZyamJs=;
	h=To:Subject:From:Date:From;
	b=eBYdZEODyVqQ4HdA/YT/cW1xeWe+kj9d00cu4u+c+doCQlf9Yk1BVwYfQnxLvSNzN
	 Mh96fY4wDnDS+74glYeBrIe8n65Yi7p+4HYakqzpmCzEzliRKDo9OKRM98qQ2Dxw1V
	 dUD4jIAh8DKtTHbUrqyOJJINoFhnuMqB4ljOvai3r3zKSQuJ+mKlOxCgpVA5gglHd5
	 TbC4i/BT0t/3/6bXltOQL9nLz2Ka5whFrXJF/EzwvV0HnsRVP38DTZ5VtKVmwrukEn
	 JokRT7H9APhWie15Rw+7yyQCjQcCa2pOY1LIS1+PlQiAf2cpm2va/rtPdZI1wrAgN2
	 DzrOsSgkwOKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC9CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725539357.26462.2524112315078811824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7efee5e3ee59994802de8006d46778af525540456af2b59cce4bbc69ec1676
Date: Sun, 07 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757255393
