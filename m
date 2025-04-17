Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAAE78F5B
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744850394; cv=none; b=cFmqPq9sR6TDx221OWGwaiuLtGjqcUY5MeLqFaSfOBtO/+1MUZOUDjp7EX8Vxm1DK4UrmTsyTXoP3CkpLahztKN9pB5+RRrjB+ZOVsaG4faiENXDfdqM25IOZ/Er4V8afNIkyE+dHgwz3SiDlbglEZ+mSJZ8AbylHfJI7iM4Y3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744850394; c=relaxed/simple;
	bh=oBN+kBlZeWBgRylHONICSNYJLVn1OVw4ukzqWXZHmuc=;
	h=To:Subject:From:Message-Id:Date; b=NPU5F0xTq1hKuQcrXmbYeaZUA7yUmzvEgGw6u3mEJZpuX0sayaQnTBWL6dhdvohFq5KYolSDGd/dITD+rpRrtDHXMjt/ajcTWWQXwKHASl3TLdgk8Y33jvu1PAdQ1Sb+UXM1Bs2hC6CZUaQxuEJ8OYyePYJgIgD2TacVk8tVtBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfnGGSCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfnGGSCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59E9C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744850393;
	bh=oBN+kBlZeWBgRylHONICSNYJLVn1OVw4ukzqWXZHmuc=;
	h=To:Subject:From:Date:From;
	b=lfnGGSCeUFAkVKPk3xrDeQQt90Qt1N76uBoy92etyNq/9nBW+uWU5UEXRe6eRDlsi
	 tlEsDqs+LpxzGEs7dNn4v5mjEr2AJfasJlBXDIxG+VWW9h+BfLFjCcomeA20zuy6gb
	 wUuaYdET7uEsYSYOwqx1qadnS8HU9RtLYE6zOKaz9wtIA/UPQaaWLCRvBCUsJS1/ou
	 vj+KZEJA7mX+g7koGHEJ6tSbuTDnrCBlca1E/cSOEN/ZXZxBvPN3WvlwAs6yiputnN
	 p9eyO2VHOaENP7N/3GfEimlwykowslg3ci5VzrlaFGXyrdz3V0Rkq1Cr5L1QU9FwLN
	 trrY3fSFCGUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AEEC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485039372.19137.13759349066502682721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a09bfe3bf4f718c5bbc8c4ed880bbd753286ff96ac1365c80b72bb4914ca66
Date: Thu, 17 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744850393
