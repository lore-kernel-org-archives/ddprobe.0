Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D161F3B8A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784697515; cv=none; b=fdMGxaHlEbTfAC0X3jWbeHnAGLGLYtEmtKjlPHZp//mG3gzD6OgET7jzW8+OANwMyph9UYgLbBdKGJrv3D0ntqZYNLSx02HH1bD46zUbZ5pzyOnYG8UdpNpFRdu8H8W0cDuIFtLkxmgdrjLFMKErkawui3MESNTtCpjTeHq7nxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784697515; c=relaxed/simple;
	bh=FYjSBqxwLfEzv/mRlOVfrjd4qWvnclYVuoggXoAi47E=;
	h=To:Subject:From:Message-Id:Date; b=a1QZPxF7VRXL82ukvKsJEOmtvfn5raEXAV1tHhPQqWrZDIdGNTjaHevboxqCqxK6tIvdNsadf7rqdCg/iMiQuT818nXRFviPVPhqzGNBhLBRqX1/94gpO80sulzF4Q1ZpalCyIaFf919p2USSq7iUT+eDNLCn5gwR2p1TeKmZ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1bheaFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1bheaFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822D5C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784697514;
	bh=FYjSBqxwLfEzv/mRlOVfrjd4qWvnclYVuoggXoAi47E=;
	h=To:Subject:From:Date:From;
	b=o1bheaFzjdyLpdYzRKkkCEu6k+4nD4JGWDMTdFhwqLUfTWxg94z9a7TM7Zn8TxKU1
	 gpOqtzq25HGbGK1EueOjJdvQe2N7cwEshh2lPEzcCWNJ14mO29bW9UmcMNvTLsGiBG
	 HdZx0u5q6Inh0FLtx8m1ZVuK0x6bR6p8+74s6/cEdPiq+7tSUkgevzG51PBJix5fhh
	 zbeSSJTOWieCCncq2xGwEPx9UICcxWqXCXBZ48CK+fJI/5mp8ZZo/2ZyrXLPEIZVhw
	 WsIDiX3CBc3E1AUAdhkqNdNli2kfgvfQ3Fma2Bc2sAVqXkrxcxttoychYsgMM/41G0
	 rpjmyveYklu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A95CC44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:18:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469751400.24146.6034305702977736134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9b0d1be76f7057c4b34a7e308978e6b7d3ed38aaf0bf0266ea2eccd2bfe70c
Date: Wed, 22 Jul 2026 05:18:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784697513
