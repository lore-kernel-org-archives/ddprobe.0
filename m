Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FA928982B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756594; cv=none; b=jUmqSZc3hVrc8V0xS7uf515+qkAXyFlY+4ZcsOsdr7oX8y+53HiumqiHedklyZZkHhwzhkX76OQZz/MJg147R1BxOVsqSxOfzwlhWHTYN8THGVGQlZPKxqhvS8BWckw61W9z2ULGngAyS7ZXSF8chnFr3CFn85YevGHyQo7r3NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756594; c=relaxed/simple;
	bh=eZoTjNri+XIJ6KlR445wXxKVF6veStUtJaHvxtssIXU=;
	h=To:Subject:From:Message-Id:Date; b=jAjBrFkAfLCrHhodJa1d2DTj2lsVMQhN8YsHVCs2iOavplxYvUbhkfd/C0dlTQUIvm6LOxMRYBiFQmBLjLkCllcAp8njwHNLHVeIGnaIDe1W/ugHNIiM1SJO4hc0a6co551kF986DTmDqRYS+GLAuo+cFvNMAstzphmUZpMqzms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbDXyLvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbDXyLvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7652C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752756593;
	bh=eZoTjNri+XIJ6KlR445wXxKVF6veStUtJaHvxtssIXU=;
	h=To:Subject:From:Date:From;
	b=kbDXyLvYy1iUBmWZD1en5LzCvwNQ7gJ7CC/8zPZPj4Gy5vd2m8SIcmE8uH7UnxTIO
	 Olf9nrw0qofGdBi7UzBdn5OC5FGxqFvR79nRpb97vTW8eP861hO5sYdel0ykUh3rgh
	 uch6M6UMPhecHRooneoZ09aVhLXsSKGZIhpDmCptdg/JJVwGBeV/SGSbVkyOdfzDQn
	 o20rWOaoDaKtrpUknmW5GNZYRBpXKHrQxvJbZBfgJ0kGvSyXeOAzJojHni0eOGW0yQ
	 T+To4u+6Tx2I/M2hbxpVsns4h94rkPSM4oGTFRgz+LSRyTgX4BFP7BPWKiMhMuQdH6
	 LVJNMELuoNWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE45C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275659358.24861.9623594660460693498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf308d199f5e9406f04a6af3a17bdbebec69962c92d2ae89095c7d3d191ed48
Date: Thu, 17 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752756593
