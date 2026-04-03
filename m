Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CB720DD51
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775187934; cv=none; b=PtFQUtn7FmsEBFk5n8n6HQAq5DeUDIV0USVaa920luadQfHdr/qWgSxa/I16PHUbCWGHeJPQQVdrHWiCCoCpmWh+CFDADK3MtJP0Tq691nXAc/1BioTIB8/F+zUgrYdbY/nijKyK/x+8CTmQlSqHPTzuRqWZIiDyWKd/VehJ1Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775187934; c=relaxed/simple;
	bh=SBDKekMnMgwn01JfMAEdwH0yBDFcEyqjrCHPAPJHlTI=;
	h=To:Subject:From:Message-Id:Date; b=poCOO54jSNrHWYNW8TY7uCICSLrKKwzxT1GBhYx55dpZ7uMlP1kipsInzyA2XfAQxxcUKQ8XL0Ag9utQ9JHScwAg4gSEMKgSvHrUf5FabuuaiwzV/pc8YQ2x4jgn/Nlw9I5ctCjrZWDSP5PuGe1IHI5fpvBx/AUn3JKMphm6ckY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYwXneq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYwXneq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3945C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775187933;
	bh=SBDKekMnMgwn01JfMAEdwH0yBDFcEyqjrCHPAPJHlTI=;
	h=To:Subject:From:Date:From;
	b=oYwXneq1GYAWd5uHW9DnaZPAONOFeGKFnhuPPshdY/MpKFkpvzo4ObWWaCdNLUg2O
	 XvFehnYishGGhPiUvz5C110Kw/hmHz84Ic3J2URqF7J7+a1W1D5LFwzd4+a2YZvAfX
	 oLIrZ1G23eTBCXHS4Z8QzALjPfwq7MFLS5nebN1KHlJ3hDyspiu5V0LBXmfRz4CZUQ
	 uLxjNFA2J1h6I8ZE84hg5Y012iBZHx3TpuMvi2/jyi7fF5W34oebqqBeCifJxx9Btt
	 97oSYO6NYhxK/goTYn6bnVcDRGrp6vK5hebbGdPpueYJpxTkj8dJKQJBMDYLKv0BIB
	 SjK+kOVrs22ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0FDD7308A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518793369.23134.7902980015284628015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f66a54f8e95e16eb80f586e408f730fad828ddef884d33a32876e09bc3a8b41
Date: Fri, 03 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775187933
