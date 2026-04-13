Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1C1548C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776068254; cv=none; b=Ci0ak2kJt1gGs4T2FKtQ8NfBbdtdZSFTcylOYwmkiYdaRz/Xe7I4FJCfarjl89akBj+lHFQSdlD4E9yDTt3RlZsipwrDNiuzMB7yWb2XHJWKg5Ps8PLdCtmYx+q1/ukWHAv2eZItV+2ErmdmgArRx81DqPpeVv1cqqTjWKNZNFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776068254; c=relaxed/simple;
	bh=LWHbIqdMgyZr6OTuGoj8KWgdy1TTjltx8oj1z15+d+c=;
	h=To:Subject:From:Message-Id:Date; b=Ba2cUQ2ITiDTSScihg/klPGA631wMWZYv3M3+iaAQerOq1Y49JEJ8+XANFWebfEwM93BXr8L/xpDTVYSrTa8tkngaYfrXQYCGYYDjPKFXCsGaAWGMMwrKamHEz32AaSygJ61WFvBGogHv4uPlIGW0pKQ8bcOF2ov0FwTngWpSKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbRPm4Sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbRPm4Sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9885C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776068253;
	bh=LWHbIqdMgyZr6OTuGoj8KWgdy1TTjltx8oj1z15+d+c=;
	h=To:Subject:From:Date:From;
	b=nbRPm4ScjrHNebEHhBffYZ7iNzYZlZTiPeSqFfzCNF2APYcFVKKPCFEjwHucwuFnl
	 8xSSlF1AK+NI0GD1VkeHITnx9CvhNRR/ckDpCuMgEOOU8uX3B/qvPyT4O8BoLQ8ehw
	 1YJZdSOVrB6UCF+awFM4LgaFCrRqtj5y87sDZtlch24PUOIY0KG7eqZQnqQ8beoPpF
	 gxJPEv7svNndk2Udk7wRtRwuSnaLkeyNDzeqiBUpZNmG84b/M3W3Pn9AkHdaFbQUfY
	 p/Za9CbBBOE9QMzfnpTZS0nadlJXl6/qzoyEDV+E23xWJUYhFRaPpRa8dnJO5qACKu
	 rfq6pwTvbiujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E04EBFD16
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606825368.8436.877035755348978258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695ccd704b89f5c46317ae3ec18e40a1569340af1f5ae5713ecf92552beca3ac
Date: Mon, 13 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776068253
