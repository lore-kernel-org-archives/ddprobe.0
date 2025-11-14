Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF7A19F127
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763156993; cv=none; b=FqKUAqJIXs0fRwN9gmO8e4hrRiH63XHk29E+luhGxwUbIlcssMdF41+/hICZK3VIaKhDhY2qX1r6FOD/2lVqsGdSxp7OeygGIgKBlWPIsR3/bcNtqPaJezZ3AkCjQVJXYl/2ZZ6/tYlR6cb9zX9IgTgtghUX1TGZQeEZuYE9O3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763156993; c=relaxed/simple;
	bh=qRury8ceLk1ncFCYFcbO05UCE0/OHyRkG/aWqt1h5uM=;
	h=To:Subject:From:Message-Id:Date; b=NTpmdvDhfTy9XD53bSy+tBR5PdDbaCD0N1StFIIs8G1K52t6YgZB9csmt7/uczF5iiw2tXnBLgUMOZcMZLBwjgUNsVfzaWwB4EIkDc/6as8PGPZTem24kb34bvoe+tky9ArTvtMfr5CMdvmO/gILhfGy0B5zSgiQHD+vw67yns8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKWywY9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKWywY9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4EEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763156993;
	bh=qRury8ceLk1ncFCYFcbO05UCE0/OHyRkG/aWqt1h5uM=;
	h=To:Subject:From:Date:From;
	b=rKWywY9VRX+AureVgMrwFQ2Wb3dNchREw5JEjBVbVYS1wo6p59bsaUHudJjEtVH+C
	 uwXUnp/iSDQ/cONM1vG6sYI5np82ApHakrQ/akrpP9if1lhePLOitm7DHFptswxCWq
	 WaL+20rmrKmxDFiADTm4Ph8yKkYlo67WX56MzZU2CzF7YY1kZhw0jlkZX74tGqSMlO
	 XIerxFFQTflpnPp9VhKGNbazRnuqw3bEgfvTuDbyMqX3Qv51HkfLSoKol0f4B8CrVC
	 gsx2l0xXi8AOxkfMDTbNUnz42lEKSlBUAwfGDs6MJMTQgXwS8VO+SJ+c4m8rHf/VAp
	 T8qldE40Ra2Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4ECEACD2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315699357.21441.15975630608371785209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bd9d406f823ab677b16514acba82fdb65c7127a1aebe3ea0e9e56503982378
Date: Fri, 14 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763156993
