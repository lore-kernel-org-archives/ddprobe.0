Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274F6184
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762733394; cv=none; b=WJJtP35Y+QFz+TF1Nh3C+B6f42r1F9ETdEjfxwPEsILYG+ejJrb+UeS9ZoqGLKn7euC1neZkDEg1g5yyRaztEfdNa1V20sZTNtv++CVd1INuE8zNZocAy3e8a0N7x+Kqjo2VcX6KI/0BsYRKqIRY3FtCluH7NJc2VUhzvSi+K/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762733394; c=relaxed/simple;
	bh=uQCrc1FPeaT2BpEM+a31SU7KdQe/MRdAfPT79F6IQYc=;
	h=To:Subject:From:Message-Id:Date; b=eVnp1YOny1G+O+13S9DR87OGznUhP080Ywq7XBkqff1y1TVgw/6ZsqPyJx8MEbox8FsXDb9z3f+EALy9/fBC7E38ZVilspsgUiBp5gBWF/e6orqYOcfG6Sm79498y0blqGw7muWyWr4L3SIexyDWen7Qlj0G0RUdKwVtkJ3U/HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahrOU0cF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahrOU0cF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9200C19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762733393;
	bh=uQCrc1FPeaT2BpEM+a31SU7KdQe/MRdAfPT79F6IQYc=;
	h=To:Subject:From:Date:From;
	b=ahrOU0cFSTjn1+v3zvWSklNIgf4UlyOXy+XzGWI16+QsOKg4YI9/9XMg/57w880A0
	 QZa3JMJ589WaCK2HuAMDsX0soHlMioIqAhtZwcmveS/6pfbe/cV6wqqg5nRaTowFnU
	 xFRscXcvt+EA9YObWeerNySymOn4NwjLbmC5dKINioT1GAKYr+7nFpllkvaR0m/1lU
	 Q0s9vw4ItAUqDpd/RfZRIqk1BckmDoyEbGaIj5imSQXAF2f4E/cdgbxY6CBEgD9+lJ
	 /f8VTB4nnIocZg+Ic/LltYawj8naP8npmpDXH7SbM+TJ553tCTpoqXsH3IGuGJ5BX5
	 1JvXEGwA+y6ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98348CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273339358.7382.2794924879013075342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d943bade4fa8dde0fca5dfcd8c384f7f55c7bbdad2c472acafb10eb7f0e93312
Date: Mon, 10 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762733393
