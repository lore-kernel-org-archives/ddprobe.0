Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B532701D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745561394; cv=none; b=BeBQ1+V9LLsvB/VGHvxtpdiIfqi62IIo194kn56wNlPJL9hE6jx9Z1KbOsZ2Lv8/oI1GsEVl068R3GoeieY1o/dv0m8KPvz5WAyLPAsfEglz36Acw4C34ycKWEHYrqlnRDdOfoUN6GXbO0Yag1k2Z8kyiMDQGiahirbHOXuHFd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745561394; c=relaxed/simple;
	bh=TIaLwF9K499aUO/sx+6XGw1lX/NPNCEffRermke54+c=;
	h=To:Subject:From:Message-Id:Date; b=DDDWVbfK3G3FnvB6IyhCB7ZIIb+QiZPl/HaIrBdK8ik+yz7u6UtnREH0OYCxHAUJCWXTFcqw394enizQP11pUTDkbkPIoG4nZCCIGZ0IQMZSbNfW9MqeLEU3FHoG3H7BvGXVT32aUT3V6XJBopJCGuuEn/J4zH3JQ9p2KOX3twE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu71ZCrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu71ZCrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB48C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745561393;
	bh=TIaLwF9K499aUO/sx+6XGw1lX/NPNCEffRermke54+c=;
	h=To:Subject:From:Date:From;
	b=Pu71ZCrW/7GNL0WsIpobWlJJoC/dMYCnmiNj5/Nsb1UECqARU2kYTIcVjlk95WtSe
	 a/rB639p0jlH1RHr0vR7e+EKGT48pqsx9EcRFKefBOaZLx0hfXP4kgaRqRjT5L6S6X
	 M0IicE1ERh3be/uSrGiVd01CaPNMSMQQ+MMzs5coYZ9jjxNKm4khHh3opm50hagJi8
	 dGVngJZs8gGHazSTBKX+joYUiVK0VEInhYDhEaCgM9Pi23aRXxsy+vGNh3mgxLijQ1
	 wK/2OomyYX1upaHkd+e9/i6fOwPU1fjeZKV7vO7I/eEASCT/FmHCux3W1qUy3ZS9Ra
	 qoKskZJAMGMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC28C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556139357.17996.8872840527230637961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0384ecfde128ac087d9be87ee7cea914d04ca7bc989187d83181cf103a5c8d
Date: Fri, 25 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745561393
