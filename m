Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4029537BE9B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770047034; cv=none; b=EQSJ9W7V/HfcgRp2iLZSA2HiTYiaw9lidPAgVpVd5uUNfWXp/s6Jhjgly28GVI5r/fCPoGAr/ZMP9vszfu1SSS0ZbegHf1QdAew1U9HrTKmXd32xBUQfsWl9WWT8qw0ctaq+oCwq8SrRUdDpUKdy47Vghq0Qw6vAS/BVyvSjIz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770047034; c=relaxed/simple;
	bh=dl2D8KO9sn3nQAqhscJcG3mnQNPuKh99YDS9jkIIl6Y=;
	h=To:Subject:From:Message-Id:Date; b=E2zrlNgspOMEVZnEnUpz63U7Wxlhi4CahxU+Z6QjFXvJazTJofDM0Q+9KpB/FHpNGkYahXVzWToatka0iu7v69UjucagKv8GJflMyD7JK55Z/vzYAxAc1bPWlgFfCpfh3XIcG8L30TsU3aQCilSBvUs6qmU6B2zMAAbw63GSTJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjooT33L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjooT33L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD59DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770047033;
	bh=dl2D8KO9sn3nQAqhscJcG3mnQNPuKh99YDS9jkIIl6Y=;
	h=To:Subject:From:Date:From;
	b=OjooT33LsROClVxh4oU0Ztd4kmPHqlf/Zc9Kc5SXO2BrPKnV0EfZsxd8DHrX89zIR
	 ZJs99ZuZ6ItwklqbQA/rFiKDf1HgsYlQkjX3WYgN8jSPllfCgUNPBf3/KD/wItKlX/
	 Ka0y6//w3/njJwJ5TfmG7/SrveWU1sCa04i8PgqQjgZKfAcE13AdaOdch/4s/23KZD
	 hdjwX7IZOWnVSxrIuSFBcPZ+NK72Adb+XXkiOWmX3JFuw1f0bApheaegqCursvTLO5
	 g2UlzUdDaOQegViwoY90yvL/iFNUSHLuqX2Bk++K23CsdyWbEYIaBv2/eNGMdphcVn
	 Ys9uOX2W5KwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E3E7DEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004703361.32474.2131184872557105703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d2fc68439430788c3a9d914803b183723c0dbca30bcc415ae5004b9529ce0d1
Date: Mon, 02 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770047033
