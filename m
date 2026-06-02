Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168673E0C42
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780408474; cv=none; b=gLxEhZOrrcNWKxO6iBL+Zf3I3hCfKvAUvd+QOCjkvwEUsUjnsmIeT8CDgo0DsKmZUFPLjm9Fu50TGDa+ypW49OaCyLYGV0wi1VkkSmrtGZyl7RXBUUsCSj90V3KDK3AogZZTewCrjBS8XwAs9E/VLjqzK+9cSeRPLVPx4dHEZyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780408474; c=relaxed/simple;
	bh=OkEfgTHJdHgEOggm+1CsfiWSgdo1c06V7u3Ns77bC0k=;
	h=To:Subject:From:Message-Id:Date; b=dBDzBOhNoD5ZPpQcxbJjen1c19og3wkSHTIIq/Be6YilWNi7DHUeqYC2oniIHc4P9jPbyZD+0LnCKeV8/zRhu+Hh/lT7Te0Vm8dYwLvaqP5XdOV6z+AzCATLvf6Xg/z2x67SpMdF56ZxAx0nqAkv3dTz8VIoXcSEMzUSZnO/zps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCOI9gQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCOI9gQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6A6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780408473;
	bh=OkEfgTHJdHgEOggm+1CsfiWSgdo1c06V7u3Ns77bC0k=;
	h=To:Subject:From:Date:From;
	b=OCOI9gQs2KV40QBBlzEPQeIKdGSoroWLSl7yJomuSr3w6CaVhxso79dHR3AmQMVzb
	 bYF9YEBuwZmv2ZnpmnA8SdVrpUnUPZAEg3z2ef3g7KQBp7zmKi7ccMTRyJpzy30I6T
	 7LyXYZlXx6MIBl97fI4Hhc2/dQaAqp/Ama/jwgGxjcZqZbja1recw1BCXoC6S3Y2M2
	 6mwMvNQYeJZg2YHKGm/LrcoNMgj5S/Hn8qJcVShYFT/CvInQfXsyi2pkmxE/YuwVCQ
	 2BlvF6tbbmEhcFJoAEHL6o+U5ljEv1xP0nMz7VtYJSBHvaOL0XIFT7DZIRwQEPqsqO
	 yPOQxTkch0vEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0593CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040847371.4350.14171835819961956942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef816bfedd43cd7464c99037fe1c86fd580dfb3db2dd5820e859e6f64f13794
Date: Tue, 02 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780408473
