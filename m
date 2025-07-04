Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8827A10A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751615394; cv=none; b=RkpCPKGVU5vWmc5qwZacZa/RIbYezbI1l1IUb84sA1/4/D7IZKVEvhRmxyTtssc4OlLU9XboLF5VKz6MKTeDgO5jB/lkjophxS7i9Jbo4Pfm/IouI3PE1DYIEZQbKqFIGyOpytdhvU7YPpn8Fkciq5nPK+AwDOpvV54V/Ih0q8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751615394; c=relaxed/simple;
	bh=1W7VegN20oiijmYucgk3z2AnLesfJ5MQgvYQwQATdtE=;
	h=To:Subject:From:Message-Id:Date; b=EdLGDf0PhOUUb//oaJIdIzEbhcaNhU5bJl3L3Fj1Ui5WG8ncZhUFEkWnRiddn6Lpugb3vAiIK4L/M2NEV28QD+7I3avoBN/5SqAsaHFv5wNBrB5nNi9RX29dfDdxholzT52S/ykA4hQiWBJ86C/2+xLXbjffE7/TAljcrO+OTdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzjIz9wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzjIz9wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0040C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751615393;
	bh=1W7VegN20oiijmYucgk3z2AnLesfJ5MQgvYQwQATdtE=;
	h=To:Subject:From:Date:From;
	b=TzjIz9wm8l0sZc4nz8Uo+/QXrnhw/hKpZdJNHNXlvpHPs8AVySyfftXj2UkataLA/
	 H3mqjvQIGVhZ8YSrGO18dviJCTnIcx3EjjPPSyk/2UYm+ov28UGEWOEVuv/ktcxXJO
	 eQkqDVOMGupK0je1F3EgrXJFZOJm0J9m1AnZDCjtfZJ8vQs08F5yoG/ytgw/BLn9jY
	 H7LWlHStYOat1TG42PKi3ZuLWz3FnmMMQTLnKJkVibEla1nWMZGq0mQFiq2KPpq9lz
	 BN72+T8jRIUDJLQOt3K4uSMMZtB4Ui5f1OtttbCPs4f33tR4HjuAe70QFRA1BCXZs/
	 9asO9jqHwlWjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9ECC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161539357.26554.16191998297917722747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b17dc2e3169f6009dc0874f92bbf015f715de0579935ab4ce4d90e13bb8304
Date: Fri, 04 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751615393
