Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E741E4A9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705928297; cv=none; b=q9KWmoTc/heOy7dZ6Q0B+7DBMSDQHRoixHIKuUqdXys+zlYPPVK/JmQuFyRrOLYB49kwmQXXehyMLQEMhuXR7HLGu4St8JcYmhwU0zfg8siUBmOtzqw9myv8na6JBwh+4/M6R+FG8f3enl8BXqsdYWWOEHovTW90dYl0eX4Esek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705928297; c=relaxed/simple;
	bh=xzhJp6lXAaAS/tvGzty4ejHEBr6linEdkQWPpGF5jYw=;
	h=To:Subject:From:Message-Id:Date; b=fKaO4QNleJCsF/WkfPtkeLDiO1Np9ANoGNbT1mT36xau437Ai+Hd5qJ0WcHtxEn/O85NOZH9sky60UgceLrnbqfHUsBD/F5VIGL++tzf5VwcdXy95pBu8GNkVROzTE1K5cwA8W1KFyiBLDV+Fwd8aOXVGjAjVCUXLWn5icLszk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFWFBrQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFWFBrQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740CBC43390
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705928296;
	bh=xzhJp6lXAaAS/tvGzty4ejHEBr6linEdkQWPpGF5jYw=;
	h=To:Subject:From:Date:From;
	b=qFWFBrQTCb99VKOLr2OXHPuP9GlfH+lZhSDsTyG9heX22Hh554kIzSJOQrp4G5ay5
	 yFurcAHogAUR4ToNkPYUY31cf3HFdWrdPNSTYQzFuoLbRfrTCUbi1l/j9YH0GkbbGN
	 TGuWPCJc3VY1IwqODAd2tz6ITy1DBcDOmMhfJKLgGF7t0THdVrJx3UqTfVGKNv2RpP
	 Rt0VBZfjZnLFKThIz2O15xzHrJaSjSY/48m+zBHXKLQ9yJnuVtwA+NwkkkL/ybHu5e
	 1rl69mLDcO4TrO6Es9Fque1RoheULU23p9c6ICS4/GFdlww/yZtWFkXtoXGdC9so6E
	 39IBHY+cBiVQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCC5C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170592829636.17050.12269733077422901602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b628dfbaabd2836f800bc0d1ab732a2098b637f937dd3e1231eb916b8e9c515
Date: Mon, 22 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705928296
