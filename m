Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29D57E76F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723043753; cv=none; b=Fn5i4RQTpZQgZYifFNwZK7Yu7ahvYXzvpeM/8052e5HJW6Xg7lW7zT1tQG+EPYzZZlSUl5MQl7Mq18/IxraMKgAUmvH83Scykvkk7sfpo1i/sN85RTysJY/1QuWgxlAxuH9GiyPLVmSgcHvMnKUN2BUk8LyBxN+5oK5gSBv87XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723043753; c=relaxed/simple;
	bh=nQs68BfduVOjBJ2h3ybMn3qqUj95u3yi9kvd3QNttr4=;
	h=To:Subject:From:Message-Id:Date; b=m9piqO/C98NQCnYst2otURMuYNzpcYIM+/h11AJSW22sVpHVF+VMcyOLfW4MSACVkct87Jn4ChiVhgqyRWfrwahHzvEFldsI4k4g/dXKkK1Emezjl/8iYZv3MDa+nPf+e1BAJxpjxJqBWKNeerkDiEE6V+PD9wI+3Vn8FpCTtjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/IWgKTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/IWgKTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B6FC4AF0D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723043753;
	bh=nQs68BfduVOjBJ2h3ybMn3qqUj95u3yi9kvd3QNttr4=;
	h=To:Subject:From:Date:From;
	b=H/IWgKTn6tPcvmR6TTvq+rd1Cy/xZEoxIJjzYnNdsWC0p8toAmhpT0qKkNaN59X0n
	 kkAhnvNAB2cih3vzvO9XL+Vjep0xFA6gQA5jqJP7luJi5je1uRWkbCTbQDoAr6GaP+
	 o8/1StJ6lWmhtJaJgv9rBWr11PSf9ua6cy9YmNldAH4wEGOwVLJILBcKLsB517bLon
	 4CcBoeundUjhHMYHbhM5TmUSRSL+JZGuK1hQA0vY10l0pjzD77jTfC/H1Nu03nJ89T
	 HccE2br8xOgq51HYP+8BSeeVOGleaBh/HAhrgIURGEPChfEe2w1CbEHtUg2EG08ajh
	 gibXTHq2jKwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9EC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304375360.27779.16735931063673639461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b816938da1d3bb899cc93cae75f2b0ef37a5f676daebe1e3826270bb10708ba
Date: Wed, 07 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723043753
