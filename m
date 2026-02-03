Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186B523EA8B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770089034; cv=none; b=MLSKrXYd8xlaGETOeSG3qSM0RUkoQHBThGeM4nlW3vZAlVoL6aJPfQbZqB8+GO1YcRQPeJJGuGQ/4iTA7HF+dRiJbPQI0DlBY1EmdRKIu+7LrQCi1tBvPmyCjGBnhZm6SUacX66q1IK+dETi+ZDNXqEdyjXbkVVM+ETKpKHPMWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770089034; c=relaxed/simple;
	bh=6aPddr08RfOt98zf2/tbQX7HwqJpgvXsuHhUm1DqYTQ=;
	h=To:Subject:From:Message-Id:Date; b=UrqJdmrhXK148zS2Ijg3UerJeRO3Qu499ZBAXzXifI713LmBFANsl8nbbzYF6CX9px1us/d15x5D0Vx9wyy/eHgyP04nKCVN/5L1YNTHSnWouyzohrnWht1RoxxaPwW2MHpgD5Av1FmaqLQyIwDCJXfI+KGItsqVMShYo2321h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHauN09f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHauN09f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA363C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770089033;
	bh=6aPddr08RfOt98zf2/tbQX7HwqJpgvXsuHhUm1DqYTQ=;
	h=To:Subject:From:Date:From;
	b=NHauN09fuVVz3W5Sl0vjvufzLSZmv8pNVetcsHnPBkK3oZ1ruf35UzFiZmtU9OjCq
	 tsFybhFANdNM+uJHdJa83Ion3y1C2U6W9DYc3X54SXwmbAyFu5RnAW33TpwGaYX9gh
	 CExx4fH0xMdiw9OWTEaTisf8cyoneSoNB9PH2Tx0vCbn6fTc2lDvVTJgTBW67rrxTS
	 xJiwoA6vkiPbfAHL7Qs/Z6qqIqI9xLFlnUG6zOxndMeq8gQSYv3m65YhvOURg/gip2
	 6ySWDUCdrcjC1OxpRueuOmc0ECS12UWCuApJgzcdqsFd7ajXcDR9XlGduF+I0vAo3+
	 NR9deIfVT8Pow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDBE83040
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008903360.16227.9264688007370196545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e970ae117913c650f77e101089d94913f1982b7921e5b2e596bc3621e14d0e
Date: Tue, 03 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770089033
