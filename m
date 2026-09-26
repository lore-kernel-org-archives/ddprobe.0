Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314A7A95E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790425834; cv=none; b=AT1I/ozgnIQied2hW50aNjPbymuVVGUuR3/1HyWSahIQGe4D6QGPWPwNJFg6SxmvFUd1hnikP08knoslgIDUozSK56RKqdzNxHyATc0hKPkIfbsE7o2DTTMfzlqNt7Zo92KIdaLivYFp80p9An2Zleodf7t4IQZmBO6F1SZwg6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790425834; c=relaxed/simple;
	bh=uUaOdQ1mqpgASgRYbaLFQ+61CyQXjSgR9T2eLz7uAHk=;
	h=To:Subject:From:Message-Id:Date; b=hxqE4ixKY/JxpvqfcibegXKAP5CwNrPfUOesC2U6D9hc4x8oYHCvawy0Pob/nUs40pkR4y1ZId6J/nNHow21ns/UGofp5dt0pLJhI3InT0d1g/frnAF/uLf9cRYQqrR0onsBuLcSMkjSDnrzfgdvTeyWFap5quufriwO57z8BeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PspDVg6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PspDVg6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC05FC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790425833;
	bh=uUaOdQ1mqpgASgRYbaLFQ+61CyQXjSgR9T2eLz7uAHk=;
	h=To:Subject:From:Date:From;
	b=PspDVg6FAyFkH8Hr3rjMlGGzhnh0keliZUeLVweIVFTZFHcgA1ZqcbVeAZVTa3ETT
	 JUnuTB+ZPW8vzN+b//rBUVPt5hZbzGeOhvAY82EZvNwxy3j/36dwWKUyPwZ0j7Y+VQ
	 C3IX7fu1C3HXgPkR0eWyJzGE5d4PBWkp1JeHyFELp0i1IREOMzcZ0vr/68rVjiUdEy
	 ChEkdRWZ6tMBKchuL2qTSPUALEXRjx29LzXe9JefuVOAONUzVVVbWH1FU4nEg3uXW0
	 xSs0furPplQTyN+gR5WCDYc/YHQuqK1HKL9H3cMq/kJbphGwiAuCZ5KHzolfEmkVw1
	 tddxKaBvOCj7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA113C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042583368.2045.8467171322848775350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ed4519cb83ebf5cabcc2ab72ca084b60121c0851e5c58442051e6c1c44a3f0
Date: Sat, 26 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790425833
