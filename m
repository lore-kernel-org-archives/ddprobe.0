Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0B1A23A6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786678834; cv=none; b=mkLZCK5YGc5kQSsSqAGmUHbDosMp8g/vi8lqshWhMPMebgM8DB/YuiX4JpSMfznu8da2Nk2+Rw5/hT8jm/oAvOeJiLsCU0AD+2Zro/zZQxxvr6Bfcu34in1p45jZkU5dRo6XgL4FPmamXWfR7k+PyIZ0LgmTclwueJH6Sm6u1N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786678834; c=relaxed/simple;
	bh=ngElMgywEk6ZGleKnpbAkEUSi4gaO4q5EiS3EKRgjEk=;
	h=To:Subject:From:Message-Id:Date; b=uDb9zwFcHwowIltp+ueCzh69qWQMoyVf3oUy+Kl86w+vZQWH97/S0BBeaJjb7YQk6IdkJp2ZTOlZLeYiNRAoS9JWdb3Q5a9fGNHd03ZI1Wez8UAiP5jQVwbi77M5+Wp1Yl/niiL8wt8KV8YthBGYJPlhyRv83LRmrHOj4D3rxEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K653pVrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K653pVrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEDFC19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786678833;
	bh=ngElMgywEk6ZGleKnpbAkEUSi4gaO4q5EiS3EKRgjEk=;
	h=To:Subject:From:Date:From;
	b=K653pVrO6UIK2/RUumCZegvnu16ayZ0LmN/fjtQqw5gSLJdFNqL8n+Bk4HzEMyzap
	 lgGUK7hzUO/UkhOZmIs7r49K1b/Vlp21co3cb9VnNd+ZTETmJsabe8CD70CZhvGmJ/
	 7uM74x8uAoxgl23hS+1BE8QT5CNkvPdiCqYoZ2d2JE9Lkx4FtQWJ/jaUsKnBsLro9L
	 ydHt9DKw3l5OwygYOavWjInOJKP8ngFJONEwLi/26IJ1lE9BqAJWDyiJcx4BG3gBt/
	 N5O2m/FMmjyjzdDprArUAABO7sRNduItjrrL/eOxt0CnwIJBwuZi3Uv17JS00HGqPO
	 byOCruQ5HLV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A942CC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667883368.2957.3183136964254458904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b44633621a87015a7375a5e2b9bd08948de7836246547f32de1af0536a539c7
Date: Fri, 14 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786678833
