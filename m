Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34009CA6F
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789211434; cv=none; b=gOGpWCes0h7qRLMMZTg4SGu/6+ITQs04bj6uKM274De0abH5JGigquaekP82VWjs4kzqFkom7L7Hcu1oSzU1gJtgNPYLuOrOdE9HcW73OzNXo7yyqqVCK88QaE8faRa5VyrdAppHb5Gus2kNj4ZEywnTmLmLk2fkvQqsQLTEx+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789211434; c=relaxed/simple;
	bh=QykSa/ddzUyxVWP3qctAaFIbemalgmZG6NYqO/6cS/Y=;
	h=To:Subject:From:Message-Id:Date; b=ARERT4OAV41DMASXoG7eUtCEwyo4FG3GZaoKRdVwrxk0glkpTjq/xiVRFYrF+jsOZ8jSmUlJC00HC8fTbkwXYNijH6aoKImbnwAp/ype9/Yxip/ayC3Q8tklZEIgUdRjP9LMVaEFmu7c4a7kHX2K1OGOnUQjCb8J+4Xe4/947Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+4TQyrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+4TQyrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA30DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789211433;
	bh=QykSa/ddzUyxVWP3qctAaFIbemalgmZG6NYqO/6cS/Y=;
	h=To:Subject:From:Date:From;
	b=F+4TQyrwUhCXV6GU4r2niNbOyZyPkm9SqXSO+uOy1evtQY+vsmOCqHrQCTWhRC7kV
	 WXcvx+yJVVZvTPbBAbgTMDB7DlTYTAvUJ8Ew/LorjGKApWkPKi2zztAWCAmqjA2+Ep
	 bO0n6o4aYLTatvQrqYKuDCDLaVzmASAES6bWpMfioWh2r54anQL81kSh5HZ+ApxH9N
	 pVtr0QuLdoaTckVpuW+BnvQ3pkRJjBQtdyPwmJrKsxt/xj0/PkkP0dWRtOUqQS2vEW
	 LkddsfOxlouvR2I+aG2j02Zt1DpqWRYFVxq3gPz6LBdyi45Ksqyqxmwtj2y9XpnHza
	 PonAwmAAWVOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9018C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921143368.13154.10177266906280412584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98644881485cb10283aa6486a383ecb0a7128f3fa18152ba63596b2b2a47d6dd
Date: Sat, 12 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789211433
