Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104552E84E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705615097; cv=none; b=mS1wkAcbnV3ZMN1M1H5IlkorD1RlJA/PGjOPNLBT3y+EIwD+Ucf8GuKFrag5R7zTTsyDwylSfeEn3QQzhAQzeXCLEomzUcCAsv2kETBagOIGZcJN1hHS/+tewfdzks+ORQ46u36qLhjyu1E/TV9V0bS/rQ+nvGC0+sV70mTc3So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705615097; c=relaxed/simple;
	bh=RRoNZTwXGwhOgRXLghHWIr/yGYK5uFBnkPgtlDTZU1M=;
	h=To:Subject:From:Message-Id:Date; b=CRoRdqPGjUopB8X+oUbrVro92xjG+0qMnE6PftlfJyIdy0fPoMbOJwhoMZRDThMoYE1tmZwEAIK6D1ssFfYidppbVhRzEfL/obhiseI5lnD5mvt7ka5FRLZrsisKjlPPLHo3PVJLbs9Xdk4MBbpbnIXvkRuVYuPfgedMwnHtghI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNfGI6lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNfGI6lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A192C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705615096;
	bh=RRoNZTwXGwhOgRXLghHWIr/yGYK5uFBnkPgtlDTZU1M=;
	h=To:Subject:From:Date:From;
	b=hNfGI6lcnskRYYokQYIuWXlysAb/0ArYE5NzMqBKpZzw+UG2BghFF9Fadory9Kogc
	 zCTwO2FXy+KFV0KN8u2bynHeYE68zoE2HyOve8RWLEar31bXOwDSWj22MF4XbiJNOj
	 qwSizeByW2v3+7o5xLPWbXOgPhG5Map2ow/YnzgmyahkvpYkkxbTCtHPSlh0776uBZ
	 +CcCweTu04q79ET8JtnncrAODQKdxbPGzRQteNqEVhNnszB50mX/B8yxLMbmcQCjfk
	 dpVUBaT06EALzSe/tD4PSmUk6Vwa9gRMivNjo+Hi7VpZL9HMkmiKIwqx8bHTEgQsXC
	 eZgsvYaG020Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE16C47422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170561509638.17637.1255694931755953170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1300719a1389e183a3112e819b1bc4102f094b4ecc80b65a47d68d5f04254244
Date: Thu, 18 Jan 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705615096
