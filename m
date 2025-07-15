Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8526E71A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752563994; cv=none; b=POfB0JYeer/oiPicAiceynFCKdn3UGmPrQebu21ftx/pxCcDK40if/cb+HehppsC6REH95GtrSRgl57T2g0Z5I9AFhkRCWfB3esMIpRpZarEWyScc2ZwlNQbnyt5h7l1heBmHcsbXP3BYynaEiZZorGDb7l8e7m0IKZXWRxB57c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752563994; c=relaxed/simple;
	bh=UQc2j7SLvZpYZDCOZD5DtvL5a+ql7dK4ocRysm2gjeY=;
	h=To:Subject:From:Message-Id:Date; b=iQiHVH8jBnHdTfoyA8ACv83hgo0IBMrfbcRaid7SULAg38jsIihFVWjG8DoTHac1LIhyuKqUGG139GIIQ75ZpdrTBGD9bunsM0s2CIcjrXmz9km+BIsHETHdO8l/5fk8wJPKHLTgj+GaKQqIJvF8Vjb9FuD4cDbVuIrRYY5OAWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ny+rQZgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ny+rQZgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE670C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752563994;
	bh=UQc2j7SLvZpYZDCOZD5DtvL5a+ql7dK4ocRysm2gjeY=;
	h=To:Subject:From:Date:From;
	b=Ny+rQZgknbaN87xFUz5scUP//EDdvgvLeLZJGouaT1Ck50wXMWFaf/ZkEjO43Fq+e
	 ySbj1YWZAGD4ZwHHcKX72E4AO9nyd8dhQAvGRaZXjMhcPCk1UcVA863Nxs/l6W5Qmp
	 7b00Z9beDjdMEsWO5zo8IiWN1pQhn+C+AYJCea1mxIKGQD9NseEOnzlhso0ftQ98Oh
	 kC3xJp0JACU6gaf7tmDAU8Ri44l2SrrM3hLMU+50XnoPfQtV2DM+LH/gbQ6eW7S4Wg
	 4owznxxZTSvvD3tiC5VOIYRGzRQ9E6JCMO6qvDVqm1RUxi43XyIFKK+Yckkfo0IxL3
	 c+g5f2CxvbPUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE33C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256399357.13559.14412143947480279981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea97a7d22e3eaeb4268a1b32820cf8a8f11de12103ccc4b6c7b25b0116e2b8d9
Date: Tue, 15 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752563993
