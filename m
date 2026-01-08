Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF1E4C0417
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767870234; cv=none; b=a5OuVebrWYxdZYocUKHdbkHiXVzj5G3FpoGwn5UCq+SxZNfpw8SeQhlE7NjhxpgFKac1ssxEPvA+ORA4P13nuzMBzD2rNc2TuUxDxT6Fk1cxAlVJ3WDfTu5kgGAn1T+tOypfVAsWu3Yu8SkNjhUagJkoh/rF3YnkM74MPeQHzP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767870234; c=relaxed/simple;
	bh=K1VwPcbmeN27L8ViyRo5c7dBgBP8NNavpk55aCkSF+E=;
	h=To:Subject:From:Message-Id:Date; b=uVK0+JEtNaNGAxvzT3IH2S+7iEfO45aonDToK2wfmqA7misfLaMOJUfuv/TLueBkMFYDZbT/b18rhKAVXa9bbARYDafKxSQG7T0qz6aIAm9koDFwn8aAIUHZm/q0ac1zacNuFZjbn97H3SvcYXIt8O910zOSfoBXonhAeW3oRAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhssKNgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhssKNgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1B2C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767870233;
	bh=K1VwPcbmeN27L8ViyRo5c7dBgBP8NNavpk55aCkSF+E=;
	h=To:Subject:From:Date:From;
	b=mhssKNgGVPDAdTlO+adhPYdytm87xdQw2T9SEXrpUp1ugvCBIOh+Jiurs0FLbpIoE
	 qqxSmF6UFZZG2avcPQ2vNkweOOizSMhiFXovjZWDXIygffMbvNgjuC7ynbxKDFGqjW
	 hSbkluvHbxGJPX5B2li9xG3UBr3cn8rrFFPQo/e//cHL18YZz+eV46pbDtXr4OrsBC
	 q1/F57gDgmvDmPwMlY8A2G7CE+z3ZXINPOL5uDuznb6dbWmWcqYodifIPJopGJimon
	 BHcVOnyYZKK7r4TMTwAiWxLBStgH9h+zONR0tls0gbk7fLLBgN2f025hKbQpdEaYLW
	 xDCe4iUZgC+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E3D185C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787023357.986.17827725687152168451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a283a68419db67efa07c2d5e2b9ad7e9029518a7cc9043e0d908dfbb91e43c75
Date: Thu, 08 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767870233
