Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2902920DD75
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753676394; cv=none; b=IUoF12ajzr0baXS7sIl8K7GTDoZucBQj358Jfg8+7kArgnV+rLiWgMkQ7c1tzgXzWF8GAVPh9ErBz52eHH+lM6WA2K8aRyYftZzzFkx9DlEcmMn2ni9hOqd8r6lSkX0CwCPklTGZRBDKy+5BAU5ZYbuK1YMPFP29ykDZ19MSOUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753676394; c=relaxed/simple;
	bh=UuS8OhPOFu5JX+gW23gtBVCDfQbs74El7wuKs36WZSQ=;
	h=To:Subject:From:Message-Id:Date; b=AUD1CuqX9jMlWehV4of3Z0+qQ0HKhOm5kMc/9k7HRch0P7ZqDzrNVLsHFvH0P5KDQtOPNbixOxo3pK4miTbEyPY9cjppabjR2A/fBceUIs0TN3e2CLMJ2ztTCY6RM3Hx3+mYqYhoVAN/RX7nwaIGg4cVM0kx7h0Eo5PT0O+gpeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLPUSx9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLPUSx9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9980C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753676393;
	bh=UuS8OhPOFu5JX+gW23gtBVCDfQbs74El7wuKs36WZSQ=;
	h=To:Subject:From:Date:From;
	b=sLPUSx9ulSWIOkzLL5VVUL5tKdrnYKmnShiOJAA5k8GAz9B6/9jKd/JDNK4cdOzhx
	 Unyn4hvdxfHkJB0G9wQMZbngqgNdEbixOLL/DBd0HnZMHz6VozsIyXWBLlrqJ3zEHh
	 Xt4obsb9HePnjjdmEuMp7MGUCv0eAPOtYA/PdiwZotU3skzsC0v5+D07qUCWFaNxWB
	 LVJdDZkFtCaYMWAPjM1L+iDpOX6klT+6iO8cG2pKQeSEiUAptJI3W8Q92zpF/aR3b5
	 OvsO/tUi/Ankiygkmdtd2oDBKqqHnmUo2fWkjGTkBGu77lt8p3W8Aq4k5Fv6BXCrZa
	 68/dP8vPYMmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9710CC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367639359.2690.16174593486772746682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c705ca6c8d220ffbe76b44632bddc13983acb9f4e16c9453de60435d4f34f6
Date: Mon, 28 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753676393
