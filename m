Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF8144C7C
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715758943; cv=none; b=pR2epG1yyZr1yO6kzV/MyLPQA1yYZAgjQX03/8De4ygLlk9JUeK9TiZRu/VKM9+xgZgU6t82W3RZ9LIBGkYUrwWrTM7dwFyzKD/jo1Llkr8wf9/3qgb86o9DLCc1kcpGT0ajFOAMR/HaN/ozBMkT74vTM46X35ZT1LuxZhGlhDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715758943; c=relaxed/simple;
	bh=1fQwmSzejOQfZdRqZF26cYBFOkjuPLfEx4g8nqa8cwk=;
	h=To:Subject:From:Message-Id:Date; b=Nv3lwLjL2vY5glTm9z7Ru0gP3vocYkn8MZrMmfg88ShjaRU1Ym4xjdXbGUnd3r4tWhkhEp3gT5c7R5OAt4/IIqp79BPxplfcmCKnMLFy7s8MyFlEV+8AQe4yuFuRu/4xHCr9Gq6yOmu0wlXAlOlWbThvnyDpw1OQULQCivN0aDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTgJrbp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTgJrbp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D354DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715758942;
	bh=1fQwmSzejOQfZdRqZF26cYBFOkjuPLfEx4g8nqa8cwk=;
	h=To:Subject:From:Date:From;
	b=NTgJrbp3QDYIrD9zAAOj2NgtTLhjzvSA7gPgiUUuR896pdI7AmgFeTxuNjAhXlh06
	 HQ2oCUd2fYI49dbA0fyWSz/K4gZshSD6ER6AKYYURr1454fN8XrkSMAi2CZOBdwbxL
	 V46zEFOtcJZPa1+YzNMAVTnN0c2jGQRMvEse5CN+wetOArlw90N62lSeZc1GoSKKe9
	 MLkhGAZDC3e0d12Z/u/fTrIfpoviWUS3i+zWMtZOSZ+oLxiHXJbqRty4f+ivoGHRrg
	 fr9QXAGdjlg5XMNUYPiB2Hd5zaJLyXHSU2iPxHP/Ua8LvXsV2IVa0wamlESABpfPZm
	 A4FDDT+pG2Zxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ABBC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575894279.6671.12354108476728763420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e480965f585732ec1f9702455568407e14fd1ddd6b192bcbddabe98dc29fc44
Date: Wed, 15 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715758942
