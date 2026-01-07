Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C56D271464
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764634; cv=none; b=XNwJep3h5C2Q+MBYtRSkGjiHFv15seL1VUoYtb1Fi+PBE3vEkT6ZJm8qRPF9qy7p1RvJkJmaQeRhtGHyOwbEcyZ2kNq4MIKKs5LDgF4Drjm4KzGN/co3ntcofOEzIXA9s6bG7/OocZnBqP8d6IFVS97MKHy/ylG3hO1ZaHSNbIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764634; c=relaxed/simple;
	bh=5Pos8NZYmEBfkwgaoXQlaOXXXFLpa77QlfrE+NEyO+0=;
	h=To:Subject:From:Message-Id:Date; b=YcMe8eOvXCeaZp/FpH2GZ+jrMdIuHcx/fY+QcUt89qhC5VYHphVL+fQY25YzxLNk/RVXp1QDVurizSCeVBUHU2CMXwzUQGN1nqNu+rNXaXV2U9D/Y9zn4Q4QHJjU1DGtzoiAjE/QC667LzTgumbDByRUPXUMrocpZcQ+WjlpP24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwNpHIjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwNpHIjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2EFC4AF09
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767764633;
	bh=5Pos8NZYmEBfkwgaoXQlaOXXXFLpa77QlfrE+NEyO+0=;
	h=To:Subject:From:Date:From;
	b=ZwNpHIjbNc0AXxn+p1YDdKRnpkkhs34MH6TygDxj/ee48VPW/4w07s0UuHIDLEP7N
	 o6GoVz42QGlIIxfBsc9ISVxp5hopWDKC439OquiLtzzGkPCMo38L51IgkdUzuLbqpb
	 HV3IqSqqLHTGIYTj0iU4CcqnqSmkE4Hik+VIApwP3NGHZ67oZqLOjyQyvfadFOqBgE
	 BN5ESDEYsBPF/jcxUJ5gsnsBCXlSYcUbvjKNGkBgrpgmMgIT9NIg0zBRsqs5GQSIRb
	 RftcisDM37K0lsjmO5lk9kSrr36B7EfVE4pRD7LVW3KwUIo2beHubTJr/o4m7HG/PQ
	 8Cj4uZOKn6DGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9D7CF6BEE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776463363.32741.6289633188716893276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e31d0a336721881b4e9674fd7ee2f2e44a662159e3d829dcf0bcef3a517a44
Date: Wed, 07 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767764633
