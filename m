Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E493C2CAB
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710722897; cv=none; b=D2NgeC3F/VyszUeHuQup1pbrMhrKMKyd1iscFMgAMlKbkcHbcEpfKoOFnGtfIRIcPbweMLhAL/SLUv4YL1A5FP2MXDMo1T3Gt0uwjQOoRNegCzYLbdcUENjIUyzOigKbXOzJ7HE8UW/wd373QPtim2AxNGcbG+SRq7tgM3un/3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710722897; c=relaxed/simple;
	bh=Pvy8JygguFW7o+paZClSFqDmLfQzArChniOvTjOMqcQ=;
	h=To:Subject:From:Message-Id:Date; b=HmW4SNNmjucP9VhtAMbEDZlcOjKPPPLpLKEsTFr4+pTM3MY6BScCASqDDBNEQTgJsy2jx8VaJfeInAwJDpV10Or1DQcTh0cI7rRKoFrVmcqD14S98EpFA4CDVkM3kE0RX1kYuSlds13ppmlzl9LuxvYajV4aghKP34lj1KwN1oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufPtFbxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufPtFbxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A641C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710722896;
	bh=Pvy8JygguFW7o+paZClSFqDmLfQzArChniOvTjOMqcQ=;
	h=To:Subject:From:Date:From;
	b=ufPtFbxKYod+5dmEpXvSwX0bSMEEmK6gYmWw4fP9R1FrCUazKZE+3S5uXeUfM0K0T
	 0Q0dxscrZsonsOUsCZ+qjVP/oX5SHk49zgCc7AkJH/OEgaBcYQ9zTS4A+v9ScTHnsj
	 RAJ1PQkqXz+EVobuFyk3enCIWeqawL5Hvw4pdKIWfP7/sVbU4SsDSaheXTH/7dbv/v
	 bJm1a/idGUGH/pz6gkZEQcGJ27hmXEy8RInQyUoREqxH5KNiMaQDxj8lMOGwhb8BOa
	 LnuF7dmPiDKdypoiFzX9BVOLXMiBf7Vks7nSjfA4uMy5m93Mrwp1lWSirnxYFoaS/6
	 vCjnz2H+5Ikjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677C6C54E60
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171072289639.29440.11942695538687106673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7576ad53ec4c496459b711e74fdce044be0f10306bf5135376c64a4b2a19a53b
Date: Mon, 18 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710722896
