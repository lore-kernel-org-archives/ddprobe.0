Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FA037C934
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779478954; cv=none; b=qJ+O4pdKk0pqte2BLUHfE6j3Y9CJkATe+s9F0vO2M1ofatkA19v4qQxqi/sSECPkZuj1bOz0P6ckHVrYPL8VMOydvij2ArYZ41m07Ro2jI7mJ+pHilxG1W709e6P6PMBWEQfd41QSl9nUqpN0Amhdl7C84Rc6+Bt+BQEVYp1A7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779478954; c=relaxed/simple;
	bh=DhCLu9nSHKEoNS5rS/g6bzBIvH4Ix19/yP3fwMn1t2s=;
	h=To:Subject:From:Message-Id:Date; b=BSSYwCJcZSTeSMgm5CTRehQvjQnApAUMngAa17iF99l6OSSb1f6AUxxxea53Y5fLmZYnLwlnBVLJDxhK94KpxwBTQs7Qp1lPn95ToyRGB7hPSSLbr0N80CVKwjtH4JvmbcVI2SSD9EirLXiUU+0jswVaLZUx7zIjWpI3cETCFUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBqs6cxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBqs6cxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45F1C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779478953;
	bh=DhCLu9nSHKEoNS5rS/g6bzBIvH4Ix19/yP3fwMn1t2s=;
	h=To:Subject:From:Date:From;
	b=PBqs6cxHGIk8Pzq1QDsw3nuzchp/TMn7ibnnUzJczDlYC0HZ8BI+Ui9oBQKvgI+fW
	 lGaUahY4RVNOGFNmJ+lMAe2s73ZComSeDpP6Eyg6pCfXqLRlrFiS3wevN6nJmy6Rov
	 QgGndHGZkq4xp5M8TwC87xPKFLxww/eaYjGYbV9VqkrAIFGjD2eqBoFyBv0hs1pCxh
	 QgofZ0DGZr9Pjj1kOsLiIYSncor2291G12FIcWfzDvaP5cObOqqTYIboSeyva6pGUD
	 xSjosM8CXmYq84i+7QFct+q/jQrxONVdvMNgur1ymVtte40qxiTT0V0lEcpC2A6hqO
	 Dovx4GfTuchNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB55FCD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947895369.17654.18220186961111370806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85ed97e5c21e9910e68c1628a51dec9e060ba1c7789e4ac4589ff9579df80aa
Date: Fri, 22 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779478953
