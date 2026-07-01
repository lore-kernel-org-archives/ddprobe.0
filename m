Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A62E2C21DD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916114; cv=none; b=SXUrrX8M8AjuanUBBs4PDGJoD2ttIIzvsW4AvZJ16G5Ph03Eej1KxpTERRSCUJnWlLxnKzaL04Mzc6oRpFBDE3Tnbx+YlK44p8iZuO3oJNFxy1QkzPjOxKYrV8u7l5SF48Bqil9XYDtlczkOIfI706fQcZk+Z4xsrU6Vjb5nOuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916114; c=relaxed/simple;
	bh=lbsRIj33hZNODT4dEDkqnh398AQxcRP+OPvYdOG7qXw=;
	h=To:Subject:From:Message-Id:Date; b=HPFwjoK/bKa5P/A+9Kaqmu26kNr+395Sq6DlK7JNGF54JUe16ZlI3KW0zzmuAvNaCYakGU9cpjmtSt4rtv/qFb+F+qugCkkyb63LAhDUWZey5AMWy/JyYY6hEyh6Rs0qVwaQeTnkdiwoeSJrLu3MMTRj4UxJD85ywelDrhMzQLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSihDPBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSihDPBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7911C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782916113;
	bh=lbsRIj33hZNODT4dEDkqnh398AQxcRP+OPvYdOG7qXw=;
	h=To:Subject:From:Date:From;
	b=CSihDPBMfqaCVYEsFXdtdgbEj9axvyizkY7y243jqwlFasjCzvfBf5fHjCWBZeveE
	 Lk1IB0hJWS2dFZdq2dZgSL60tfyfZDsbuVHaf05KEb+v7nPwP/o4MlTb47WRSofT3R
	 x+tzkjfBF7eNEWNaKeXumQ1Si7GED/K+EgicuZDpTNjgXnUHJ/EVJBsd3k+X900OA+
	 f+C9epfa9bBEkiN/JR5tAWYscdgHl1hCU9Tz7afXXLBqp/37XB32ORdHAJbXNU+cxH
	 55xgmriPPjbVg5BgfMjPAbrKEmVm16WhnKc1vWpIVHdtYGYED2vIhQH9HfllJ/XT/m
	 cw78+wa1niovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7ECC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291611370.2528.8909908036843634202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace586428de4039a409e918936191064a040ceaee24e85da7a445e7c128623ba
Date: Wed, 01 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782916113
