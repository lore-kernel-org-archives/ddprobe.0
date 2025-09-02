Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5BE345723
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756838394; cv=none; b=nQ1SLBkK8aSB4zlkXgc0BiqHNCvJXqO+1OMQv0Jv+6v0oBPuYzTIHZud23cc7eq+1etWR/x+6Db05bdpADoc1JTOBo+GEqLzfA9H6zR/HKDsoFmY9xc6Rrqo8NAdv1hgv8dsNILof1stp8jRBkN+7SI0P7PDILbOJDpFy/+4/Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756838394; c=relaxed/simple;
	bh=U4YYZG7hv0kA7TjQyuzu5ogIq63AX0ksSQgajivl3G8=;
	h=To:Subject:From:Message-Id:Date; b=tXuvyrERv1tnER5j0pbKJ3Bu+LygIVuDfaq1CF8ODDwpx0UKceLmMTvdIOe1PVdGNgsfZdvXE5LdhS42jvraLv4OBI9aHs5zCHOOAcoIfmSE7yvd2YE7Y96GGtLzDB1EdtsijHK/CvPhJ8vEFx7awrZT7Myhgz+XJAu5Pn3z28U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiDBPvIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiDBPvIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80BEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756838393;
	bh=U4YYZG7hv0kA7TjQyuzu5ogIq63AX0ksSQgajivl3G8=;
	h=To:Subject:From:Date:From;
	b=FiDBPvIVtnww3LzLHQdILu0wUI6kP5cNoLV4DcwXPE7PZ+WByBQvzHQk5eBYhbH2v
	 3GdzLMrD3rvEytS2To3CO2THWS+bIzcUHMScewzVLEcVMEmMPoYlsGbTY5jCCD3lwt
	 35G3RpG+TNzIIFFA1Q3F8/XTdU39Kcs84z9nn14gytT8fVEb1dgpntrvPJUTFdBwgY
	 hjjgmPatITRdPNDDrpLXBQSvoDQXIqk+zpVZ5omWMm75Va2rvMrum4i7I+/UQgUGpE
	 BE09gwLmKpGPcJdiNAetqHqVeTgzy3Cf4sEkLCgs01JtkMUjbBKXAFarBcw8bf6eon
	 oqgmjr9XaLp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADFCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683839357.22197.5547129831714991111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b8e011b55bd68006a12d0c2c5022218cfae0dab829b70380a9e8433a7955d4
Date: Tue, 02 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756838393
