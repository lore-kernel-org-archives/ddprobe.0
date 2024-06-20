Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6986A17555C
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718870963; cv=none; b=QIUJSclfXeaE8Nmjk0BCch3ESq7pyURAF7B5DsZtOanCmn8jiz5tJz1Rk66zEIE0j8SJyFxxFZMHoOFHBTr14Xio369xJ3A6lgirhbGym9/M1x8Q2B1BmCs5brjQebPBm2Ypky0dwGurUOQIT3jw5trZRdD1arPrNCR4MzTFSbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718870963; c=relaxed/simple;
	bh=5abNpLACW6XAlvyu36FQ4q0zQ58245tLk1ZRS73vgt0=;
	h=To:Subject:From:Message-Id:Date; b=kvejeCoN5slrLdo5/fQHb6c4l0NuSEHC1ARGyogUB8h1vfj+ZPJT7Jg0ybql6lxox/23/VA7I/yqBoIgNxBZJaJ5oQtGCdIKbI01/r4SITkhIvY8XcSZxAwy93FX0i6MHrMRTvfkqhDttuNql/WTQ8m83a7Dfx4KK5K1kRSxesY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1lODzjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1lODzjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8531C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718870962;
	bh=5abNpLACW6XAlvyu36FQ4q0zQ58245tLk1ZRS73vgt0=;
	h=To:Subject:From:Date:From;
	b=f1lODzjQMEH89kL0JRGZ9eleFTzC3W6tcN2uR786FXnO2IH8W3mdLJCae2XtLOX9+
	 T96ypOEpqUCqD1icO1eLBuPfCr5cNxa4I1EEcxgprzjaFP5AUsV8P72Br4JPOs7lAy
	 8pAtDNAN9huBX9sbkefZfnIJde7nzkM31cmqrQ25UKe3We0cVM4clOKSmUdM7HBFGK
	 uu/H87EuvE6lfT59evMRWQW8o2NPN234N+wlhuxnVNuNa+IrlR0jn0y6Jkn6qC96Gw
	 OFivuf+2NU2Sxp+9OmyoEOdLs1wc+xQWUMttvNGgvsN18GpULJrFF3XpJwPhA70idM
	 FFA5TPqc9M2Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01D6C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887096277.32288.5112628414103508771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd28490097524026752049f97ae3c8229213eb0cb1ca7fd66427dc2339fd6795
Date: Thu, 20 Jun 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718870962
