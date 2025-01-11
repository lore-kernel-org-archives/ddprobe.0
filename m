Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8702114
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736571954; cv=none; b=a5xxRZK16QWNQNOW/4FymLQDLFihlbffYSxq/FpkWXUypbqQWKMxpHcmL55bEXbX74RmG8UbKuYDJBU5RP+AbYaKxBGwpHqeNqN3ltPMfY3TBGq97qJ73PIejCczldW1B1vSndnioKHoK2obCmi/ezq+rtGfCuzQJeNfk9mdrEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736571954; c=relaxed/simple;
	bh=JkAURq2RaLYr3X+SIluZKuMbobxXVA9eCUwgMFVpNTA=;
	h=To:Subject:From:Message-Id:Date; b=IoYceJB66tQ1661T7Q1T2JsmZpf5qxd46FJMt2Gc0rOIkPmWym0fDat9SkFXX+sppnfeivybDBaTvx56Kopu7q8YUcoHNBDfc6EyYBCqVkBOzJOv8WcTANV/yLQ4dGYSE6oN8rLbne1y4h3V+rtKpwiy5sK7kvbs+OICgKiXvgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwYFB+uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwYFB+uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB524C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736571953;
	bh=JkAURq2RaLYr3X+SIluZKuMbobxXVA9eCUwgMFVpNTA=;
	h=To:Subject:From:Date:From;
	b=CwYFB+uzEEwo280f4OdSsy6jSti9daxyo45wopf4FUB4Zp9Z5+KjJk2kttPYyxlzY
	 FLit1IJXK7x2x96wNCHH7YYftt4w26ZbmjRLIEaYep/iiI+DhLo/EtUhRKupiAjwW+
	 bSIRoLrzkbZ5NNYVnePNp13KWySc4qt0zFPhQRPYtluk3CevtxhxyoJAvYhfpVvZ6V
	 RCZ53iMCxTar9lmaALx+hdq5hlvb+aXyhW0iV7S8cxtZmXi3FvkAfzOZjNDHBFn+hY
	 HC7y368KWVY7LFevPCQPbcwe7kc/IP/bkq0f+09N5O3+xd5Z00ZEuQqwNaLghs1qIU
	 zmciBFYkfUaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F17E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657195357.27990.2190314372749630531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d6329ff10b38b40b9d806fa1510221134eb8e90a343a061d5bcb65badf3c63
Date: Sat, 11 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736571953
