Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1461E160884
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732521354; cv=none; b=Ky4YVcRn+0VRzI/iej7p+KkbFFKviEJ66psYNGtvTdSL75ZQhUqz6nTi07on95q+/Dpj0cPrOI6pJbBOALGhUaUhvqp5CGJPv5mBb8LNnEnAImE/44cSvmLwmjWPedAPPbSiFoceQM+d0z+oNUDAapsN3bCpnd6K5vVG7dVDnWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732521354; c=relaxed/simple;
	bh=KI+u4Ey/NHyRCRNotaI7cHASV59nQvNFMzF/KypP8d0=;
	h=To:Subject:From:Message-Id:Date; b=A/vav/6NqA6Vshfjwrl2/cMheDlzSo0fjn8vDL8Gfd83TaNqgNCafRxy410WEz0lKi2/lzZCDlPOup3rowFI/QCyu9eek5qRszApZJXSczaAni7DY/SOGQ3ZbzApEKeEWKVeW2XKMXOMN8b/kf5MKlTweV7+ttjpm/la0gTeMuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FroROlob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FroROlob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DDC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732521353;
	bh=KI+u4Ey/NHyRCRNotaI7cHASV59nQvNFMzF/KypP8d0=;
	h=To:Subject:From:Date:From;
	b=FroROlobk1Af2Hp6SWLuNYv2UHoYMChwmhJNmjc14977Fi4mQmZdVZ8xBlS9HlRB4
	 k/r3Y92MpxZlOV8uxze4GmuNn2YNyCjeto4tTrYy4/tGAEJnOEXx4+cEbqjFLx3sgY
	 PJONlVNMkKBz7McyNMVhSL2SVx85Fmz79hnwnH9UHENpqTVdl2RgeAHn4TrrGmqRv1
	 ui7HKCCvwx4mh4v+W/irgy4v/qswDiMf05daDFdP4b33gzsDHNJtiw1cIlttSw+IEL
	 wh3rXO/e8c7c7IbrUkBsVghh5qO0+M7ocmPpBsybCJ1OmHIA+1rDno4P/A5uGDr3pL
	 w8xbkL3NfG8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D70D3B7E8
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252135359.6804.13502887155654503899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf47f3efca740f29aeb4ce3e8112ddee7f3a5ad887796b64855ab26f88415f44
Date: Mon, 25 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732521353
