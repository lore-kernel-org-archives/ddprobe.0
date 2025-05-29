Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2490C10E3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748500794; cv=none; b=j2qRKBBo213z9tXHVokmHphgUYydD0SpjuyO8LZhH+wxZZRfi0bhrjSJxjuYnYwmXUfTzINq3FIkLnoEGvpp+0h4FL/kL/Zt7nNWzMVKsszm42JGoP01HpzXIf/JEhaFgfpsZsNIyvFuFX/dE6+w0vSxOMJchgk3goPGaUYmsVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748500794; c=relaxed/simple;
	bh=ztIWFjyO6KKLbxdsSAeU3M7DluhWs49lrDTRKR8yKcM=;
	h=To:Subject:From:Message-Id:Date; b=QuP6OanOVZWkfP0PVzRAelcgEH0ffU6M5+OoEe65lmhYJroHuksGjOnxHHOg+7KBUyNohfLimqWrSsoEEw9zRapOqGzJ17S0BZZ1jByuv9y7Xoc7KLCIStA46AQaSFFw1u2HkoxZ4erL8VaMZKqmCWiEYU7S8v6SKEqEOe1Z/Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY969Yzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY969Yzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748500793;
	bh=ztIWFjyO6KKLbxdsSAeU3M7DluhWs49lrDTRKR8yKcM=;
	h=To:Subject:From:Date:From;
	b=qY969YzmrgCtmw4bicmRH6QoQukU6ifn3tPPKJvGiLraSUbDbn53GkwHJeuB3Dysm
	 CyOBasnwkSSwnQoIWTDFoXKaUSs5HGdppCRiP8K7rZmiyTolgTU01U8eENdBo62MPn
	 aAKtuzIS01wyJXIGi/aO78kCS8aBblpAn8qsG25ULmD5QvMTJIWYbE16n1Drt4f6/l
	 360aBX7qq5I09USxYy3zBD9AhAS/jSBZjZPDHZN9SHEezd2QqG7lmadFDQQu60xJ3G
	 ymcsDGtIHXoaKNQR76pOaOn9hx5zt40Jofh5eyfzZB4DNeaoKGt9R8kb3zZ031Ktz+
	 rTV23AXs1K/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F062C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850079357.29752.3725876294337392387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfde581148d861510146a09a9da46e17b7f9b5d0a56b8d08beb17f7777ba87d1
Date: Thu, 29 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748500793
