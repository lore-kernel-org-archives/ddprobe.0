Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0886E4411
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707708497; cv=none; b=lRaCdjLMytkb8NXVJjswAjGW8MOwDp/abB5UNww4+1ss40v/Uu5osTSxCbKt/YH+FmPlZYnowM11D1A/3OQLbXsoD1oNyIZgWLes5IYg3GVd28HM7adypAwyJ0jqyXtm/7lQifeFnHo+QlssGGxqLG0OgLX2pFK0Swmk3hf5faE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707708497; c=relaxed/simple;
	bh=QaIjrDLxlp+UJLiA3zhJFsOcAEYFnU8CJX43HJDl1xw=;
	h=To:Subject:From:Message-Id:Date; b=Rjymh9d+d/hSpfMEQel6C3BqWkH18guuT+LkW5arSgqenh6l27yfojsKXpVBI/yU/n9H/5ORvB3kW15ctwH/sitXDklWZMxoMCrmZxsYatnRLLb2qGoemnmdBo+3hd+kOVpciy5CMRMrhVLMBV8K7Hr1WDVBq73mAbaOTG9Wz98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRgndxJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRgndxJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4D8C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707708496;
	bh=QaIjrDLxlp+UJLiA3zhJFsOcAEYFnU8CJX43HJDl1xw=;
	h=To:Subject:From:Date:From;
	b=QRgndxJufz+HV+iSEWwAjG0G0OC9qGyGh88wrgB5It2I6drCq911XPV8Bl+MdfVTW
	 iH7nyMaTVxz6TW6kONBNbSAC4oIMkU5KLS4Ru3D0MIOiQuze2OafrOketVG7SKsulR
	 8CDVeiOco8Oih/mwcxOXUQ4aP1fXPJdHLJPOM7VmhNKuEXJLaiPmpzAhq6uDJJdUAM
	 P5AoSpGvmrv7zcKQQjiXTMGVH4NS+HzHUbO+i1RAVZu/Zv1h0hsRCJCrv0wmT4aqh4
	 xz2yyJBqKqP7PrIS+xlF7nB0/2eM1WaEHLQzypAb89Av2TpqlJyGRlQpusUJ15j0PY
	 SCN7UmvA5ly2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656B9C4829A
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170770849638.5017.2127247877612904875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05dc4379a07de8e8ae9553e4a37c6bc65fcb38b8a00d32e764f0e165ddb4c6a1
Date: Mon, 12 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707708496
