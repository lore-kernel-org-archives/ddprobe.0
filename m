Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEB433032B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770834294; cv=none; b=XPMyd6ARsQTab1bMhEfgIO5wSg8ma/PCt2OkuSkcvxSCE6I/ex91KCaKXbaKt2Gw5GITqkd+abyffdJwO/CqvKQEWioXlOlO9lDy4WQ6ir3gXFDSclBlV+T23mGeLTOiXYOEjZiMLxFjwstW+BOxysfdX5cdcBNBJF4mqcVC9l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770834294; c=relaxed/simple;
	bh=JTvsj8zbJH84J1uSLGn98ssnBLakcxZ7kzQMYaUVb+w=;
	h=To:Subject:From:Message-Id:Date; b=o1blO+e6orpCDjFo3F/dsVkrb9Fc1bvYXVYAJyEdy+dlY/ypeIwqWBWReWs3c4I+bMRFyRBewtsdZHsE74jWOIZS+SBf285kUmbQv3TvLa5y09NA8kWmAivV307XrBulEGFMQEYQAci5UrKayjLjP67/kX0+NMUSLLP7na55zAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn4bbsib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn4bbsib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770834293;
	bh=JTvsj8zbJH84J1uSLGn98ssnBLakcxZ7kzQMYaUVb+w=;
	h=To:Subject:From:Date:From;
	b=Zn4bbsibPPWcWHX0JjENQ/MH3W1WkOd+fQdT3PxGEd4vS8jZQ3Q15YTAyRnleWS5/
	 1NfNLXGrhH4qp3sARM0mZX1obBcewlbpoD/Isu5bjURWZJDYko5wyKmq/evkOxzlvk
	 xyAR2nG7mAZA35p/ZpqKYllLgjD0tia/K45FFUOEWeC38VJaJzr9ooPnBTYpV1VmaV
	 9mF+Q8rwopDfA7MV/4F16+beppTcDzxqrTY7CWDIPb7y4ePx1hsIPr823rQhcBxC9L
	 +zkZpKj8uyUgVapgr/atVMf5JVtJUMuqbEcKSeZAQHpWOedybln069cqEXQN2N2F4q
	 CBZP26JhMknGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94205ECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083429359.18734.1152938209077587570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2604dcdc222190fa6f59ab799e9ac38a80c8359a085a69403f66b54c3da321c6
Date: Wed, 11 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770834293
