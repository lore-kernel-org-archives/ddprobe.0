Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489AA17557
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719278603; cv=none; b=hCw/ICNtN3vXrmI7fnnujAEeSZOqmlAyjOewkNzl4XZ2fJI5H4p3shegIwiLZIlb9ZgUkSylfoRhEiV6Xc2icItHHjwc4pwOxnV8EG0hm8HMR9NDxGr2CTdcykUAiJfdKq+CW2HftGzVvL+6jLtefA9SASApCUtWGjH9flwq8w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719278603; c=relaxed/simple;
	bh=Gt6YwpfBshhTJfkwMPsacg6I2rD6EZ2nbYDMlb72lXo=;
	h=To:Subject:From:Message-Id:Date; b=q3bR4KFaa2gypkxt0marZRRGVnxrLebDESRcYOOQSFY8BnDXF1hjlCU3e5lEYAcRFKwhaWWVXftD0cp/M1XI8a1hoXcEg6vWy+0tPedFN+RNj5ohoSYtuuIhXIBQwv+N6D2qFCBOsUY/z1i8Q2hzlv4LiBkatdkwDZE3FKu1ZAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLlEtgd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLlEtgd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5337C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719278602;
	bh=Gt6YwpfBshhTJfkwMPsacg6I2rD6EZ2nbYDMlb72lXo=;
	h=To:Subject:From:Date:From;
	b=vLlEtgd7kLGXQlnLN+yPaShiGJIAxvGbQUbuflvA4TI6YXF+rZoaG3n5svPIDTQvL
	 QCQBAr0yBj2o9gBislfYXUwT2ZbwbKfObL91dNdkAkWlCeNdy4/I3MgpdMTuPgH4/3
	 es36LAsnwZv6g6jezFCP6yY2i4ATOPkwKn55pZsYUiyONz9tCrt9Fl2XQlySGl6LWN
	 oItMdFk7vacZ5KRTKNg8d0OOp/+BaCmzG4QxbZJc3x/35baQ4Z6f//Pl5KAkjF7ap4
	 SKAg6gIZEpDydmYCTOGkRCRlaBGuE4hOvyCirQjBWgIt7kjVcbe+/Pujm9jN4kKwqp
	 M0FXmIMez8jqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9DCC2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927860276.16179.12087381484262573421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfdacb99f7f6266b9f08ae48b5ef4bf5ffc2f4532bd9634ec5d2ce4c050b049
Date: Tue, 25 Jun 2024 01:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719278602
