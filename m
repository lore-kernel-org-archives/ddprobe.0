Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503A718DB01
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787524234; cv=none; b=V0zKtImqbCZ3daokWMjcRkOXZTQ7akBEKHy7om2xtiMfWg4fFj0fDlcMCt59BP9a/U4uDoIZDiVsnVY5hpYlzQqphZl+9uMnetZuWJkE+ZRiADYxpOnewb3WlU3HnexZYovTgsG5ikDwKFTSVSJw4xhzyOBZhghh92KDDrruMwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787524234; c=relaxed/simple;
	bh=7y1EUlx4xXRSLepYGUzymTLeNsLE9xYFfLaPTn4wypE=;
	h=To:Subject:From:Message-Id:Date; b=klSaQnLOlkeLwtCYRHeQQfZVbuoxE3YteodbNpnvKRkCPDqUElTm62NP8mYKMNDRkSM4mlke9ZFztqjLKlACSzeh23fgNekcs3IDUEjarHaJMLr/eFaT8U+aGKGE4Alf4mCBZ+DefAtW4zRwythYjkUJlOOX2qe5Ft1yC06qGCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm5h9auB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm5h9auB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31FEC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787524233;
	bh=7y1EUlx4xXRSLepYGUzymTLeNsLE9xYFfLaPTn4wypE=;
	h=To:Subject:From:Date:From;
	b=Vm5h9auBNYK578w1bYDxxF34ADp7JclU+ZRQkvqNQsCPTFc3K9ez1OtWFghN0EWvJ
	 uOmR2wcU3z7C+mPI5rrKAEZ7q57OoAVgLNYrTLxbHlgWQU6IU8EBOdBj2kd+P1SF6c
	 h9TG2ov6SeP8lRMq8ttcL0RRP9Q+tCkAomGvc+GPFsuM5+38Rlnlg9nXQo/3wWpoE5
	 wUkBiUBLh16WayEvyzSNmCZlYEAr6qd3w3SrAF8NiRqS99fMixV8G1uvpUYydlpopX
	 POFM/Ica+AuWMVCv7L9HAGwehjXcfYXK0/wyG3xJoB5ggwTqtC/riFhTZEvaiRam4U
	 tby1t+Gs24oCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A63C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752423368.27037.1296084932087680611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669ff5cfc864f14d55500de4a278f3fa147279434c3be4be1a13ae839e7f2dc6
Date: Sun, 23 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787524233
