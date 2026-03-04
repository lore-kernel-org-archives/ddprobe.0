Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EB41E5702
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772587493; cv=none; b=UJ4OYcCIFvsxhzDxFZbu/byLefOXUfbltH8eyKjArx0sCgXqR5FoReLXJJr6qyxD+E3HoJUKHZtdtB+OnEwKTYC74KUGtrVzg3yFhchftoa6OcrwIdrxICKQwfbn5F+kxUl7LGujwGlGBVz0S3cPB1ZEjcbnr78JVz56t7qGJtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772587493; c=relaxed/simple;
	bh=3bmsY6FYM/coBAOg4FOSnI/0aPI5IDpV291pyws+92w=;
	h=To:Subject:From:Message-Id:Date; b=WJeCH7JPAR+I08BYiUyz1vV+gRVvXo8T86KVSs+/8iXXXs312WkeeRirtRfAv7nL2ZKjkZ+BAYBSheIE/Ev4HNLbPdo9Zs0nzgZm/plIj1T7TYL+z7pzXYvz22noqPTIseuRL8hnYdMLlRpP4rCJmprme9uhuQS2E7ONDyp6Rck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfwlHpKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfwlHpKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4051C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772587493;
	bh=3bmsY6FYM/coBAOg4FOSnI/0aPI5IDpV291pyws+92w=;
	h=To:Subject:From:Date:From;
	b=OfwlHpKujx0LWSnDH8zW2z0unmYlCONr64X0oLV7NWtoZG4/0yru5HY2501nTPuRf
	 OhEG0+P/cA8tvB7kr6Q0G3L7SI+bsyQu9oO9On4/SQwDsTd4CV72LEzs02tKmjP7y+
	 vvKNW4xmugsDXG174og3Ic0xoPI9tnZFGn0kIqFSdj9uRBwnNYjIjKHB2vJES8stHF
	 CZR0KzNITuxtguwp0eMMxKKSQUpgXlv4XeFUwxDuutwrjCAG+mQpDIbb1oXSHkltkp
	 tq7o/H6drNGKVrW35q8IQyjH7+l6nmPv18kTZpyU5k93pVbe4+Nmft4vo8RZLFXXrh
	 cp0T/McjVBEAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CCBEDEBFF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258749360.26499.16837513725472615054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954bbb76f94350b4cb2f19edbed8d998b70143ee33f1a96834680fa03fa10381
Date: Wed, 04 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772587493
