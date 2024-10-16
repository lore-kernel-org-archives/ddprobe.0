Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337AD202644
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729068354; cv=none; b=bMTzwibS3IUnC3JsNf1hnzvoCsi27fCmkFVq2aNUOYWgmCdo+APyIz4goeBZPhm7AExhI/c99kn5QjxcCy7EHJDsD5nk7EdwO8S/pkOK6uF9GsXwJk7Wx5YgKWdhf8mNhpv+eUH4Nsj1wJ3UTFRA1MCrf3+mDu2VTHruK3jgVP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729068354; c=relaxed/simple;
	bh=I66nH5CYYA9H6P94DsnJTwuVS5NoVpIrEJ0oSlSSV0A=;
	h=To:Subject:From:Message-Id:Date; b=faDDrxj2asSqyyDnLExXRGVgCRv85ZPTf7cOtVLrjBE2Y1M3j4U92BafZUPBinhqCzUZGzfnwQeLhLph706oTrBAENgCVY/HA9wmI8eje7bth8bRtBAudQYOpDjp7LRWKcJQRqoVknpm51uT+jj2i3f6ouh4xQLSgdDgWc/qkng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPfX+DWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPfX+DWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA18DC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729068353;
	bh=I66nH5CYYA9H6P94DsnJTwuVS5NoVpIrEJ0oSlSSV0A=;
	h=To:Subject:From:Date:From;
	b=CPfX+DWl78EQtzLVUalkY9+vckK1Ez/GPFEAZL6txaJoaWz3Qe5KrjY15bvMnwbUb
	 VXPnkxWePAsdvQx+FWNp+ES6LqDzHS//YiAMdodFwruXlI61MsP5zlKkqK0kQlFzZr
	 3E9CKZOOH/drGPBnXhvuX6AbxN1TOHp2mqLUFishwPLH8vv9//ALCrwrFBxq6p0TU/
	 iqI83T0QfQOa2i9HnUofHN8NtH5I73ySPz1k1Vf9moJ1Dgl/FwWMI0mqJTCprjC0cM
	 FW9uw65cEDLgPjQqvqvdHEiY236IcD6lQfl+DoHv1Z+OcCixiSWiTNgGFnmtbEoMKI
	 l9pwnB1iW7s4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D42D1AD2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906835359.12455.4607986447242251727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d8c5e25c6c70329ad17df48e4727d519f7263f4052a2d8b8d8f189c170a8d2
Date: Wed, 16 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729068353
