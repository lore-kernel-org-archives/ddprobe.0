Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378EF15383D
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726917954; cv=none; b=siYfoe9t5By/HeRSduqvqdeGzv+4kxbUGkslbsKi9mMMrSS7Qj5tw27U2ALg3G5SEOEOgSXnQzA20wgbdmNFHhssU6lo/f5FNxoZHW6AxU0HSTidJbyFNqArRm/+XenGbzIVRp3imy59OiZoWIjscRr7hQNWVEd5XUN1SbShRhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726917954; c=relaxed/simple;
	bh=1QeBzNQut0cT3Z3Ukyu6MYrmFWfGQ1A860fxfxQ1AmE=;
	h=To:Subject:From:Message-Id:Date; b=OnzpaTlraWSiSoDeWSncCCxmTj6D56F0y9BLoGnagsvWYHhOQBtkB79fnbz48BErgbMJ+1hHXEEoMg9y+QFQm7JVjjSfiAvpTuJMkRD9q7fWLF6SHzCnrDcSt/jUIIoUcJ6D+6SGPh7qeG1fWcKNmldyz6g8BJxnH7fvcXncX9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgjBsoiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgjBsoiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B70C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726917953;
	bh=1QeBzNQut0cT3Z3Ukyu6MYrmFWfGQ1A860fxfxQ1AmE=;
	h=To:Subject:From:Date:From;
	b=dgjBsoiX45KLCuyZbCwdMfSrPnvSdCuXGc4sD1pxi/QOC/uLKcUSWHAVCmtgxxMxS
	 Ybpmw5jjkRJeks1l9DBTyrNr2xPQAZ0vdHHcLzXewt0O6lw0qS5l6BoVTjPYim6X5T
	 ThiqZfqZhGi09/Fc2pKAq2brIQ19g25lNjdc30FSYCnHW442caOZNgUrNG6WBn3PRV
	 0Y4wSMnWyLvZX3eG1AwzMunhjjZC/DAD8Kuv/TLgCl4Eegh97BY+iqFbQcqkpcLbRE
	 ZA7f4/nVtaC7QvitBYhBOp8Vvjw8EUWOreel03vsYcMlrXiBSA1PhxxrJlmUrmXwb/
	 ERQXeLri7sSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B48ACF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691795360.13481.2240876190278074817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93e48a546dd210ccceaaffc7ba796eab660f806c403a2fdb891c18c744cd710
Date: Sat, 21 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726917953
