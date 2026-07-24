Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D781275B03
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784898634; cv=none; b=ji8ssvs2L5mQ58WvlfEq6+AmbElqezw9Xr7MJY/JE5F7jE6BlKaK7+ObEELCu9TJJyJu3mzYy5DHakm1mF/YlTjKXMiVoYAO3Jvta1ahqq6yAGuxWhlqbb8eb0vAQPyD8B6xe30+36qcASj4Uanf6UriXHHZrsDALlEL7dUtl70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784898634; c=relaxed/simple;
	bh=EOVWJQy1epZ4PuetpArz3NKgOlrkTYcu68/tBPWvUJs=;
	h=To:Subject:From:Message-Id:Date; b=IJsM4WKJVUnrabLqf8Kst73xXw7HPYhOPnrfx8EsF6kBqsSe/ObZN0DtB3AjEmPU0M8mwb5fe7+cC2godLc04UxD+u9BeZkCoEMTL9ajBC0D7UihdCm/B4v/5ub1hZGshRSOoKJ2JcT1Uqc6/A3CwW9MwiqkffJI2nWLxBpwWNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRDpQ1ZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRDpQ1ZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0823C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784898633;
	bh=EOVWJQy1epZ4PuetpArz3NKgOlrkTYcu68/tBPWvUJs=;
	h=To:Subject:From:Date:From;
	b=vRDpQ1ZTMxvou8HzSSQ6skh/1mQHwO7xTqwb+sFxoL3piH1cbvrX9FhQ3vaYSui0F
	 SxjWZ9LlNjhr4QBQrUz4Uqk1bd9gjvEa6wIHfWKs4SZCkjD88n9k9XLqxvcERfDvJa
	 bFZRJGeVpFIFunGzEXTT69md95RVGRZRS77wlZaRdhiKxIguaiChDkxI/xCL3QWg2U
	 x3xck1yZhMH24RxoT5QEFwoFzJCSKXTnxyPiT667f9LEnBXsU5r1Pgf6K7UsWSXSEo
	 Neuzco8J+VgDZTBAU2jEprOFdOxIGg3/Doz7dGL760FiERUh0Tjc9nR5xDyfDvQPHQ
	 mQLcZztXkybsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFFC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489863368.17722.13494193887039388969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ba4e014a8badc6e3c7c76c928d4296cfca01a6f59cabf424dadb057767ced6
Date: Fri, 24 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784898633
