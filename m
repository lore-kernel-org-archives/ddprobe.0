Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265B205E3B
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746611994; cv=none; b=jqi9NMDOc2ll4Tv3k1PGy7CijxOMIczD0m43WTBTU8sryp40gvePs5osVfTaCNhGbLHHugZx7ZH1MNyT8Th+beFRhCWDZJ56KEOYVOqclke5d1L3jI2b/Qr4jEMOkcla2Kg1LTzEIr1trbz3Z+rXXiC/HYHH94c7Tf4HeXF4TgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746611994; c=relaxed/simple;
	bh=rEiSD1bHELd6K27Qv5EuE2ZvnwiDb4G8I3bpK56PMVg=;
	h=To:Subject:From:Message-Id:Date; b=co3X/z/TsbcBI3RRWYzqd0n6lnkh05elQKQ0XrOA490RJzIWZlDbOJZY17OBlfDyECOH7yWSVafLfKlJ8dhhoFYdIvEr2KwvA+Mp/9QzArXqGQT2W+2WPFkc3dcIfIcai5tUPxTugevTo0C14/XLBVF2DHQmEHWwdJSSwve+2c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSA7fqSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSA7fqSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746611993;
	bh=rEiSD1bHELd6K27Qv5EuE2ZvnwiDb4G8I3bpK56PMVg=;
	h=To:Subject:From:Date:From;
	b=YSA7fqSDCoisxbec1LaSSZAClf9ugPcngVI9CK9HsgAZWuw0w2bMkVEbNVKE1/24q
	 u+62cw7wwdKA6iM5tLC6Zhi4HXGiYTWFnIFw7rBod82ovafzROinuQER7X9kqFtDo/
	 wIAQPqShzGwi1a/p0AZVjcmnZJNEj4YMsBDTVOiGhN4uagLuGgShYlzXDbBNL+vLyf
	 4Tqcqciml4yWc2ZVLIx4KrcjsSigEm6C12HZbZ0twRBPngIpI3HD8VQhfxxpaL+Jab
	 YpBMB9xX8glw7tipwGRDttMVIDcL8ivenMPAJDWe3cMVMX7iJTKw5MbAOBP4TIYC5V
	 wW0NmRNkvWSag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE4DC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661199357.7639.2368769837304983008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab22b9a2a92b44572a119962182b07bb60ec4114ff5f57d6a1eff5562e9a43e
Date: Wed, 07 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746611993
