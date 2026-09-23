Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA2D283FDC
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790205634; cv=none; b=b7bFaoGsAbBA6gnHyxo92+TvxVwpS7myDwn7CD4tCpxz82gXrqVCdk6PGNQskf4QJNzHi2jzVJCs9VVt2xDO0l9R8Cmgak1+DhWUVwwhkoRDBLtwMd8qyyfb7tJRpmm6iI5Vwg3zpC5IWmFCqBPKGTDmsLxs1FpJjZFids2gJ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790205634; c=relaxed/simple;
	bh=pahjIhi4Je6LXyy6O43ibQFV7BB8vrOI2N2sroFuEgE=;
	h=To:Subject:From:Message-Id:Date; b=H68nCkpXsSOo83NZ+XVin89ejOGfeUCJGdQRmnStwbCgD6jGfk5UuEoS3nJepqKrzB4FtwQaEE6yASI7mGJ3GFd2Zh808RmXuIGANytZYaDHlSKyAtdiBuLMHEK4zYGOiqsnPu3UnoeEMWb8IUWqgw2hb/2ea1PNfkZstR/ZeEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF81yzVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF81yzVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BC9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790205633;
	bh=pahjIhi4Je6LXyy6O43ibQFV7BB8vrOI2N2sroFuEgE=;
	h=To:Subject:From:Date:From;
	b=iF81yzVjv8KFq4QoELZtu8nHOc/EzO1vPDv+jSBaNb7DkhQ7KN43bJzxRd0zmCF9M
	 HhKn8F5V5BdP2Y8kXhc6t7pBC2yH2ZjU7Y7ur071ywx44e/M5XJBMOU0F+8dNbInm6
	 Tg/IefWMwZ6p0Duk1iFfIgvSWg/H67YAMJcUrkPidSTSpOldwcDENVd/7J3pVj8csG
	 2FAQvQ6jP0j4HDsPcGa+/a0FS2Qm2BQAoVERWDdr3yLU4TQFlJXkLTPixJ/gKqsdo3
	 VnmhgoG7HRJthWXI8L21jzOMpIBB4CxprcVB5EeTMS978POzZx6t1ivON1LKh65nBj
	 zB9oHUxkTQsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF399C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020563370.13721.2213978673692385524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9af7d5bc9740872872e83322d0f5be98bc8580226822f1c192bf0aeda481cd
Date: Wed, 23 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790205633
