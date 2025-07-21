Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057CE20E718
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753080594; cv=none; b=X5Br0r/RioYDf/v+6nkKwtk8QddADOTzV9OPdVSm8ILS0vaSUO0c2gE7XD1aGXdCjzeiEUqiHuughkrrEVy6N8Kzy6fpvHQ9JroLDNyl9598s5z2TEGkyoZ5zS86XoZAwZ0CJ5gJPVjLarBQK0At2m8NbAXpgRZbve0Sr6OPY1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753080594; c=relaxed/simple;
	bh=kWOPO3SVKxJxzBQRGGwGZWBztv6sjOyO8o0+UdM3DQA=;
	h=To:Subject:From:Message-Id:Date; b=En3B3pjdlnYkLROLu6nfteH00ywojIGI2KZn3PShTLHnW9yOrMf3sEUDceya7KWjrbSbNY3coOazwPmEGHoUtrpkng2mq4/m4Kvj+BYY9IwEMOov6o7H4Lbo89Lyw6PstLslxY0/jmZSOAvfFDDZsVpdURhBqUcYzsmTlqRJcI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCwz4+cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCwz4+cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E881C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753080593;
	bh=kWOPO3SVKxJxzBQRGGwGZWBztv6sjOyO8o0+UdM3DQA=;
	h=To:Subject:From:Date:From;
	b=DCwz4+cd+b0W58TInwRQvCp/RnzZIf4iv1ynMgtWdJuD3n/C44EdhSg2e9KG5FfUg
	 uHjJRDz8nmq0bLfPDAyhRMbBgUYOV1B/HjeTciv5RsPWrWDxMHkacafOby8k/a3BsO
	 mr436bW+weluQYQvN0AhFo9Nw2bFObNnU4xz+5mNCT8OU6mGFlD0jjun0YH5hP5oW5
	 qlISG4fkq8Pyefa6X+tumbwJMYI2tj+jXE7G5tgFU2qgOB3KXSbThWE+q0Qcl85SEG
	 B51xBaeXjxDHYzMxrpVfgOoDbN1ft4ir7mInb1lx/+XkPofVLo9apNSheBvLu00qhY
	 FILTVF0qVAa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F268C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308059357.18922.1736189140509743076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18749a5ea37ec12f19b1a07354d4b1deec1ee3a14d8954148e8e9ad4c8837e63
Date: Mon, 21 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753080593
