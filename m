Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA8F20326
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717642043; cv=none; b=g9jWkNl0bhlLt/gRkdfhOIAaa8UHCZ6fV3k1EjLZahjtjtSwC0NowP6ebY1u8Tj8qSyaXnvpN8XDVsr3PTUiMA6COuGWx4H/mT3lIDD45svxiYq2RGNWKm2n7plxH8Qv6C8q/nnCt61mdxYHChg5ma9qQG/4Ab8owmHrykmeSs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717642043; c=relaxed/simple;
	bh=JGhUvWDgMRheCnWh/eR6A4gHLn/Yf4dlkGRVyTvBFCo=;
	h=To:Subject:From:Message-Id:Date; b=a+4xE0slo0RBRuqBDKl2ONab6rS/GCQGEBXbxo7gF8g5N+7k9t1swP31Yq287qgwsbU9K/pcjS7oTKq7zKSZ2OOb9T5H8WmFID+hZPVVhhJiyYjzrEokMnXztxWSm2BkpPpV0TEFi9XRbZd53HeG/LNvQz5+JHI3WOvJWCo1TDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRg6t7lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRg6t7lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBC0C3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717642042;
	bh=JGhUvWDgMRheCnWh/eR6A4gHLn/Yf4dlkGRVyTvBFCo=;
	h=To:Subject:From:Date:From;
	b=eRg6t7lvpKFP2N9RA2xWG3fnuPVfLOhe8W7NMtWqhr5MxELql5m2sua0sqnoz7cQV
	 27OVkE1XaiyyBevNPHmupyWxoXUmLdBG8uyofYqKJKsj/lMXw0BB+he9xTnpu51NTM
	 ijQD42yryfJvWZQSjrNZbM8/844Kl1GgdY6WyZzeLX9wNfOSlivMWTByxLRizTmC4y
	 Cbd4czcD4gQJeEskjU4JwbomEtaDiLTyyglFJAFMiYgUWCuwYAh73dWwkoWLUX0Bqx
	 BrLIKJabu12IwU72SRJ0k897/2TKN5TfHRcfFoGwHZDttSBdoS+gQi+RQOEyByk1MC
	 2XBqaMZ+fOIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3BBC25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764204282.6392.9230211633156798570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05945473225a9950da58a5f1191abb129592c6f64c7f1f16f19cd825f216235
Date: Thu, 06 Jun 2024 02:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717642042
