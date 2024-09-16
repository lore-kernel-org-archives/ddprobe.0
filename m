Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41769200A3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726527954; cv=none; b=drQpAioSBDNvdJpEGNE0Kh+XgmzKHqY7XffLuFiMn469jwzOGX094bC+W5U2hPJAUkbGNs6ichSkbgBCn+1FKzE74e4tEGLQMen0wYOBWCeMWKFNpchmlso/aEKNLvf5Bf88U0pwTvrl1FiCadbPSqPip0IHPeszANOeG+LMrNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726527954; c=relaxed/simple;
	bh=lrnwHIZi447n4Txeoeqz796vwP4krmlei+GdIQqWe8c=;
	h=To:Subject:From:Message-Id:Date; b=oNdLmXSbKvZU69GIDm6YFIVprrUf0OBzSJGK5NOPgvxzHix7VYrdRjY4P5Wg8bi9dAugVKUqpIQO2T0r9PcqAceHhY7QwvBKNmI2xRptWB2CIuqm0Pwh7wZhXqB2PD709Wk2B6PCmR9uN96/t0keHKySNeRO+KirvizUY3NMnAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv2fJil4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv2fJil4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B933FC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726527953;
	bh=lrnwHIZi447n4Txeoeqz796vwP4krmlei+GdIQqWe8c=;
	h=To:Subject:From:Date:From;
	b=Sv2fJil4Y0fwoIIe+n69xycXm/6CCOUXFkSgZW9vEaoOwVfusSqtrdmddHADEoAIh
	 o4fZ1ogcbb3AUBfCXnSqsRj5wuEuLJr5zuvk7il7mkB+k5/KmwPpndZNprDUyvW2M9
	 pjbG77uctC4lmWEe98Yys+kJ7vf4nJPoJVsLXnpa7eRBBIiwgDYV4F+08tKatfcAvl
	 nuYP5KCa6xVU4lvOX8i6ezj8Q/rFFvzDMV+dQDl0HPZQmGov8z9M9MJn/uWjDZLDNS
	 pv3DBGAccxYUfRZ5dD7GuSQ5jGl6Z3pHPsvRFpdfpa5NSErbvD/6jPi3XlBmXbXep5
	 p3O+d6uibqz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C8AC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652795362.312.15984537187994077535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f68815206fae29ebe0f75676d23e40c35670df251af21f01eee9c006e1e5cd1
Date: Mon, 16 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726527953
