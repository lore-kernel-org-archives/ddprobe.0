Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C6E3E9F8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776180454; cv=none; b=TyqEi1Inn04JtYz29RBG3lqwCEvBDwygLQwnSKu0VrtmcU5UOsxUcFv/T5DcSMcu5bL0R5VdO09wbg8c1KsRGl2ugKvf6wyrUZztsR3/VhTrnb45gybKl8zbKjkhY1CZ+mEtUNrzE1kz/NeH8Qr52i1pE7k0GfRkWhXWS0ZJlww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776180454; c=relaxed/simple;
	bh=UF4eBarUZyKUoOE8K01ypVYr+v2K9v0trbeYUywWBKk=;
	h=To:Subject:From:Message-Id:Date; b=H/gBA0fpM9b7/c6YLw0D1i8pxauCEilfWAN+KC9Bts0ayt3gdkU2+6p1NmI21Az+KkeGTuppcOK1BRT7OlcsUVf5OcC2b1P4GgJwBM/5j44Kqokh8uNIoM2biN23HXU9+JaiWJSrz4f7pgOOPfQc6dz9wA+MQcAA3RBdicnS3ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrYt/IM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrYt/IM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8109C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776180453;
	bh=UF4eBarUZyKUoOE8K01ypVYr+v2K9v0trbeYUywWBKk=;
	h=To:Subject:From:Date:From;
	b=FrYt/IM6H/cAJ7UnGRXORKn7Bg8CeB44ovzAYCrW0nMFfYNqMbh6EWoLsZ75W1NB6
	 RHFpJAlDHzr1rabm0bMVAjj4MaTyAA7buuULKW7CrL6is8jiFQG1cHNh96bb/sGz5w
	 8pZ+/8o4+86hi0T0MPl7TklLVeL0l39tf09guD3ixF3H4hAgXsoiAmAbKDuxWsVEox
	 1zgyH2O1avp/+87fH96o+R8VMx6ni9DL/gsG2tILU5depZOMoJJy3kPHsH68e0XFcd
	 UuaCDW3qB8Hj544zRHD0K4ii1jeTpIpvLiLqMXL87hSsLMbjvGssxxUTtgvJx7hU9S
	 98DFQKTzouM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A978DF9D0D6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618045368.23348.4410996927972910404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89635bb2633c006334ba8fb3eacb71a0e002dfb1c882c2c281acab26491e1f6
Date: Tue, 14 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776180453
