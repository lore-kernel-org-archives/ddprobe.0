Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C58421ADA4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074434; cv=none; b=WwZ5oBrjbJm8RLAFj+76GLl2kDdlWbTdQrmH3CFSLd7ob8dgGBqony8BxgC84pF90Ew59fApTZaC/K4Yb7N1bdoDGwvC+qjocyVUrl8L4Fsm1uDCByKFgCfr1xQliQ257E7oTR5ujonKqD5JEs6Dnacrfu2/j/8YB2MRR1e6PE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074434; c=relaxed/simple;
	bh=ur10SCGssKiG9zODAggRkI4O/JYJ0VL3GWNrP/6prGM=;
	h=To:Subject:From:Message-Id:Date; b=cE2HD3SCO7tbrLt8D/oQAcfL9chnae0KslluhSPcb7UZ4laFW+ht82BzI0/hVzRRrpqNF1mGvXAHweRUfUPqzvuAxXzQmH0DtSdyqur9u9ThwynLyrhDY7h6O9CdgnXSip6eyYNMnKUGpIQEa/0CxVHPkCnlTMSY0GwlDXvRfFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBMjejtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBMjejtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769074433;
	bh=ur10SCGssKiG9zODAggRkI4O/JYJ0VL3GWNrP/6prGM=;
	h=To:Subject:From:Date:From;
	b=YBMjejtFI51FJqgYPy4p1y2rJylPm9FjCGpDVXw/pkK9sbaUCCF2GZ7MFSGgz//iV
	 OXkUmwrhvG10nwpmQtxQvbWo1FmiyzFXP29LaIPG2Z3kIHwFbCQRoSNeW7O9DFgIRJ
	 +BnoJefRXcgPgTH2VY5bqSD6sNTkoe3R5JxGo1zGUWcPlByoZQ7Q9ODfW1Kz0UtERZ
	 beepzImD6q+z8YhJpQU5asa/LqDomkgtElOlIIAqILK9XtrVKrzrVSrS4Q4H9ygvAZ
	 M/PaMI46G8X9l6noiWPB8H8/Mbg3rgp1sgCqrH1F+/MuzXP381NEhm8vhFWweA3EOo
	 nvgj1jauosdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03EC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907443357.20301.3170022130241223895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e53b622fa76881530c9c3c430516a9066bd5425245e104d90a89eea021769f
Date: Thu, 22 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769074433
