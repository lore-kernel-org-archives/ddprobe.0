Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2B723C506
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768235634; cv=none; b=Xi0olf37aCByl1q/5XXs/ius9UXm5rQ22kE5RG/ekM8UT7np+VPT/Bs69k6VUILxxmApNEx8RgROgH9otVjQG66/1/kHbyB2ctnyNv0jx1t49tJ7oSbXsT1I+U+KH87wiTl94N8taJ5+Tmx1S9cRii6JKK54IquQnE1Ob3vDJ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768235634; c=relaxed/simple;
	bh=iVzN669xUO+u/kGCt3LVl/ffqx6/+8/GXI9099tRfPA=;
	h=To:Subject:From:Message-Id:Date; b=mWJrMxB5LEC0wmNXQqceI3IyuRn8mU6ZW87AMtUXVJK65bzIlkh8hDCD/sHtTD3pU0HXeAm5I0TIy1RKq4uyQ35HyQWRELmvCl0ityN0pRCa4BpjGntEc41tpvM8q90AjUA6mWSizgt6exCqMZXPU9V+V7uAnL+wCjoCdkjEnwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIJ4xsWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIJ4xsWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4702C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768235633;
	bh=iVzN669xUO+u/kGCt3LVl/ffqx6/+8/GXI9099tRfPA=;
	h=To:Subject:From:Date:From;
	b=tIJ4xsWmNfu71B42hESNppsS1o43sWyIt2MzqyfRSBcZ16GkfDnBuAWaqy56DGO6s
	 njM658t6NOtWV8Ie8OkS8afYEdXpVKcsW5vewCrvSHEEHynHOKF7OL6jgiqkgeSKaX
	 oIIkqtVxToa4ykhJ+zn1tjB2ClNDnottDMp4t9GcTpmcrVT4N6hNlbqpEC5Fp4NKj/
	 PHlhHIN97JEkqNiuW77v6MMN6a7SKr+TQd1ZLJImor8tDME1UNkZ4Bvs5XFa4nSSMp
	 CJDzZ3jHT+016Lk4x45BvaM8GmsHVmEl3WaeGv4JFg2nYhutzn7l/w9NYlmF56R7dK
	 TTQC86ClALIAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE2C9EC7A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823563359.29046.12851908726398424703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4b6739afb8587aa3d242be1eba935fc6a7c930b1922707b622f98351316c13
Date: Mon, 12 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768235633
