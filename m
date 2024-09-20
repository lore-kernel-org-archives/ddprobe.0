Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348F2178396
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726842954; cv=none; b=GyG+AU1ZM2OHBXBnskd8bblpdMOJqmb3Yb7hwVWFPCK7SYSp8MnUeauizU5aMPM+3q343pX2OIJqQ5xkmFkbemncEZXa40ssyUtcNHlPy35dK4/ndRVE41ppgy4zYO/isXEJhn+qjHyrCjFYv0ZUcv/QU9f+ptyLIyAJSK+4obk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726842954; c=relaxed/simple;
	bh=eJW0MkQjT6XmA0yayB+qFjN3zoM8EyXnO9dgGqdbz0E=;
	h=To:Subject:From:Message-Id:Date; b=donRIonJD7eM92DeTfPXHTUeEzMRGqjacUYcAzeFTlsj22u6F6APj+3BG3Di8ayIUn9ZXm5qhLSmFqnEECD0KtEtO4qS1dKQNeiRzCzQYFDKwUdNlZb3IoZGy5vGm/M7iHlAR3j+AtwtwprKoYDOz4h+b+8DFGd1V5MR35zIJ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjp3r1Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjp3r1Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726842953;
	bh=eJW0MkQjT6XmA0yayB+qFjN3zoM8EyXnO9dgGqdbz0E=;
	h=To:Subject:From:Date:From;
	b=sjp3r1VyVyn7w+neJRbjBK/MqNpIPMC96uY2TSFNDCkvclaeVKRUqkBp8DvLIOpg+
	 43EckBAF1/JHTbspoydeM3ku8nmSiOWH8RdnaNERea7wYSraWjC1yTV+/qbxHXMqE1
	 EV0BJG1WfNoC2r2mu+jVlcDlCQkeT1TDPB9zjj5wUoVlEI70NpCZkiY88jVpjtl1Dr
	 5NnLbsJl8Y6c+dQtkGDCLfX+O1x/UrxLYSwbgrJcpSHSEBfLH3eKO0UU4/TEEGwFac
	 8FtUQHNmcYtp4+0SmIeZYCB8CV8+brihkmO3nmrVdxaSmea8IqyqZKuBKAYHnkKhW0
	 zs/9Ejx4hhqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E9C78854
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684295357.23068.15600982520310068212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949d6635a3d30425c9125382774f2a0fa93401515339408bec2efebece01db95
Date: Fri, 20 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726842953
