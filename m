Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E73729B78F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769597034; cv=none; b=hCzMx9wBnqWArT1V/zkoUjQ73/KGZxNORoU3cCUWoJbMA+MhpZtEp2EgOuihA60IvbQyVRy0QYObP2ucRgq/wdS8pDurnEo1TgR627ziKvjPAdoh8GoJLy4gqxSSFAghCXosuIKIqDEvwIDEnElozefsNES4izWax5g0i3eN4xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769597034; c=relaxed/simple;
	bh=QKyuYW2cnwaY2jXX4DMXaa3yBvf2rLq5qiBWTi2H1s0=;
	h=To:Subject:From:Message-Id:Date; b=mA0AE95HdMTz/oHncasgAHt/9sFaffGQ6u+3AwimylQzD9k5VJdoLGHB2yZsvYIhj4ZARAB/L3Q7+yFjnOCMuoClR0fsUg5l9cW7lYositEcpRtJH1RoEIh5a89JRPzjjhevm+gCuJlCRIGd732TQKk9KZtXuCBL8DxmxdGv3ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOP0l1FH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOP0l1FH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F3C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769597033;
	bh=QKyuYW2cnwaY2jXX4DMXaa3yBvf2rLq5qiBWTi2H1s0=;
	h=To:Subject:From:Date:From;
	b=aOP0l1FH00mGAkGaXueJoBGWYajq3ckrNx3z2WFZNwcd7e5Ql11wbN1g7ZdeAFKIc
	 oJYGJtYAmoC6o8MOM+cKHLXW13Ou8CfgdDeBnJHiphN3oaDpvXpacRpztLsosKEopt
	 +HLmOJHz50IdumkBtpsNkruHZoze1hajAF8YkZ0svywsv5khnKJukcuZqJdTB2QDji
	 NP5i+sqa4Gqt/eRhQIV+ze1qHFMBsmWIWgkGPTGulY3HlqBjY2MZ5YYB0tbHxqs1iF
	 TLOyJmKY5z5AH60W7RT6c25A0IFDWSN8RBF+M4bGH11uC9OeoWBHkTt1af2JQXQCeT
	 DhRnzsZnkQUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90586D3569F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959703358.4571.15479214967019378296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be9bb9b8570fa693cc6349d0c262bce3a848f6bff90eec096388a5f14cbdbbd
Date: Wed, 28 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769597033
