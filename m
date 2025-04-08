Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE17218584
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744124393; cv=none; b=jbN7hjVxQbpWtCrmz0UVi2e4klvoxxUzbGPzMElzaIX1Zwxw9Nbm+T5gxdTcuilaGoBQEuVg5UP8hrQVTof6pAWGhSz4ap4TvY0G8+0lj3BwD8NklQrNRufFBpVfLxmxZeF+BHvhLJbfT3HoMIGdcsDs3DOZXj3Z5vaE3gtjy2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744124393; c=relaxed/simple;
	bh=kl/Gp7OwkGnO6BiyPeXokptSXWBe6H72kXYskDJUKc8=;
	h=To:Subject:From:Message-Id:Date; b=PJrt1yr5tHb5BmtFcQn80qOSy1W7MLpZ/kvCXH5WOM5tLG25DBMuTKERUZxlsQtnPeu2J6iPQ/L3ztBEm7nTcl5R7sJo/MZQuFixyZ5N7MUgskPYo8ZuOZ8qgEtQyUwsKxc2l7koOELziiL2Si3o1ehHKBWncAJo9CBcPcQAJi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odzzYIXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odzzYIXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8FEC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744124393;
	bh=kl/Gp7OwkGnO6BiyPeXokptSXWBe6H72kXYskDJUKc8=;
	h=To:Subject:From:Date:From;
	b=odzzYIXyKayDc9bTq8Zn4dX0UDv85cJzC9/dYJgOTfSBf6kCWgfv+egFQJ7cJoXVk
	 iv+9KaZ/g2uEjkwjdmp6SgNDygtDaCcGlgpYOXyPhf8sNENGCX3q/M5ObWrr1w+tM6
	 OYF9Mon1RRaZi/5O/I1WrlN3UnRJiT1+hzxq2bM+oplO/k9/QSlGs8vioRpjLtEPPn
	 p2l0E/7ZQZCzpR7XLv8VDpY2HIs+fKpQUn0XAR+i+WkVB8rlo/ISX3TSIgrY58BDPN
	 RteIkeFmmhdzxCA66jiDzDrf08xRnBShM8YuQpBXuks4b0buiX4SiAKcYGQwD9gDnL
	 DXOO/XuaG2wNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E4C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412439361.1135.12168683303567944392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8587c95695134a8c0b2c68b4e9de74c4ac46283db87ef8f752adc8e5f41695
Date: Tue, 08 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744124393
