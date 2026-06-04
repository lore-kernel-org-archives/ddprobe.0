Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF83C81B6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780551874; cv=none; b=MP8otVXEZxV591RfXw17JeZpuNiussB9+/cu1oSWvjXkMlllKfvRW0e33jZ+W6GH7oTHs2rED4mKXoMeMrr5/P1SJfbfNodSczbCUbDRyyTKi9+Yir7a9Jei/pr5IEFGDnPvbduMMCFUVQVeznzxVfhC4UuO7suswf4xzJoINQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780551874; c=relaxed/simple;
	bh=v17p8wa7lPtebcFmQYNXGd1bUlffXTEeXWB/qCU0KFc=;
	h=To:Subject:From:Message-Id:Date; b=bcFmoZFS+to5AYsolU3BznNsE8VSiOBBYRhz4eHsd49IgX8QtEs52sBGL1hJ16OJ+Uo8LW/EIcz6H8swzkI3ifordDAt8EoXAOfDVs7HDHQTySUHx1q3isfdT8TAbnFJDCuoQwfSGu9EbQUB2T+38ULO5cxsVtcfHWafHo5L690=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6vaLTAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6vaLTAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C4CC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780551873;
	bh=v17p8wa7lPtebcFmQYNXGd1bUlffXTEeXWB/qCU0KFc=;
	h=To:Subject:From:Date:From;
	b=t6vaLTAEoYJHpdOypJtq8GW7x6kuo+DFUB7KIAJa8/XpHubPbEXtflHTCxTIX935H
	 k8TThpak3s4Ph4sVsb+7WTsAIOjdk0ibyfoBwAubVXUUi6XpThr1BQZfjKjfhypGs4
	 +CMQ6D3Ezfqb4ZV4FYbvHH5AXiAv4Llq36K35KnGv7gRoCZjUToCW4iL0mk60txatI
	 BnV0alr2DtQndZ0xrlgw6oE9AyhvRRcd3Bdqffr04XfuJMvzOhYRxJjP5mRsn4nMbE
	 573CA3zBh0dk27YcC/+qZ63P6yMEher9CJMg84VurCgqdkNPBDEChqjuhIYhk48tXA
	 zxZxgihg1ricQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94CDCD6E6D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055187368.27181.5031179918710103458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476cf39fe4a6c69dbaff34759bd0a4b7fd6f1b4f5807b5741a5ad460ed8cbf6e
Date: Thu, 04 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780551873
