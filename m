Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E541DF725
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745680794; cv=none; b=NcVLSDbX5E59JTw1k79t3UvhmmJxdmWIDT3INGeibIp3T45woLeA0m8vRSkT+wXGSp4lJyVlIpt7gup7pEEy/XmwknY70Z29AaA+T+nu2yWcN6QIzjp1JKv3DLdELI+a+cMOdmMZHNYRkt4qLvofsp1k6dH9vmDBcV7szuGZEVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745680794; c=relaxed/simple;
	bh=kwf01hT8f1i0sCILC/ownK1sEtRV8rkNZOpyYaWtqxw=;
	h=To:Subject:From:Message-Id:Date; b=uqTaEbV9tfWpBbsdqaO42oBb8+kRznOkW8UdoWbtWSKPp+Opc56ITw+aUxj9nfD5rNd/A3/Ti/ap426juFVuqdtvylHCEwJJQjkb3y99ZuuvN2ZdPPKCHGy5a7L7LNRYwJmBu4lF0YVNcrMAZxWdEQrDtB7i1WuDkGaIQXERI30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzXcDo22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzXcDo22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D64C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745680793;
	bh=kwf01hT8f1i0sCILC/ownK1sEtRV8rkNZOpyYaWtqxw=;
	h=To:Subject:From:Date:From;
	b=JzXcDo22Kvn97lPzuFQk3T3rcK4J70c6Fpv3QtSlHUTDiZv1ugH5Qvhit09iKY5Sq
	 5xMmVkIspzLAN4uLCPFwYtlMnHsR9Hj16wo1C0+/9+sKpj8dH3xBeCZhYayTAcjlEq
	 WSSgBYd8hIzT9t44S+g+tB2AuWLgtHstdmM5rQhtY36MbgSuOVP3cBSi6ReDsraUKy
	 no9otop1bh9QCQnC1RzozY5c3mD4lPH0Ndps4b/TqV9V6JqcZTSUxx+ijWBt/um52u
	 4C1AgiuiE69gxBOzOy0fsZp1V1Hj+QF/Pu/RU1OTW5lXDj6ylQ8+niiHgT9sOJArJ4
	 dt/NIACB3a5Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433BC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568079357.26527.18080134400058737565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c80ebbc97936a7c1fb3e9127e81ce1429a5e474a332b605f48e21421b66c95
Date: Sat, 26 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745680793
