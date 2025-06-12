Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448A24120B
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749690594; cv=none; b=rwDKuiXT2rmJKnutHfgO8AExH6GhVVl7w3B+wPNCc0YsbYzvGpKwmzNHfCYGk+W/7iDHxDvgRyEabsfgqmt3tm2QY0TcRuI21afG64KLnrcvgY5NoCy55VczCvP7JEvcy8xFYNvKVq1TusPmqRzCvGw+8hb8JWpfynRiTMV+ERU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749690594; c=relaxed/simple;
	bh=BN/3UelkWDnhpnWseHvfCRzl1WY+47tQrt3IsJYifuA=;
	h=To:Subject:From:Message-Id:Date; b=AHgN9Zd32QJkWOXGmSkiNigs8OLvp0b0e4j5KTefw/WIRRB93Gxb2xBCan1NSvh9hZe5ZI0oLeVpEWair/uRUCuTPLT+A5/8w6hikTUGouzZQSapWXRP9Z6fOAg7w99ZbgRJlCYZ06jt/SGAh7Nt3biW/vVXTtMPA4cFF/Cm6xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCBoxGou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCBoxGou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB76EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749690593;
	bh=BN/3UelkWDnhpnWseHvfCRzl1WY+47tQrt3IsJYifuA=;
	h=To:Subject:From:Date:From;
	b=TCBoxGoua+Sdjlr8PzLUKeSJbXTecqB2o1xxtVxhRKS/dUbyfIbGSdv8cE+p1BkNE
	 nBUDth5XDGJPFjG6RqvuuWL/2PpANyAzB3Gt6SiKT2xmf14Ewqq3K16D0HOt085wGa
	 +kbj4gQTG4wGUMkJDnYuzDzTNLTn5CNlhVcrkqfy1VwX7fHhM/5M+oYE1+ROqfCRPW
	 AeGIMz95SKqvov69OJRB8Nv9A+XwY1DexcqD6ECF42Lqx8gEem9GziXpr37Gak8VYr
	 T2qzYgdy6THS2X0k1sVX/0A5mTBb8HDt6/6ffQRew5AQi8ycf6AIsffde2Rh5YjZE0
	 tjP40SmxtKYFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F90C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969059357.28712.7175831738392806805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed318f40218ecb8a9e873267008482f2104fc0fceb2d8bb9c861e31d498daf4
Date: Thu, 12 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749690593
