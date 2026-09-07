Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E74B2F5495
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788762034; cv=none; b=puOPs/Dzeee0Z/JylTji0QqMZs52G3NLEFRe1cBCOoI8ffISL7MLrZMDi5Fq8BUGnqe/KL+mMMZOUBWjI2Gr/+bN44JZmEdYo8e5GMbpBX4dbP2J1RLswifiyfvj8ntQ22lIOW9q+YajpR+5ILFK0/iZM3FiaSiYe/ENoeGEQiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788762034; c=relaxed/simple;
	bh=S/ke8QNYDyrmPodEYUen4ikOwWtSEdULKzH7oLNiSFk=;
	h=To:Subject:From:Message-Id:Date; b=gtMyYlWQtTXrhkqttlADR5fVsmHjFEaCkAHpDr6UhOkv1xe6GQm1cYqQpV5Vt742J+XLJdJl3kpw/tGeyRAjprQvA2SEC6ZSPZRzg8Zi9O4mQ9quhQYkuKNruQnHeDiLFeRAzWOqhzUxPgcv7VSh9u4HqWmiz9Ai/60Dl3Xbg3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/h1pyGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/h1pyGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2133C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788762033;
	bh=S/ke8QNYDyrmPodEYUen4ikOwWtSEdULKzH7oLNiSFk=;
	h=To:Subject:From:Date:From;
	b=O/h1pyGHrpztoQicQDELvBn1LOy0WaqzmyXABfUDI4eeWLQSwEzGFf6Zb8QT5P7XQ
	 ajFYASD31ME76/vGVg/1KYwiGrflq1iaMm7v/boT1Gn4aTIu9pmvtgG4FqSP6UAn5N
	 b8nG930TPFn09L/q/jY+JOBu8Q4jfNyvjm8KdwobkBb6z4LOiI+gYmPWOYjUS0XCcG
	 d3nReVyB1RYCNdKYbmzVeWa+4IljCGs34GxJrV/zeZeyXqbW5BT+4W31kaHfL5DaUc
	 DmjxmiY9SrPN5nZjA9zX2tp6qoLSJ66AmupkbHk4AxZ8PUGNqAIzk6F5nNLqINnRfj
	 AYzETsJOsUq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2F2C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876203373.21965.14639406346355484560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf09eb48a9b0d434dfd06d81689311122e04fa9fedbb9ae22355d6b7f3e07c9
Date: Mon, 07 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788762033
