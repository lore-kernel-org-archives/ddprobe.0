Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2789C54EEBB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788955834; cv=none; b=RWKub0nWRkuaZOmTWBERcb5B4oXRw+SszTWHn6x6Tnw97XT0rZ+yD97AhJ8V+s8ZEhl6ZG/Tq1T35gMyr1dEujUX3R9DzMs1gfdS/paa/koLZ6mYI8wXLX54RWnn5ezbbXMcu6yUG1zpgKEjjc/duml3tTOeaobszLR/n9PHWPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788955834; c=relaxed/simple;
	bh=asxoSdmkgYVhUfjB7IQu0hCCVpvYZ5hlzojnbWwp4vI=;
	h=To:Subject:From:Message-Id:Date; b=Xe4zmXslBdpTCN1gZkpIs0LAEB4Dc8O5NxlCDLU0bqy1sGWcHVY2QYCEgMr32sozLhTxRIdb0hozBMIRJpr7lq+pv+0QmVZaYVTt1zFhc4Ae8H8yGbacY1CUUlv6/qkLJbq/DQ3Fz4ZMM9RgftwXCB2VFVCq7C75zOmo7aVN7jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufXCl2qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufXCl2qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B6DC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788955833;
	bh=asxoSdmkgYVhUfjB7IQu0hCCVpvYZ5hlzojnbWwp4vI=;
	h=To:Subject:From:Date:From;
	b=ufXCl2qsmwAtbCpe29yUcuSmOK1efvFMvntZDdc5xF4QNUVumcXwsWKb+kJvuB+6n
	 4heL8zQTUr4qJ82jVoeSD3g1eZOhyKXZycFEDALvkB96tzUNb7KE9Fl6WX0aeDTKNM
	 ZEfjnsTI38moyTHWjZIqaythbNELZT6I20D/kU7Bq9kpZiy/dBTTlyn73u1TrWdUM7
	 Hr4OIKon6OqI+aUYHFo6UBMJH+NSRobGJv9yNV9kYvTKDrtJ7Negvc2ZuIeti1U7Ho
	 uMAzu4l9Ad9Ne+nfASFGEDYegp2knvsPrp9+yxLgej0bh7qnrZFBoKRQgt+wG62EOw
	 6jBxSwvtAIGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA25AC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895583368.2486.10661114662742308322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055238124f6f35a1b541eea819f204076d89cfc878fbdb03f8b6ad09b8334abd
Date: Wed, 09 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788955833
