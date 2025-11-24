Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153EC1EA65
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763989314; cv=none; b=TGZsCCNUNYhvuf34pzR0mnZoXNlQcYKQCnaL6bXC0yprkoDucyrry08OFi1JYm1fonsESjGhf53OpnjECPz34n9S22RZiei9D0RV0T4KYOraQI12y53h87V0z+ZlHvEE535q8vjbexTX20pSlMNEiPnXFAb7ERDRGDuVpzyEZZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763989314; c=relaxed/simple;
	bh=pgoAMQvv6OuF2ZEl/yi/XtUbvjF6cdsvoJK6B1ylG/8=;
	h=To:Subject:From:Message-Id:Date; b=AKRdYonDeKLLujh2Pmo4vWBkX/HEUhGlZRso+JkqvY1fP2/KflGmCORFtJc/Cp0F8UksG7hnVoOEJAX1w861XI7hU4gtEkLSET138dY3Cxrpr7mEWlA0kanzYMc6yMZtwnL6y9iu4dTKUrbeJUvLUQS9Qyn5ZZSpxaDh4w2/ovs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jt+SgSOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt+SgSOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A332DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763989313;
	bh=pgoAMQvv6OuF2ZEl/yi/XtUbvjF6cdsvoJK6B1ylG/8=;
	h=To:Subject:From:Date:From;
	b=Jt+SgSOeqsoyPdlh4riF7E16qDnyMwGuKiDdSSSwyB94sxQmfjyzV16f/tPEGcznZ
	 EJj84kkcw9DTJFkYSafKK6CQgA4T787J5jguwAk7RoqWEoIlgQhUSyog0zjqykvN9i
	 /jKKHY5FzQXobaDylceie6lW6kNApbGsBllRYk1HYCfI3wPddQ89dSgL05a2aXJR/X
	 iVFbh0RWG5Yw61CHJvTREH+04S55d+ZcaFfhgjJQxZubwhkGlEcsfsg/ZzNJrd0vQU
	 8p6pkdgMHX1V1TeQqvFnJ+rbz1IBkaXt73kqGLUDuSSnH8IO7OMkkTaBaKH1LQ9oba
	 27qgVLgrZlagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914AACFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398931358.30538.9810255605049422418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a596ae152e683f7a6fb18cf9bbb9e02c709c1d6606f8141793e144718777dafa
Date: Mon, 24 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763989313
