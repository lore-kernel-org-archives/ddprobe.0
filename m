Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720D6E556
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715488343; cv=none; b=Mix3abkp/NB/Ry4uidAWQ9aabM4YKIaTiYUBkKAJgPqsvUuLNbLDJZ5cSzXLJj8pXh/cnRaXJ+ToF0/S7cTtEtiByDFOAfU4hiiSxGxauINmPw34bsulP1zqt00YvRpIFn7ROHECu1ht0vB1tOVyxIo8hQgKFXFRNf1gTu7F1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715488343; c=relaxed/simple;
	bh=SiH5hYYrYbgU0JiMQaTUeOtYLbVKXnOlLz2ehvk0cnU=;
	h=To:Subject:From:Message-Id:Date; b=iptdSbAxcQ1OBosViSNfILYUjCrniY+cXi6EtexaUvxrN9J5S9V98RmEF3JLKfjGPLcUC7+7mHSvMvpZQ36q//gLRPIAiYRvBJGck2A0+VCZ70HP9nn2FcfZq9lRW53RxFHu2JN1A9mbFCllvI9Q1bYtj8GF1gusUPuGQTp9Ze8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRuL61Z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRuL61Z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC21C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715488342;
	bh=SiH5hYYrYbgU0JiMQaTUeOtYLbVKXnOlLz2ehvk0cnU=;
	h=To:Subject:From:Date:From;
	b=MRuL61Z7UoBwWTxJcxe2WQCV4LS1Fwm3RslOq94gLW5I/lW+KlWlPUwJolQm2gpL/
	 n22V8J7UXis6nIx+7Am1Td5h8HpBpi6RsSveCdTTj5rTOatMPGqJWPt1HfW3VopYbX
	 574DaM0LhotdsHdYXw7vP4usgQ95MbXmPr/6cFQql5Ozf9fUFndw9IcKx6jWgpPwbm
	 sQR1TwovP4VJ9WwZTRPMImCeiJFND2xBJ8g9Xk5B2fA1K64A4NOmwXQjcnDfDuapRI
	 G8+YOLID4jw+STCNXmIxYvhQ1qzhIdDpcT4VkyHv5QIVlhQ/vcK+1C4puASSsD9f2p
	 XykNlqTt4yeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8801C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171548834278.21228.8645198025584734948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8000176daa7c258d07f1c7f6991c39e8181749fd4e8c454af8044322f384ba4a
Date: Sun, 12 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715488342
