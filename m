Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654326281
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757732994; cv=none; b=CmlzxVmANUbgZzw5YK4+X+sl8biVerepz7Bdifc+W22pDfxYJpvz29MCoIsZiAm4BjMIimvTM60Vmyutig2GP91XXIYiAEJJ815OoZvbTZHbN6B6JoObx9FajykaA9TW6liG2xeDsUp/wY/EfNCZutvjpd1k+z9peg0/DvjHW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757732994; c=relaxed/simple;
	bh=DXirCgLCwF/EyTVKPJEjXCmNXzZvjxCyUSEzNyB/Euo=;
	h=To:Subject:From:Message-Id:Date; b=U172mtsbMFU1cRqzlDobh9sLGflP3YWI3SO0tY8jMVBiH+naJxGhjMkbZQrF4S6LAz5r29HSVUvnQ1bSTnCubvVdmXSj1CbqkGG/l5DwNkRsYD/KZwVGA5aKQx6taBkiqmk220b6ytdIbyYvlMPRXwpXZr/rVNm1C663oRmI/TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRGPpcBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRGPpcBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757732993;
	bh=DXirCgLCwF/EyTVKPJEjXCmNXzZvjxCyUSEzNyB/Euo=;
	h=To:Subject:From:Date:From;
	b=JRGPpcBxAQY7JPjHbHncZdL+sHnIIIJZmD0NcRqi6IqsaUqA9jziEbdk0KXzLK7Xl
	 MoVto1oqEGbfkXMByV9wgwDEo07n8GPq5vb6YZk4iQ22lWM3DLo1QG9euAFEHENDFK
	 HBTj0tfUq2LgUpY7tgNyRQYFHGTQO7cN6OsSbvlmLbCrrAUwSDyzQBUNxTNxggaET7
	 iKDoLgGpR/qIABSh5ekyjayxtdRXtO1aJaJYkMymY/xudZumpRnvx87/16ZcMlC6l7
	 vJXOCzQSuNWKyig6xLa/Bpz4y8ityne7n74E+owpIibnxWpZeW6eow7oY7xJKlBvWi
	 uUc4E0wP40RpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B59CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773299357.6125.6715411918921792114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45fdb6f1bd730fbed995b7944899411af4c51e19cc91d06f146de080658cf44
Date: Sat, 13 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757732993
