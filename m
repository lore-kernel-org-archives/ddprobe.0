Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C81042A92
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737272754; cv=none; b=HWbTQ5Ns0MiryBfj30hUof8K8foLtRlh05PzqwxyOb4i2FtTNfcq7nytk+2CGhd4VsDZ4tzhwJd60ZGFS4iCQePcUBkFxjbfh7emu9qngy5g4Y0AE0rm6crwuVHQp0yEq0g6c/SWZ2bWRUgDqzjHTDA2q5W2VDFDyKSGvue9FUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737272754; c=relaxed/simple;
	bh=T97H9e722xu1aS2IFyGRDSCSwll/L4W0D7ShRBKDAMw=;
	h=To:Subject:From:Message-Id:Date; b=XhMd/Ahx3c+SfFJkifcjVXGI/olAuhJTOxuY0c1cZUA/RwBEyXvigQFO2dYku4uwB//85ZCUb7o3tYFY67r21N7u0IwqisHbbUbARfWuthkD9QaldDI2emLJQG5mzL2+ntuFQVv4q13uKBrpY7kNli0mIMgmwjmbO9/2p+YtPYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Th9Qq4p/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Th9Qq4p/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B150DC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737272753;
	bh=T97H9e722xu1aS2IFyGRDSCSwll/L4W0D7ShRBKDAMw=;
	h=To:Subject:From:Date:From;
	b=Th9Qq4p/Xtzgaa8hyLHqXHdIGuT+koFZsuDFfbXrzbqLiLHRjoEh0GR3w80gmnwfE
	 IS0+oRQIdDFViXp2l+Piv/zybvDWLuGWJ9msRsTm8n7JjL+ZN5W85W3yC0vyFfkCoN
	 bB6ckx60pTBfWBV59VnZq0tIVHnbzmfj1fg2ScIIA15+mEUR/92gAi7BceInGQlFYu
	 yjfuxVVTUmtTtDEk+lpoCFSTUyheQq3rOeR5+7C90Ux1fsksPYfG6eot0d2ErUBav8
	 E5+rVtSiz232Lh7+lMkTUdopc1wddR9MwLeSoJqpTiApGszQD/1DzUmjpBJr3PlI3m
	 pJyZcqj3cENGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D7AC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727275360.30631.3116928480249043776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f9fcb5763d4451178e823e378da8632b84e3525d822195ba77a2815ff4775c
Date: Sun, 19 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737272753
