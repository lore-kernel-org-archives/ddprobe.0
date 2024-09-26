Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284BF2745C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727344554; cv=none; b=HpaqscWNKYJXnOTpl2O96eb8Zny0/9XfbJIXgWiDWiGOQFXZnngN2zcR9uzPfjkcMW+6qeUMcyUIvhDTFb84Z53BI43Oo+8t/MKzLuJuMxOCQBG93F5XodBCMm9EgLnUDXaCqNuIAkgQRo98ECA6vnM+V0pdEauORCuiFUODioE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727344554; c=relaxed/simple;
	bh=QteV3Mux3IpQIGbjfDC47Ae+iuywQqXoW5IOpINQWdQ=;
	h=To:Subject:From:Message-Id:Date; b=PqWaMWpKXixrKdj0lYyI1R831WCiXIpiYeSxF8QWsAJb4b9T9ki44CP5xS//A+23lJfE0spjdjgeJNGqP5MYAdHVq3ScOzzSbh8YOBrUw3HQDGQPyaQm+OV1cKDdIHwEev50zw7PDZMGZhZA4NdwlcAONSQdw4VepOYTPSB/pYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URnWHCqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URnWHCqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A31C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727344553;
	bh=QteV3Mux3IpQIGbjfDC47Ae+iuywQqXoW5IOpINQWdQ=;
	h=To:Subject:From:Date:From;
	b=URnWHCqyb+aeKbqxRbqCBX2YPwr1uRdKMiL0qfjG8OGuLKpn7mjUVQ2JvG1t2YRM2
	 uE0VLPkzJ9wyt7JZvycflnLZWt6L67JI24tpJXS/M28zL1DRYky+iXZpQbhJ0/burc
	 17m2vX+EQipdz8T7qsce0N6NZKBCtVYV3XUcB0fCHI5cb722LnQ8aM2BMT0PhdvlOS
	 RoP59zI8ojH7mtqmuKgS9FCRdbYh7Jr9h0rfSuZQvnL0DJ1VuAjmmGQ46nZoIGCsho
	 XH28p5NVIgKgSLuALC6x9f55HD4OZNhWkMres9veO5QcSVJRGi6/TXY3lXcB2zIO9n
	 xNYFXno3ySAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A95CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734455359.17593.10208522943438473238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff79998870186d949963ae10a378c31cf13a378e999ce86bc139916beeaac216
Date: Thu, 26 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727344553
