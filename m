Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1149E207A18
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757600394; cv=none; b=AqWj3myh+57SimilmRN65Hfy8s48ui2UOeKyLjlgQR5shxEsjdrAOWDNY1mpFtTmrrWQ5HvNtTMcB3gmSAzei5Ct6whFVrpJEWAES1DaocrX4saFOk9RfTsAQKsJzI0kxqdeTjKFH64qsoY4UqY0tyxoWQ7d4L+J+2OwQZqnBJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757600394; c=relaxed/simple;
	bh=m7Mf4b4j2NZrbX8xheCYQC+oqMZ60GrSp9yDcDhvAyc=;
	h=To:Subject:From:Message-Id:Date; b=JTrlzLlOeuluUkj6E703+WKUmCXFkwMc3whi4q43T2T+ZX25OKSxz422Z7e6ngUPUYG3EWDYq2ChGETTuFBPsFY0wXiCRGnaxXb4G8wOfIDsxRNBK5OeTQ6iCc2dhb78cxWF2s53+KgKEcheZupzPN3fyn05p6V15OTlAVWU7J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf2GjoZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf2GjoZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6821C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757600393;
	bh=m7Mf4b4j2NZrbX8xheCYQC+oqMZ60GrSp9yDcDhvAyc=;
	h=To:Subject:From:Date:From;
	b=cf2GjoZ3GssuHxKh90j39kjyNFPNBUqleqo6VjE+DJM33lkCKyxRXNGslTq2p17Ee
	 L1MHjqg/CXEiRqVhlQ/+xEKwlQWiwwgX3PX2RRy4P6zNqEylByFWEqwGI/cKgzeuuQ
	 j2Aa45MHwzj7vFGEsEF7ZQP8tOo42Xo13wvphqaZrgo4XtLQQxAoF8OR/zFjTQvgOX
	 i1JqD5IMOEiBqR64MUisiOjgqciCGPL//Ys2LlfrHYc5TbHYnvRvTSMO4khyER1EaD
	 zVodPt0nkNHVyFpqAw2AXyUAxLNcuv0EgrACuvMtSFTI2Yl6r3WP7Rxv4B7946whkI
	 NquoYtp08GF7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605BCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760039357.18357.7095535553556250876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7efc55068518e297f34217f4f2747188a60c14cdbaa89d74705f64bd80ada8
Date: Thu, 11 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757600393
