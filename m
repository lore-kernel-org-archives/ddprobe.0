Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1D8488
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732289754; cv=none; b=pqKGOWlodbKIGPOzO1Y0CK1KTsUqT8Ne2LV8OIsy/IoBSApi5Fb0mITn2JkN55ZJEAXQcxPhQcVyOsfZWgJJrRjRUTUmzVjEfCZdrfL6HzZEhCkn/ceniVps0qJHP9DDcb3pvBi5zcqMgN+5Yx7t5t8bJuxtSZjmzxMuh6h+5LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732289754; c=relaxed/simple;
	bh=rAFyQzfqP80KXxCQl8vXUku865UGWCoxIaUxQrqPi8o=;
	h=To:Subject:From:Message-Id:Date; b=YmiQyIQ5WV4PNJfk3eUlvTDSMwrXB3i6YbGeUWwM191upN6gcprSG8EwJ2RowqRjE7NsqnHOtiKYO7V46oL8nfVJgFZhhQ937s1T34vbpRXvbddnp2S0EN8XYpUN1cn1B3ztLbCJoWOEtERBm4a6KIGOk4VvzlR4JQn8El35YfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd4L0UEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd4L0UEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7255C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732289753;
	bh=rAFyQzfqP80KXxCQl8vXUku865UGWCoxIaUxQrqPi8o=;
	h=To:Subject:From:Date:From;
	b=Hd4L0UEGM9W3NafV6z64j99gRngy5WDZDXipMInOPthAfGxSwhQesgHWq7L8XLyyv
	 UEUkk+hfhU+Blna5n+qOl7s2/j8IICiEgeEXBhqQwd80dz9UopMKotcDqgMLKHBRQk
	 h5MgqCLynezlxQl9oQVqikAOzPgrZWRgDUdbTa5vW6QpiqIThNdNe481v7pu5RexfI
	 b7wlOa0pP3Zn43jumNMYSn8UHVnmnV3QXuOV7WKNv83RzbepMJhe6mVEw0YiNIp3Fv
	 GDk8VJN1yCCOH5XNpRRuCjCo3JungqQOBThorrK3igLh40y3gjVWAKaxpuW73wedo8
	 L6O4YbhbRJkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1124E6916C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173228975364.7326.15744280803155281445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470a7184900a57b13d28f3a8db2d77dd54a2164912dec792438206acd786361c
Date: Fri, 22 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732289753
