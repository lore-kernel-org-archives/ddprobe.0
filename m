Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BECA10E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717555583; cv=none; b=FStWmJ7XgXtofn2iMrYa+9cBc+Z54MLv86O/oUUqzorJPJ40TXs4v3Er+jZJ5v8qAKJmqS+ztZCTr6X5BeMUa7AsX3Z+JDB27swy1lF1ZJuZFs/oflpyMrtd0fym7bC7ckVWTqwIjiv7HNN1VKAcSiPzmu+MOOPC94aTCMlNsAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717555583; c=relaxed/simple;
	bh=xP9UqxOtSc2T//s8hfFX9j5XcGxqNSSxzWpE2G7eahE=;
	h=To:Subject:From:Message-Id:Date; b=m0R6t6r1/D3l/W63fdD92fmTrpmiq1X5kWMoEtpNQHx1N1Dnl5tN0kvAF/kIUkhgCN1REIXfp00lhk7+MerQh4wYEihYp26wo0p+Zowef1FXDaM9SrGhuNdNk4pXQmd0GjfSgNVzrJAuwwz8VIE3N7pZvtQAj8n/uA9+tmpOB9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ljiw4u2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ljiw4u2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ECEC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717555582;
	bh=xP9UqxOtSc2T//s8hfFX9j5XcGxqNSSxzWpE2G7eahE=;
	h=To:Subject:From:Date:From;
	b=Ljiw4u2/Wxg/VDrzHKlgBX0agXVS3WbQZn5VdO5HW3cG834Obu4p8h0FyRy/KFyCj
	 WlgtQ79Tr3MeEVMUMIoTkg90l3ADQZsl8hAuARnb+bGGTzTE9NypdbIS/V19hdJUSr
	 zvhf50imGv0D1Tk1z13rPOGY05XnXiTplQo0E9b5y70SHK6uB8rDVFKRw+wXNCY/jl
	 AcbPzC9QnUy2uOe69zkHrsNHyhIJNbFk0+bWvuk7G9rAcV7Iho4il8jbQzRjGS/Ii4
	 jFv59Sy+pjyiqbay+/vdkxtf1gqFWkPwYzU0E1C444nittn9obdR9R/At8I6VgkPhR
	 pT5onkstQuVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4A4C27C54
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755558275.15099.5365691503800992440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabce70be279cabd16a1a34a026a83419703195b34425dd6b1a6b6f76fcb9f3c
Date: Wed, 05 Jun 2024 02:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717555582
