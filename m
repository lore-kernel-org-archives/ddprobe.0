Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2678C72614
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758087594; cv=none; b=eWIdQE+LK8nQnIs1KPpNQaWt1zYo7f7jzPlFytP+d7kvJ7RF9IMbbeS2KxWoEJxX90nwu9KmP0f2DCNmiFCLDwy4vbkN55/eg5Pl3jukgMmaNJ4FEDOzdnAjAUARDDYl/t6oHeaHG1XstSt2iJGtdO2cNww1SWBJ9ec8EmyI6AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758087594; c=relaxed/simple;
	bh=+Q57hxASH49CxUu2Hn62QVfCgSKEQUO1r91uN/1tnug=;
	h=To:Subject:From:Message-Id:Date; b=kWQ31xjzVegC97wwgNNOnaFzo9SihF9mEjz8YxYZ5+j+spT5t/XNqpwi6+AT63ODLMVaCgI3Lp+6GkS5PgLPwQgRlkh3rllriiZ7pQRV2cWPOL30Xi4EqYVFZ5nQ2a5zc9qgYMLq5SywW8N0xaUbB/M8MDSziFDgMrZMd4yVI68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbbVeZvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbbVeZvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56AFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758087593;
	bh=+Q57hxASH49CxUu2Hn62QVfCgSKEQUO1r91uN/1tnug=;
	h=To:Subject:From:Date:From;
	b=lbbVeZvfZk4L67xtXUzOaCxY3JvAC2wqFV53yhXiCQr/ZLG6FAAqGFlQfnlqDuaC2
	 axJw4U9Cy+A0BWZPURrGJevUc3BUuM+rV3Zs/IGurhFQSLmZk9bSE84HYFiVASok05
	 g7ClUavX2k8grPGr5pQrkcPRjvwe9Nhw8Rfe4YVjx7N0zdqqysuAu2Hu3siZtK3eZN
	 2zCE2/zTeVvSEegWs07E5c8EQkxMQ1QRZI8nn/yMs1lGPXWyK9LPAnhSz4JQJNuqu1
	 xNmabvSRHKYanLycmElAjCt7iJhPd/iYK1qrhelXM4tbp1wbyJdoTOMdqPZ2h3ra9s
	 K6NYxX2La8kyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B0CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808759357.15548.16795908611928200825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd91c2c20b1a80b8be2fec3a0a846252bee018bc84e607b71c5f10382fc0ab37
Date: Wed, 17 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758087593
