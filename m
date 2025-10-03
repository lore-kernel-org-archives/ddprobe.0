Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FF728BAAC
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759483195; cv=none; b=G+7t+mJGw07BCLxRjDCZm0rq4JeZR7WhpvqWJy/KP4Gz3ngjEnT7XJUorVp7fLmWZ4dGZaBID5/qab/HQdTxNwKIhWpYHIHuCDTKJMQHanlfCPFXAIhq+x1ceGBwB9UbMOOnRmuGQatQw+8JwobKXiYo5gcU0XQtKg5i40w72Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759483195; c=relaxed/simple;
	bh=zcucepSdUk5i4gPxYwcCzJp/bwrjYicfRHfP/74JUus=;
	h=To:Subject:From:Message-Id:Date; b=jGk1V86GWFDIXvtZPznbJMtJb5HCTqwkayjzmv63J9YD1AyCVjK8zUAn/Fb3AaLiiIErfksZGSwNsHcUITDq4dgTD+kONMhfQi1fU8Ht4zwNpBaIlBru19gfLLYN8mOcdl6vs7TEx7FUbL2KWHOhHpjVApROT9D+TFuiSO4GOAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJwWaBE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJwWaBE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759483193;
	bh=zcucepSdUk5i4gPxYwcCzJp/bwrjYicfRHfP/74JUus=;
	h=To:Subject:From:Date:From;
	b=CJwWaBE9IHKu5EmJmHZh2/qj11LaS0nvoy3Gv7uWrMcaQoXobJiQ49thpcq6ZdSge
	 J5OwtPiCVh7M//NXKkZM/TbpqU2GyNk68n3+vI8vqn7w6w0c4gRNlU+RkLTXIFm5e/
	 K088mkwh0s+Q2IWppLe3hbo7s+dAw6U0fTiOnkiF5AFlq6a44UrICAxM734VErl5/H
	 nyUBPTDt9nI7sKoou/ePkYPE7CjWO93MriSvMPmZrueyZuhIWtaNzg8Z2ULeSqDsEz
	 rHijO7Bh/4ie7N5f9q8EvZhcVVcpghia8iQzLmKI+jUY2EpCWoJG7ml1fuO7DzDcxj
	 MyndV/HfLyitw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92048CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948319357.26768.18356272935109164286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e4eb852f52a8f1fe4bcad3d6ce5c06ac32528db140b30b947c93211c3d4d47
Date: Fri, 03 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759483193
