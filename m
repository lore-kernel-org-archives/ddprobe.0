Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E01415B15C
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713964823; cv=none; b=GpdXHmVzPGuMsk6szwI4ArbuvHWjfooKE2xF/E5EYipU0ZX13YYWL11xQSrz6Uy+iB5RVMryCe7ysbNh6N8PYCRuWQbgu+LTkyJ5unVKoHe+CwUonhjrqOaNF+qGGjvsTkdLgFsLeXhlXevhJEg60N1wiep6rcgB65PAJqpxXBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713964823; c=relaxed/simple;
	bh=i7WjFhEquWH5oL6Df170VFlAJ43DJVfuUt2ZO30O8qw=;
	h=To:Subject:From:Message-Id:Date; b=gI9+4lMXMmVlCenGQlp06kRSApof4tUbu8RKxtB8T83dnaqX1aXv6Irap5MX01RuNQwEihWVcS2Dmp2yaBZ3I8V3Mq93eFPFYfn0wHoTavOVd/1+QILueyOTqmvoH1PLomdBINEEWdr75W6hN3agho+6plCn/xAeTnKlnNTN5D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBG8AAfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBG8AAfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECC9CC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713964823;
	bh=i7WjFhEquWH5oL6Df170VFlAJ43DJVfuUt2ZO30O8qw=;
	h=To:Subject:From:Date:From;
	b=KBG8AAfPJSpl/mVfpvV4iVD0C2/tZl6HcyHR1yCaWckTQxACa28dGL20MEnLtT4cj
	 CpGTHu5ItkKrU8VxFaNj8wGvCNCiR5o6Qr/V+RwEsWeApnvSoHOwgKHfB2rxxLkxyG
	 5NIxCG+LovTzu0Sid2fk0stoFy09RY8xEKGjyu51k9sA4NCQiug0+Lq7WQzfy1X+GV
	 hsdbA/22HTpoDoq4PBfyxZCdN7fgRThzfQ+GoxbG9OYBD6Kj/mLfNIzQF1378DCkpv
	 HmVl2EeNTGMMBxz24RfJqZdhNc2xJ4IJU3psg3gw+1IE6kaPTrs4PzbRf5YJVbSY8f
	 jXE9/hJqjPA2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D449CC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396482284.21944.3875613910821473855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e6532c82d4a01783be6f806c3242bf6b13c856b5c9cda67a66fe9b966849e2
Date: Wed, 24 Apr 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713964822
