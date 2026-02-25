Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CCE296BD1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771988094; cv=none; b=GSAWzMei85rDjTrzXWlwkbXzlYNfRw7cRQS5gdK8nxanR5nXPBRhXlbWSpj5luiQp8qKrEHNVgL+QlEOQxKqlRVNluI5Z7JWh3GS6njxXfArH05KuAo0xYH4zW7Almxknd6kceqywSuRM7noP7SgskSRF5ZC6CjntGZFgyK+N7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771988094; c=relaxed/simple;
	bh=aQf0MC4SYUl+tW7MudSpQOFZ4OKI4jdxqHISPZ3YLjk=;
	h=To:Subject:From:Message-Id:Date; b=ntHs5RC5wNIRxBSDozQMG/vVb98mBO+1HDrrFcZ/fkjbPuVop2HTlYst+eN3hEOzuOe5qM5T7vBcHRDYNP8Q6/LD5LtGyehT/u6bGcHxK5MFYB5nCYRCDFeOEEQBHRgHa9fxtnLuEE7r2xCs1tg8AEw/n8J19XsfvXT+ygmAE/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgYCq2c1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgYCq2c1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDAC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771988093;
	bh=aQf0MC4SYUl+tW7MudSpQOFZ4OKI4jdxqHISPZ3YLjk=;
	h=To:Subject:From:Date:From;
	b=IgYCq2c1MZTH6VuxK80sHuRtxlQLPd1475iz1bI3v4F4n0BE0ramby59TL64cwdxp
	 F2HpRMr6dI76kpZNdnrTVUOkkAqPu/zHEHKbNZCBntQ2ffo+fK2+IEXn5ayLw1zBL6
	 VwXcgmOGAVcmdSGAFbXeHnhrvm5ZKdoUU2hkUnhutweZIOM0IYSHv7EzVCK3lnbZvG
	 sHnj+74vYVdbOsY7CJaDL0jFaKVkcfi7Lv9qOzxr5X5A/qA3e11qmRv4q4Tp2tNmUP
	 SxIRvGK5dQDOMnJjfVQW3o76ylbSeoRQIaugof7MmrgN9Ec15grr3z5Zk832c1cHld
	 o388vhSo/tL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90995F55449
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198809358.24573.6832357786681276350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb221a2a4459f3eefb9b8b8e6c7cae9868791df2101997a61a83ddacf236b9d
Date: Wed, 25 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771988093
