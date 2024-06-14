Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA614884C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718369903; cv=none; b=aJRVXTLBENMOFNogVZjCcA1W02bt2/c9LRN5AgBOTSuOOmPDMfNzhWs+6V3RK1dJwRKWrDQ9ZfljMBBeKtwbA6xnZUGSxIQtOvIhYl/aIpRkslnygkknT/40m0skHZ87FQgNcIM66VYACU7HSX16joBXFmNjOCKLVP28ZERqGLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718369903; c=relaxed/simple;
	bh=l+JEPxAO+r6pNY76seaTl6+aCBvxyFQ70wn5F+JENpk=;
	h=To:Subject:From:Message-Id:Date; b=AWNfi8YGf0zT0QdSaqBmegOL2BRVHNaeLr8XsavMo4AJk39jOIc88AhcGIpmpZmjQkW9TdzpMrsrwaF7WE1HG04JAoD5a/k3doHn37MEyAUJhOWh3+VkJwXicHiDM3n5m7yyPmsRdSH7gH8WSuHuIRU17KfgEn4nDKrqcqkoa/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjK6T28I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjK6T28I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D581FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718369902;
	bh=l+JEPxAO+r6pNY76seaTl6+aCBvxyFQ70wn5F+JENpk=;
	h=To:Subject:From:Date:From;
	b=JjK6T28ImEYJkpuFOcGpcEbcOybPxo2cufXOdf1Of3W7AIKMH3IUH8VUiH2mwXvWt
	 cZ1rdauB/0n6YQ/5gmwJ1gHZ+h8SwiBiydUBw5dVirHInR/dDb4lVT8E5GBO5jByst
	 DwIVP03xLbsUp2bvSN2IMHNOKlcLDQrjW8syhKIgAem95Kl+lMOkTvLEmU4aLSJd80
	 vui1liREA5ZWx/1PdTNw1pzgpq1Rr0NbYBorcKAPF6k8xak5q8REcYwnTRtTUCtxo3
	 Mp55w0kPLg2JXyBHBOJg8CJMjZajxkeDsoJgX0hF4vG85iNid0WROogwY8poJvEnHO
	 occ/NJs75xBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C8EC27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836990279.17602.10735834278464389957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990efb3f8c989ba9537ee8a43a8da1813567b53a6a3632674f342e1e0675aec0
Date: Fri, 14 Jun 2024 12:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718369902
