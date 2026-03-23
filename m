Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206FF3CAE7B
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774289694; cv=none; b=IczTbdn8gNJrq5D484W5MFjk/XJ58MRXLJ7Mf/xNfDifWXIFCOYwTiS2hEnhaVrJRlqoKHFq2q8CIYtd4UGKFiPr0Lm4LKRfyK1Asmat9PoSx5wSZhV2y3ypVtsqz97udJboCYohE6+sm19hl+w3/VuKwzW6OxpxRKLYO2Fuw58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774289694; c=relaxed/simple;
	bh=X0NAIb4Rauy2GPC2PBBh+b0iclb4dratx1t8QbkVTiE=;
	h=To:Subject:From:Message-Id:Date; b=D4U2a2qHJ8rp4/ZaBn4PTDPnJkai0u2/LKAWEWn8ocQTJLWi+xe+09p2Imm0r2a+sMdm2sdZqDNfiiievghAOLafikW8tbZgTFsXwFFwghErACJEcdsOtdE2aqVGO1pQ0WXleTjukQDqtiVVAak8K7z0mdHgU7uNsWpiAgWc7Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dK9lWwt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dK9lWwt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F66C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774289693;
	bh=X0NAIb4Rauy2GPC2PBBh+b0iclb4dratx1t8QbkVTiE=;
	h=To:Subject:From:Date:From;
	b=dK9lWwt+dWWoo1EHCxWvs5Y8kt9dNNwzA8cp4m45N31+K5ZhU4wJ+HPUIAf65Pgz2
	 YtFMM2LBpXhDPI25IfR7ixxbr2c9DRH0BFGZtQ0E3hVjIoky64D9AQWFmQ9pzaNjN+
	 pOqjaHRsgRES8nDhLcjYUXTt8uJuBP029Fn1R+ewM4Kg/UtK3Er8BA78DDPBrTaisA
	 S0pYcG2rbM+r7GmuDwngusKRa7vhz8+jZhs6YA1OZ/Px3Y54HKr4Fgu9CMWjt8mGAt
	 fQSddhzXheu0xvJTVO296L589ZqsfuVT4Xd5d5GfIvzhGnYfohJGW8prohoFjNe2z6
	 3auMovJGHGxNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9775DF483E1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428969358.1196.6559764982000807231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7ec4addd5cacaafd2431cea244952b146f3f995db57840b165899d95cd8f9f
Date: Mon, 23 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774289693
