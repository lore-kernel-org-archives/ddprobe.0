Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C1A275AEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757480394; cv=none; b=NMPrSVWK7Bv8n9q8OdgUoTnXMLAtMdXUUAAOSW0nK/cCWBl3x4Aj70e9n9jtx7fOZoR/CPDMGuzJIw9rR6eOCvC9pzULi8N5V9QFZSR+DNFljOSec0kyEp3QjbFkL+YMDUUvjx08Ki4cCUEf5OlG8G07/GgJigEnDaKVim/lYZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757480394; c=relaxed/simple;
	bh=+sRfDc/+E5edWNH71ltG3lQqZ+UKDR61P10kbobtOKQ=;
	h=To:Subject:From:Message-Id:Date; b=owmVVSHHgQTCCalARYivv3r+IEk49uf+i8/GHpOdqnzcECJ/e6C94hoC5LZsEre2eNG21ADVhmTQWXxmTNwls6iEuvxJ9Hxlo96BNbtA/k0g0U1YRAiEEGzsXsBS67p5YnIAbKtEPBfGOuj08ISHLRxT44ASGk8Gv62ataQD0oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqEtBMQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqEtBMQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C12C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757480393;
	bh=+sRfDc/+E5edWNH71ltG3lQqZ+UKDR61P10kbobtOKQ=;
	h=To:Subject:From:Date:From;
	b=kqEtBMQGnEPMfKTUcpkZMjLWu0AKEdYbSlpDDdEq4r+qkMTiVY7wdMYBzehrSCL9t
	 ZMSxoLRLY50+TP+N9xYJ+HP4/dgZK4H+iFnYnwAHp7S8n+8UdHOi9+TWY7QVg6Z0kh
	 cEq2NEW88NSyk4cRTBMVq03Q1NVm70iTgDrXPR/xvk2p/ywgevEo37oFemX57ZK3Zf
	 15429Z2wKQbVAsWnewe+HYlnGKpmutgZsRcgvEsDZdfUfauNOfOl7hV21Ju8V8IO5b
	 7klSj4gEltC0SCYz1XYcid+yrqUMurd4bYGOTNSc+a/eOkRUq71b3V2Wgw/9z4Jibd
	 cFuEuiS+kinRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A1CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748039357.15585.14983975563324823185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0fd65a913d0f5d6c9baa558baf15199c2ca350c57dded5d5be8d3354c97b11
Date: Wed, 10 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757480393
