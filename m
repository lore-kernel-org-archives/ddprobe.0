Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66742236F8
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750808393; cv=none; b=oh4qyYufZY31fNAKuwW2eDhvubrGZcY7zbOh5sBs9l0BJJhtZmJxBNRjI8bTow2xEQ7Iy4MsSkLO4wL5nxLQqGyyjtuqo/Zxdzhoc3BRgUbuYHQ2MXZ38oh8FBv9H6RRoI1S2NKCu2IApUgqgB5IiRU+m/RXRXBorqPZQ9gegis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750808393; c=relaxed/simple;
	bh=KlQ0fhJwbOAmXJkBNswdHfivU/oYT0ZhWybEZMw7GvQ=;
	h=To:Subject:From:Message-Id:Date; b=tvDHRyEtKA6ZEkYuLKfID3Zaq3d3Cfudem+8P6NoQGawgFL384mIjbj06Lib0bbJJZjPXa5w9JKGUthWN2bEIdbAOvNUeF1EBYwHpnzdUwjoifGVcaVjDvHH3jkSbszQJQxBRzNqUFqvfWqdGgIKjdkwBMUqHJPzx+npufF/9WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srd+ufjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srd+ufjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F80C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750808393;
	bh=KlQ0fhJwbOAmXJkBNswdHfivU/oYT0ZhWybEZMw7GvQ=;
	h=To:Subject:From:Date:From;
	b=srd+ufjNTmcQGwxzz3Dhu3Ha/XFBaUZy0TDHQXSdeetD4LUUgjd3zfKN2BtuTO09Z
	 tQS2pSgP41LaGCzkOQ3K2Z7k2vuNcVwQj9/mgTstrD24V/2yStti9eHIUAnlP8xwRm
	 XVbuIUC11opWHbOWs2DUnsWAVCbxTspZzIlSly9NAEpme+AmaoWgdpBE4uP1wmn06f
	 rtHY+61MA8neR8x1My3F2hUzE/c6EkBZp/kGn/735mvavETy6e6Yv/PTG8VHRxt5ea
	 EpnyD/E+fUB8wVFTuY7BJCpUgq4G958Rg0qpeoQSCvaeADhSzbFa3zk9yqOT1h08K5
	 Ul9v/TFjb4ZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7977C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080839360.3560.8283943573998253888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1b6dab005aabcf5fac1959532e95107f9dcd7839a34d2408cacb616c048037
Date: Tue, 24 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750808393
