Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD632135CA
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736520354; cv=none; b=QD9y32jwd1UpyEloeFHGjyd9WIg8bZggTNfuU9Ilkl3D6MX9n0YVvrVZ9b41gGXAUSBb29O77jmvgg9fS1oLVaimuK+KGWKepMKHGFK5AkKrypmUZTMwVZRRnwoqfKQwShYhCwXdDySF7hIY7rruvFO42XjY9ZI/+a8damOZ3m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736520354; c=relaxed/simple;
	bh=z3Yd+IBPhqdSiF7lJweKcaNTI/ItFtd2weL4WsD8/u4=;
	h=To:Subject:From:Message-Id:Date; b=BRETPLsrTxxJDKRaqpOc2cG5GkrfJevbgSCx38L+9qekk/5eNXNzsxEcXEyNlJVBA7yVbd2gLITPDOJj/aQCOoK2g7EKVtD629BotH6m09Qfs5G5jwjluTmgRkJjGL0ZN+hWTs4TQOcIdDgGApR3654GEHvx2UjeK6LcMjB8Gm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAIHSVE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAIHSVE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B580CC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736520353;
	bh=z3Yd+IBPhqdSiF7lJweKcaNTI/ItFtd2weL4WsD8/u4=;
	h=To:Subject:From:Date:From;
	b=NAIHSVE/1sN4kY5eK1zuxgn9Pk9+Tp/XpoSLCMVgpF/6PIUJgxh+5ImwnturQIBEa
	 Z451HL8zfeRT5CJ33oQQr3El4/1OF3S7tiiOx+4EnCZlaMuJYcY/MqrmiRYejQV7Lo
	 qPApilzw5K8j+1o4BI4Y7kyVrLOUQQv1EHO+omUlwlSM7MTmxtX7xbF4Zow6UYGl7a
	 Swk+ozDW6+13VvIbM5x6ubqROyGI2zZ6WCWOjyE6nFSSKJu5s7ULbwGwW6TZeBJmxO
	 4jYI3Alu5t4q1QaKLmQAW61Fg73ZKdEYdorlrobpqAJjKXB5Zel8wZGATacXaUmnuz
	 Q6hI3la9dFHIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A197FE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652035365.27624.1193378781127469525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ff0374421d0569b3e7d22ea1c70f14d15aad10099ebf09f8383fa9317187c4
Date: Fri, 10 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736520353
