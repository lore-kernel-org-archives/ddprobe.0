Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DCD130A73
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751368196; cv=none; b=J0PQ04NY8D4PJ7OWrEQez8Z1xX+27yYKmn8NVRVCrE/r8NW5rGYJpMHK4aDOHX3NZQLVempiBeag9WetC8Ccz9ITxlG2/t4Jxg0p0BMTk8Yden4Re/czV/krRwPD/cBxs9c+gPJSPUt9kYWMdYRGQZiCrORQf+dGe9EmFDbifFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751368196; c=relaxed/simple;
	bh=gklyIQ30Mb5BmkuIB0pXkjxqux5OnJdbiU2sCXCcFRI=;
	h=To:Subject:From:Message-Id:Date; b=ga7+JKZC+m2zJFHx1hpt+9LdmUnnp796kBTPXHy4ZSR5lY3HO6lUGukQbdbzAYAUQYommo7nHhlv0bpJ9zFWW2daa6hfmhaHyjsLq62Hbfwt0HxzrgbaxKuovsRAsfp3WjHbM+AADOhQbEuhT6DHigOrmPIYhDus9SYjM8SpgZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRgOP8Nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRgOP8Nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0168C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751368193;
	bh=gklyIQ30Mb5BmkuIB0pXkjxqux5OnJdbiU2sCXCcFRI=;
	h=To:Subject:From:Date:From;
	b=kRgOP8NhINIQaI2LAKaB73tpAoZfLGZXzNfAPiapkoMbYpzbJUhRT279M3xxEdtB+
	 Am0agsYZvrgAg7wtYyGFNLD6D9E97kBNWHJXgz84Tjfr0rLDoYvB9p39VVj0/2n70q
	 2OhGGbv3Y1ENCMmiCCzb8e5RagsH5GT91OMMfJCrJvgao59A8qR8N6gJsAlxq2peK4
	 A/FBdwHbzPgySQy0uGD3X5tTTCcuk1KvcA7f0VcF8jZXOOvQImqOv7S+A+daZwcTXR
	 tt0D+cp4k6jnleH71RluFvKrisVo5NHKCadE9KqxAF7gwVf6VsdR9iXjaeWia6RaYb
	 h9Rj3Ogre4NEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF0BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136819357.19706.3756597435991259219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ea61e54f45689b1d960cb617c262aba4382e37cc342a01886b761320b55d30
Date: Tue, 01 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751368193
