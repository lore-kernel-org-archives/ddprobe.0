Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9AF6F2F2
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770293034; cv=none; b=Mg04nDDHquCuAxzs2OsxX4jqeysT5uligGDqIRbbcCtmsD4w28Htwz7gFs5NkKYhc1zEsOrjpUZryysOdxgag3XiZjLtzTZA0qZIZ2bTTgxeRprEmrqlqezO2OGOg59VfLEbzQSyPgusdxdU/jthS6sDk7Sc1921Hw9YSkufywg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770293034; c=relaxed/simple;
	bh=qpGv9mf3opnH3zIeuaNvMHSBrKXnfj0OvGRtL6+Q0fY=;
	h=To:Subject:From:Message-Id:Date; b=pcOXeFODzx7aP5MXsLkVf0omWIeuJ4aWbYnIFSbfXCoY485UdpMzxMD9FCxesbGu16LZ3y1C+PqX8a0WnMUbOZCMy7ngHJHg1MF++orfCiKTfOftdKTEzwHhVsPcMwyy/ekjNoj1kWKSvr8Pnmu+FE3i4P/RZKXKkcY74eCouZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKOxVB/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKOxVB/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08B7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770293033;
	bh=qpGv9mf3opnH3zIeuaNvMHSBrKXnfj0OvGRtL6+Q0fY=;
	h=To:Subject:From:Date:From;
	b=oKOxVB/ENGGI2TOay65huC6sppOww2bZ5WyKwjfvLltuwsVHZLMrHAib44uGOi1gh
	 tT5/4Ld4VH02LfSjJnVSrOd0BhvzR1Zbtbga0CCQNTO6/cfCqQV/PoxshmUTLSsXJy
	 JyrMzDcVng1pnfVeaJ3WbmK+FI1R13td/v+qceMYqgS1DXYGJMSw9UXtGiiyok5+IH
	 hZbJx3GPq/kHOLjeLtczVhSLhlGF/501kiTsW6DLfMF29TQlxvJLbGixEhgAyXBjO2
	 UJEK7ZxpRkZChjCtOObe0jCAUh4swrJ5BIirAdTZBdSC9i+e4JQTJThmCRjc6DBRQ5
	 GReulbFCamL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C844EC1EA5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029303362.14108.280812158228752371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5325a7f2b29b68142d5507a18c60e9f4823170a7ba8b165ff2be9e15a5c18317
Date: Thu, 05 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770293033
