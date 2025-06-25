Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AFE25E834
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750856394; cv=none; b=iLlyEW+CceSr6CpKj9GSsJ1uUaO5UqJGW4XAN89SkQDul6z7dIgNgwC8qWoNFBdXHkRwkTndIK6vw3bDAVMEKyAoxIeCqumFmi3NLLa3JbFOnK3dllbp2RJNQPH6rE1fTuGf/SlywHft5EbSTHhgREyuuOqYONPaSw04Y6SqlVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750856394; c=relaxed/simple;
	bh=Tmm9tHFfeyKGkW0fQSgfEnrcMI70B7FfW7EGnWUNUqI=;
	h=To:Subject:From:Message-Id:Date; b=FynLiiojIOpxnUJShpGbuCmnUA1mf6P54zmXZpWQHVSjtE0k4wNk0FCfo+cN1m316J+BqqnmTakLoPngbOsN/EOLk7cdh2mu52v9/yV/L4xPXXUyIeYBN0yEu1rQVazZlDJeqrJy0A/0dUfUuURLgpP9x3+VK7BduKkb2c3moMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN/jTTJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN/jTTJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F076C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750856393;
	bh=Tmm9tHFfeyKGkW0fQSgfEnrcMI70B7FfW7EGnWUNUqI=;
	h=To:Subject:From:Date:From;
	b=MN/jTTJrrYJXS6FBjo6ScjSvBlgZmYGPn6XGpsU509XBOSMh7ie1msfauRxF2lGPc
	 DcKmLHom/jwrKnJPKdvnaJOCdDew43FP2bIiH7sZRO6ur9pXr3WZNVK+PWxO9GWIcb
	 26R5JVBbEnIrW4NnF32lxLB32G2MCJDLgegaewmuJI2O/Sd9/ciOpIS2H3T4+N6GlH
	 cJUtDzR/i1+lCjI42Odz/EaoYlZdfBe0Xrzkk/QoRqcsXuGc/vGmFbTbtunnoyariP
	 TRv5AY2OZiX+WGGFxac8cLQRSeyRzj/PtyqMCcvp2ULiEzFSW93em30Oe0mffHfy3u
	 cgRPnv3WLqnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42CC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085639357.2567.15465893347546200268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100570a35488f3d444d21f07ec27f455d21b32e47c7296f366fd700d02557dcf
Date: Wed, 25 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750856393
