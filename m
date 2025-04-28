Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680591C3314
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745854797; cv=none; b=Nou2BtqU0oyP29xr/jVwfOz+OiKyNADkQrXa+xzvl8imELVoLEafqj9AQGmD9Sjdhg/8c1ZZjrlPMwxKs3HWMSycJwOHMJUmts1Fgbb6B+WdV9YAcSduYXuzh6hYKM9pWxLQRb1xHqTCGd2f2EZ7RpdYFjjVMXUs1tGQORDe1MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745854797; c=relaxed/simple;
	bh=CLsguC3xgDLoa58EySeoOXZ7TIqtduk8NR9l9Y3hCX8=;
	h=To:Subject:From:Message-Id:Date; b=OkvTNVhUCAsV+VcrMnRpo5Ev/hbB76wYZZHH6p0e3kmGnCOiz0zGs71HK4yen90YFQHer2hDuWpjtYn3PwFMlTQKyJYfq1QmzMfBwej7eagomWJrlKN5voPOWjNP2562etepeihQoHrB1fautJcJe3rorE7o3v933diUFGnWiCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8L5t6UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8L5t6UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E04BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745854793;
	bh=CLsguC3xgDLoa58EySeoOXZ7TIqtduk8NR9l9Y3hCX8=;
	h=To:Subject:From:Date:From;
	b=Q8L5t6UAFiZgwHh5wCpwvhe+gz/5kxsySU3wjWM6I4OalrSQQKXvjquhYVCjTT7y8
	 qDQPDyPt9+f4+juCcL8ckEocIpiUgTrsgiOTCC+JwFoB5M13RtuMurTtJEw3XOwEyz
	 tzinEcvkwALj/mo7j+dScLO1NQqQGdrzhtPLnGHAQH6/VObMTgGeioEfgajGSiY1PI
	 yiprNAzk1XxaUa1FGilTm3PF8wFA5CGJ/sEhu1aJKPNvD9pJO2RaSxGJttzt5+PRdV
	 ooSlwpcjs9eMk/gTEBvBzYJ+rMPexKwPlVTndgmbA4D7wkW+PdYZNlJidlADLLWYdD
	 I0N/cliqthtNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CDC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585479357.24750.13575524581328341657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bbbf096eed1d033d8b9b8f961a174df49de134b42a81a8ff2eca12a5eab14d
Date: Mon, 28 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745854793
