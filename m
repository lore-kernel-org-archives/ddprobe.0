Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A34E1BD50A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719939323; cv=none; b=NrilstE/r83mSTWsIlwEuJ8dyXSfDitnwjjGxD7otHOP4BXbeVHA5HRA7R6Coy+8ypxnSF/TtwjGtdoiNrqyG5uVi5H5MYBvz4QZe9++yE1h4n4XN3xNIQmLjPehs/lRk5eeLy3ftqCFI2jy8XhUorFJLxgAObIV2MKlIER97fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719939323; c=relaxed/simple;
	bh=c0l+gzx0A9uqNY+jhA0aG3XYwulOGMIgTIsy33ISfHg=;
	h=To:Subject:From:Message-Id:Date; b=bcaEv6H2xWrvqAkoeJhifAQaW8/QrqujsOHUzDeTYKrwlXF0Er2MmFbY1A2xMIr+l/UEDgwYzVJINw5QINe845lLF0ies7sAdbNXKK/VfBdhFlE5qwPi0SELbT78fvNlQ7+9K6FTrs5JdNah7EDr6NxJxT2VpXbyOA3mRdNAMI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ohm9Xqvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ohm9Xqvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A24C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719939322;
	bh=c0l+gzx0A9uqNY+jhA0aG3XYwulOGMIgTIsy33ISfHg=;
	h=To:Subject:From:Date:From;
	b=Ohm9XqvvdeZDahVuZQHoTWHuz4nw6A6DwRaYPsPDkaSKYhqopPt63Qwso/liHPci6
	 p6q1NS7k4BL32UyK2tdYIA4R1bvgQktim+LV8UxrfaDCUWtvxHMqAdz1kvHQNNd0QA
	 fEHfwXVjit9Ebvw5+OT1HKn3x66Nms7jmTq9+P++eOVxswaxAI3pxkc+isZ02XeWTw
	 WcMgovEJgIbEswBWyjAj26ajL6GLdNCmpH7AOe7VI4eE28epdh/xUOc/Lc3L2/LlMm
	 EROLVcWDvG3qyLGDzP+ASUudTVqbN84qNCwEvrzaVbW++35vqnsq+hhOtt0INSFX1d
	 skp/N/ZLgJdBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1966C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993932278.9154.16243031204056655904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d1ce2b45a0440bd3eb1a9fc041593104f0adc093db6273036476a7fe870446
Date: Tue, 02 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719939322
