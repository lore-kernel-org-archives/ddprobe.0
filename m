Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E193254AF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782421054; cv=none; b=RBHI1m1Sb9UaRyXKda/w3Qq44Bu7/jfA+LWK4ZFbvf7Nz6YBwxy2qTEVIaLLYwQ88fgKLDx+Gx41M1Oeo5wSaHN/v3Fdjuup0WbXKH/HsuROaKvU9Ni9wIFhFjDFUIaBd1S/WAp+i1Pmk5jmT5VEJ2bjA6w2rElcCeAVcA7XAEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782421054; c=relaxed/simple;
	bh=RmpoxX+x7kz6RkD+NfRPDn/y7NHnZv8sYrkls4KpuxA=;
	h=To:Subject:From:Message-Id:Date; b=VsxYZOZEjzcpkoVA0BCN3QardQUMhInDOVlcuGRV6gtW6k29S7D5tO9R7CviHwZ+3h10TRNT2NEOJXlLbdnNid9oZnKdYP3hFdUTveulTnXeZiu5tnrpPX/TUjMMABeRpdf7UGXQ+b1xAC4KygSovT+pT/IMrMnOSkvsqTB9kB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWeBOn8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWeBOn8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1459C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782421053;
	bh=RmpoxX+x7kz6RkD+NfRPDn/y7NHnZv8sYrkls4KpuxA=;
	h=To:Subject:From:Date:From;
	b=cWeBOn8wC/jie/D3fN2XoWqXoEJlUuc3Vr/83b5C7n3FL5eYEEw8qyXxL4T3B13oL
	 G3PujASCRL+TOHG71Q4aLTnWzA6fC1MWAHix4uEaJ7/OletYJxtEpuAlwoQFfC33ow
	 pfi3K+apFbn6CjHC1+/o0xPoc6mKOZNYGOu2MiSpI2cAdPxywGWqApCrzK+3UltHYM
	 oNQMRlVBCp7KswNLMdxltcg1JQZUU8VIRTXtTbBQ2SZyYvKUTZzqq2OOTXtwhTxXlh
	 mJJCvbqK6sqS/1CbiX3+TnZNfWSypZzV3MhF1+oOcWDsZCWq4edaXxXt3IN82gGLGw
	 XbEPXYX++987w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77E8CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242105373.28910.3867205329400570518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada4f64f6424e9c206d4b0eede1921c337f270127d4507bf868d5de2614e58f3
Date: Thu, 25 Jun 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782421053
