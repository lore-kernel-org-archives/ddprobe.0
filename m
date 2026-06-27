Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300B1324B20
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782581314; cv=none; b=DAJFsYq2V58XkHu7OZa+1o5avhOcQAYdY9TU+iLmSMU8I5q7Icu1mqjjMFIgtzdE86OJ/e6jUxtN8NWLR/TpEG9UWlOnLRlyU62UNFVgbNvI2glXL9V+rZ7NVsVButabZ4Yaavz2FvdLpko65vPblPD6w61ag4HanJA6t6p1U6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782581314; c=relaxed/simple;
	bh=vhc4sRk65O5Qg+SH3CubhxEMNhUXfSAFl/lA6LXxE2A=;
	h=To:Subject:From:Message-Id:Date; b=jFLS+EH2aarhqnl1ni6TUR8Q9k/35W4PKpXyh4+l1WatVB6iinzzxi/+jURtjXKwMYHm6SBVrAbQqbiVb2B+Uw+IE4lLPJMz6nyszoqZBZkq/6sh5mDQ4SMm5ZupiXMClzYxX9m+PCPDqJp4nHyJqXAQkividELIeYHiR6/BbAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKq9D69c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKq9D69c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BE7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782581313;
	bh=vhc4sRk65O5Qg+SH3CubhxEMNhUXfSAFl/lA6LXxE2A=;
	h=To:Subject:From:Date:From;
	b=CKq9D69cKobuo38M5G3bmRp3VUY5SCGneC1CmFFO9qej42xAfFVdUv5+8jl00LrHy
	 vUUt76pwozRsivDM7yWPxlXrGHFYI4CYy/2GRRqgMrQYIQSaDNdRa3fELDfmvwuN7L
	 RKJx3fqMiQSRTImKPB6Zg2OCaRLhLhTgV01MS0QEk3MFwZDVUcOMGJL/0ArtZ8qXBw
	 v/wcEWrbecLZBZzWiyNKWld19eGzIMhNAczjenzguUWcCNXVyLZbjHqnjILMsS+fT9
	 14An9OT4nnWaLlEn2OPyFPwORMx0nk67aDL9dPBcd7lHlvD/uETuDUjAQHTReG20yA
	 ZcAIbF4mOuVDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC960C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258131369.26613.7367685496376918410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b690c01ec080280db052565e32c2cc0ddfcb313b0e0210c167fed1ff3e934c
Date: Sat, 27 Jun 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782581313
