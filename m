Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0896134CFD0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770367434; cv=none; b=WE12SN55bDmy5yP/VsIP0eYZjobyEXHtgqxnTJABkJM9C14sQWt/1F4K9TVR4hXb4caFhGd8wE0zJDmLYiDekpsIlw8B0kvzhBaQslwaOlLZ4U0fpcAJE5wG/YGB8laypucottXgvifoZU+AMEEyUfSObzg+yg472RsJ/DxTJFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770367434; c=relaxed/simple;
	bh=5p2OEylALfRBm/89S3O5q6PqqpqfX4anzejW7FyBYy8=;
	h=To:Subject:From:Message-Id:Date; b=PaLgzHtHxVUFCbtAmfUT6yPEdQwHAR7tYqYDMMQbIyVvTuJZF4XulgJvjLLCISYVXIFEQgVFbJLG/wc3KPPsI2aB5IB6xfITAf/PZhIAK9Ia2j6/xTyDsf2ttxHgrYiVP8t1BV4EYFDiEv27m2CZTiyjNfQvlmW/R1hDQ6wvyOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDuVkgEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDuVkgEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770367433;
	bh=5p2OEylALfRBm/89S3O5q6PqqpqfX4anzejW7FyBYy8=;
	h=To:Subject:From:Date:From;
	b=RDuVkgEMR9I1I/GI5vH5ykkKmB9fwQCFrEIjv89FaCMeayiIawgzR8IxQGBKB7y8s
	 4KA4BcJNB8t3j8rfou52NiZ3SP/XaPz6wOo5e0lGdWj9yeTbB/MOP4sBqljaIDBsgA
	 YqrbIUlP0Fc3D0tB6sNVOVwI7XWpq+4Vqibk/wmTnHwQysn90hC74GxjJrAx9dbsju
	 Qi230aSPpMFTu0ZPg7zPRhlrbOsLlpCzzm0aqDu+Rc3QUcDQDitL5lY1scgMmNSpUy
	 Eqf2u7PPHXKQvkXc5R/eQb2zn1eIdmwJaeehfp9qr4VTJTkNU0WYuynBtaRP3K/dRS
	 2tf2/SGVsnUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93394EB28F4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036743359.7276.9680798073044347949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b4f2efec0dbe83cbed602d6b556a49db4ac950b5c275a39fb2b788c304d891
Date: Fri, 06 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770367433
