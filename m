Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CF81E888
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711976297; cv=none; b=EM9hMtEzYE5WFH37aHoMnmEGnHlP3hW0h+X0XKj+bBtJm6pRP8mqnX2XUZyPncXwedKn0raeB0HYgxOALXzi073VihCNYwObFBMIICAfPLx15ijw2MRoVs1ZLGmR524xv244WmpFFbkoOwxAYyY71XNef4a2qMnA33d0WA19B1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711976297; c=relaxed/simple;
	bh=VE0If29I2CENV9fVqkqo3O84fbh20vzJcwWn8o4G7/M=;
	h=To:Subject:From:Message-Id:Date; b=pD03uT/ZB1UEwHSmIcUyD7r5uj47cPiO+OnAuGu74+YP2uqpRute7XrXkGBDO6cjA6lB4RO0PJimH5SCiTIxnkac3OtKaN/fAlVsMKjZnJqJUF5VRr0F22Qms2pulavmbxOyyPyp+NA7BxX461aEf3HjeEqvuKipM4BxtjzjQgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHYjuI9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHYjuI9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AC9C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711976296;
	bh=VE0If29I2CENV9fVqkqo3O84fbh20vzJcwWn8o4G7/M=;
	h=To:Subject:From:Date:From;
	b=OHYjuI9zRfmc54CeefSS2NT45QwyiQQXiRccguWSbCffDPUW3/le1KESopfYAcvwB
	 NHLEDjuixFrwu4phqGC/SQwSGg0+Rhvw/hwMGJMGJ1M7LfNP1EjamkeHniBY5PyIC7
	 TEvVFc7kOsKp0hEjx65SUv1NsBNJkqhqLMdjepws68dK//k7zgHdWx+ipyM9LNezZ+
	 OcHL/YfiCFgC7MBegZrGO773ESmUXPNRF73K8WwlDyKwDImJnFE+fjo/GL3pTRXAs3
	 hLOIfiIgc75eII88/Bpx8J3jKuUbqnYqa8/f+hPp2EZpzntmirdR4C5xNlvM52M/Jl
	 IQrV1MT3gvDFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72294CD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171197629642.30446.15104001400417997035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29546184b9f20817006b34b968fb37876d8a1da945c33897dbbecf55bc7a3ee9
Date: Mon, 01 Apr 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711976296
