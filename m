Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D22413A41F
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734623754; cv=none; b=WjO6HDTQgSu8AmxHRkwwRN42aOXuGivYYT8XoqrcnPsk/YCD6mxXcoTPese5DgHelXnTpn7Z2vAqLnW0X2BcIZJBVu8xsxEfskutm9zH81hiI43wbTOnjPqiZ+jdBpzSDYd3jQO2YgimF72N9lOVRh/zb9k9sv/XDYc5JsM04PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734623754; c=relaxed/simple;
	bh=h2Xq0ECBr3a8iTSGs5itU2IJOZ3f+UVUVRqdX3fjuUs=;
	h=To:Subject:From:Message-Id:Date; b=g2gL9CQ/KSUdbqAfVgoigstoqBvJaw9S3IzdeAyYsMiAuzz1QLs+YyC4eUACZovU2ZhuKCEU77yI9MAAbwKnTpOIl65pEzSTIpx9hVQv8EfWOZDnql7+bbmSxYSSeuTR7CXwzn2Frz8CAwdbrP32Klu65d/2uiOVBgNKZf0cLy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5a+Ewb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5a+Ewb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A10C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734623753;
	bh=h2Xq0ECBr3a8iTSGs5itU2IJOZ3f+UVUVRqdX3fjuUs=;
	h=To:Subject:From:Date:From;
	b=T5a+Ewb69doTFoec/XczWOZ7TNXpNEtKXhvIEgW5j3Oz0JHWcPJ7vV6jHKqe5sqda
	 m5Tt9LJdHhXBRKag1SpULLwyk98CZ20XLpeme2I90flm0VqU7Er7YCWyeXPJTJQM3a
	 kstGBe53gb/Txaqz3NvAxtgIxITNOwG96BoYfOS9zE+6BUWfjert/P97+116nP8Zds
	 QkEAwzvfGz0lpN/QonkBifFlTBKE+ez6xecReB/+f4dMrDvK/+xt8ovSW94546HoKz
	 XfebW1xSZlNvwmdw+h2+iFOqjGNR6IelsrYNG8IJZmMJgbiGD7IiJRG11WzKg1A60O
	 xhL6aEMlOpkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2608E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173462375365.17162.18360592479235367048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c911c8047f3942e1619c72d700eda216b085afda55fe2e3841dbf730b28a9957
Date: Thu, 19 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734623753
