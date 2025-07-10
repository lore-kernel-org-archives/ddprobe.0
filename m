Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5C62D9EEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752146396; cv=none; b=IyRtK1+2vkZmw/2JXincPDVqS6D1ZIy1m3M5jQz5M98yFPNr0JsvaiJxXxmA2rs5RVJ1XXAMtGQ6p3Jcm68+jLp/yFaupCZdj4qGUhtaDjH8/jPn7WMHqKI14TmJ/pwljn5KqFPdPzK+v+A0oBtaEMpXrqhfjDezvBEet5V/YZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752146396; c=relaxed/simple;
	bh=3wRc3Hqm91sv8dN2ZgfhJQ1H+c0A0Tgf1LknFhwFmSg=;
	h=To:Subject:From:Message-Id:Date; b=FioWNPWrVPt9nlzI1IXipHXtZPr/Ost5BJ2ZyWzsUEprcPsDklMSMZe8PgqXSAjITeRLwSp+wfst0gd6n6qrvwQzj0N6mJQFXr8fxUGKjnNv4n0B1No148BC1VbYOjsTY2vjwlfHT8IAlwcJMxFlBhGndgwgheK+7EtWnDSKuvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNWtZE2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNWtZE2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26C5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752146393;
	bh=3wRc3Hqm91sv8dN2ZgfhJQ1H+c0A0Tgf1LknFhwFmSg=;
	h=To:Subject:From:Date:From;
	b=oNWtZE2EMJGX0w/qfS0M1oVIVMRea2XEyeCYX9OBjb+Q55ZOT+CpC0hy5yiOa/CC8
	 70G3X5NRYyv66vlS/d+vPsTc8yOUHs+u3QZVqm9Iox4CRad46k38lQudT/TdIwkd9l
	 2hnvdMlN0PMi3opEqXzN4+05YDdg88K7EggY8fu/wLgBISXStyT2FMejQ9BW+uJYHd
	 pDfQuPtEwWq0LG9wj5qTrjLgpB01p2o9MbjfNFBOs3h3VwTUnPHH/ayKphqeh8YLBB
	 Mh3Wh1rxiWKhVDlgrWQ3THkXibvv8WMETd+F5teCWypHG80JEVwJ10QRNiQD2rPuki
	 hgtqIkBTaq+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90103C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214639358.4404.6853297949312122119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b682795a3d09850a6310a26c321a4a1488e001f3ab8f83cc3019a1bf1cda05
Date: Thu, 10 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752146393
