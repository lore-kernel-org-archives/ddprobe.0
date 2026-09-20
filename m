Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1C9136351
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789868434; cv=none; b=dEzkqdvuKNI98oO7DHTbH8dRuyjAmNqdEfNK84AnMhcWLf3mHJqLksOwiCI68EfsT64lFwATPyjS+goKS+FFJ8vQVxrn6zLIF0kGwG52OK7LpDgNz0s4fBcsvroInxRkt+9X3fulyfhevmRzYtykLyCT/hdsxafB/c9JeI2Yhjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789868434; c=relaxed/simple;
	bh=kuz0KSRI1xZYeMHv/8Qo5zw62vuItrD5E4+K7M/hO/E=;
	h=To:Subject:From:Message-Id:Date; b=lCuVPF5YP9q/JVv+NdGhJWxBg13kytfcnb1bvN2sExZbkeCX3iKxNQJsnXg/VtSf5f9Pm/uGspC2VDhBPk2GTv1XFZxE/JIOe6HbAqPHS93wpcUj0WPnKUJ5K0w9oExzqbOZwgMj7NAZdUKoWyLx+f+d2Gfg91qFhS6ElQlhS1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvO6hF66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvO6hF66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF8AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789868433;
	bh=kuz0KSRI1xZYeMHv/8Qo5zw62vuItrD5E4+K7M/hO/E=;
	h=To:Subject:From:Date:From;
	b=fvO6hF66EOR9LlEJpv4l3H6p9aIU47CaLq7NMKf3EqB5O8rqXbpHH10SRsTWUA7YH
	 hxfSRRUIiQi8u2iiSHJaqcOo1Gkaio4a/0dK8+h/vEENZgjFMX2cxYlufn2PFKIVPi
	 OjlART0Eog1bYfJSXQ8ZZwdqxkiOQo0j9PMjZ4qwOKxrRE94WcUR2RXZvruzk3/6lu
	 W2ok/6Y3GfZzNM8UjoLroDXnCtgoYoALJ7zmLLYkW4sFrswsV99P4PgAw7ZoVhl9kI
	 WFcyuwjWbzhuu4FuHh5CXplqqnCi1YTqeUdksZWuxdsMloyixQKQ4l/msDUm+xv3zO
	 du5zoGVVU/prA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB486C982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986843369.19685.3977193993860543516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20269834765860ea3a591e8231fc08a2c3c299d63f38d7d42e0a8fb470753318
Date: Sun, 20 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789868433
