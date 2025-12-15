Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C63C2459D7
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765783374; cv=none; b=M2en2SS844j4DRutNKSWJ0EPgjxugnK+XqCT3e7Yau1r9BGd+BvUGy90mGE3/y7xTrl4IEHUkTfSC48ad7g3YXtOBrWVpdq5iNfdbAdiT74T7nZ7mU/KI5kJmlU+7wWvpcosS+GdSX1P/C7ehOhKkf5S44HZIdHkrT12a4Yq8bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765783374; c=relaxed/simple;
	bh=YKCsHpoXVMsu38JtEJm3qPi5Jcu4jUOOxFEYLIct//g=;
	h=To:Subject:From:Message-Id:Date; b=FvbTbKRf3FjagYdUsetGg5XuAsOBTLH8g4jezhs0UhEPD/hSSgrmgu5CSzcXX4P5G7EXV+gvyscM8wPPd2MvU/2MEnuQCgtaqaJaslYQVc2hz0lTMBSKjT/RD4WhzaL5AUaaz1GyZOYxy9nDHffBoiQy3Sax7/X0E8cFV6tg1ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRHojd7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRHojd7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8E2C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765783373;
	bh=YKCsHpoXVMsu38JtEJm3qPi5Jcu4jUOOxFEYLIct//g=;
	h=To:Subject:From:Date:From;
	b=uRHojd7KUcqbVgjWCiD/LzrfXItfv3v6ptOIA/o7bMC7jUgkqEp+zi5Kt2quX1ZGY
	 AYBu0k+PNQT4AONXK7v3QSl6cef8yKaDlclRJHxDprYU2yaQQ9oT+G2b2QXqBMPRwV
	 pB/QwSMcnrKHyHGxh4310E3LFzfHoRgOEhxqyeGu6k+HC/fivUJNAqmx7616SC/VHV
	 G8imOz7gM7RBabLn5Ao3DNJ7GUWcJIaWEaOaEBo+6c4l/bmZjxP7lN3TsGiKWXBZvh
	 I/EjIudyYmM313MwtYEYGVFEF8e05dsYla2NNNILTtn06M6/hBaxGulUkrz1+4/hby
	 4W/CclcJPqZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9D8D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578337360.30636.9264020603499619087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f697263a50ec5b1d2612b89dcc8bf179f82140ee5d8e80d72897bf356bf0660
Date: Mon, 15 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765783373
