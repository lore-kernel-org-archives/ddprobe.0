Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13451714AE
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747512593; cv=none; b=BWvA0CEuRH+wn2lUhWel9TM1Tpud+wBy5fnJ65Hfm0OGP//yicGpeTakVuKgjdE43cSEfqhilxQAFXVdCGLb4YIeqNQb1xlMgjj2Qyjgo/JrNzDkOl76wRD+82rdJqvdTNXbd2fieQ40wDGu/ldd8fj/azSRMZe+oMPEp8jjTPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747512593; c=relaxed/simple;
	bh=dU/aMAEjWwj08ATpMX5DlDdWaz9gcwlv2BGqTd4JRUk=;
	h=To:Subject:From:Message-Id:Date; b=VK4E2O/MFarlh5RnVFzmRm94QUXNnmYGt6l5cVo3ogQLiPIr/tzST+wuJZ3ZUVgN6iJ6L7jIofuho/0v4TB1IERPTTuZnw7ABbHalI4v7hasMST9IQtw2kV8T62VMRSNrYJfgjXJE1ncK5FWkMv2t4e+tFwZwkPc3UhvDgjHmFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toQJSuXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toQJSuXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747512593;
	bh=dU/aMAEjWwj08ATpMX5DlDdWaz9gcwlv2BGqTd4JRUk=;
	h=To:Subject:From:Date:From;
	b=toQJSuXIpnYJJi2aDp4ntVc1JwRErDSBpvIaNqqviXoYNst2LGsdy8TXhc7Gh5hib
	 CPrMtNdAO9GR2qndLy637vpXF8eYdn3oW90srmajR40mORF2+q+IPBC6X9joYE4k9B
	 vJ3Cnzkq4Ffb6fjNHErM29ia6l00anIrmrT10H8/AJsJE0EdLLEC8KJ76PdRaWQ08u
	 vSOLTBaOFAkw49DbP1MWVFSegxKYWYWyeARtLuxE8t628/dCIYqOf61P9bYHq8RiGw
	 A9LDHq1OtpC9lRf6wH35jMJzIl01Rzf146KVETXwLM9Lmw405I+vaKWYjtS/om4UPu
	 RiIzDhfXGzlWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751259357.10698.15497498807157202695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e85a3ab390e7f377f052fa5f5aee1f9e6e4a66864e252d87e40ef103b42eff
Date: Sat, 17 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747512593
