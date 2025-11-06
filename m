Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE126B08F
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762424394; cv=none; b=umuRCFWTF3xSyMO/x1eqYwXgNDgZB9igGjrIRHxCE/FkJdUrLZ27pcAU1ItMVb/QAhMdDOfQV3OWAh1DxciDQBe5Xuwha8mhhFmyaCH3CT2Ek472nZ44lpq/9jGahlDvbpg53+OlM9PNWxUSN+w1HNlFEw2KJEnullM44b/6xmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762424394; c=relaxed/simple;
	bh=4URKmPySVVufDcryWnKFgsey7NGF7gEVXMFlbz3a+F8=;
	h=To:Subject:From:Message-Id:Date; b=qD5HHbwpvQfA4eKu68lz/xFJZvbDQu551/anroZj059wDgDkZtMql0ChajlLVF7txNJ0wbDF3XhwXredZJ6JLbdG/BicVsR/CoeLjTe+9O2zZC/kjG/2VMQZuNMSfYbRdARiKbnf6WWfmDVxlucyT0pMJjmtSXHK7KjfjH4Pk3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJvn7UEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJvn7UEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A736FC19421
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762424393;
	bh=4URKmPySVVufDcryWnKFgsey7NGF7gEVXMFlbz3a+F8=;
	h=To:Subject:From:Date:From;
	b=iJvn7UElBDEj/KYfvM+L0JaMkO6si02odQngjFdWQ48Si4VklicrBG39CxPwAg9Bp
	 DpQPCBsTlJKoxt99Lj7PaoLXw+8HyaQjFdl9ULjgI5KMqxfyeBK6SP6HUmGcmw4+ed
	 5wT/NIN+hDjMkY8dZ/2NFJG78Ce3S4CsmsH+oDb/QqKgOk+MyrkX/3TQNDu8hJYROh
	 pLAm18IAdVHHoeGFkosnVa8I390DGIUVCDX4wKWYwZ3noHZN5EciVu8YQ+MKhdo+AU
	 nyYsVcY/A4jP2RHCCh3Is3moX3GDF+jQ5QEtA3W5itsxp0AqlFQTwQqtepcZmNkAv/
	 7HKvAbmK7OFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CFFCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242439361.25501.7764469563680556968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e180f886f4ea82881a9471d920176f76c21ed6bb890c75c04f0ce5539567a2ea
Date: Thu, 06 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762424393
