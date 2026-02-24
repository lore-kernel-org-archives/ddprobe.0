Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DAB1607A4
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771907094; cv=none; b=qFwenNmebE9+yTiHnRBdqnYfn63ifWC+Sp6gqCckbdLayvOpBj1eAMSOdL3XELkAy0m7yFFso0qL16BThOXx4At+A9GApUuY16dFpuaWK43FhUyTYFRzxwN5f64ArpNPqVworC9nVkl5X+H/2FDBlhCAfQLsrDpcUbc4CP5QaMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771907094; c=relaxed/simple;
	bh=ffDSI2rwhyQjAUZeWtnFkXWfR7Q+wUmB4GJOghVvYj0=;
	h=To:Subject:From:Message-Id:Date; b=tyava9g08JpuchcLGTaD/k10YBB050d+WJ6kG5uC4LUptlOAuOBSVgXlPGwqe/YHsDNT1L1WyuF8Ut2Bg88wAfGXfRv0TaXg0U8w6ucFbZ2y6Mnl47sTavQ0GYatDlA5yWNQ1nxEqWGizqYM+OJ4gcvoRx6j7exSaPB5mMXJoR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhPc/sge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhPc/sge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D016AC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771907093;
	bh=ffDSI2rwhyQjAUZeWtnFkXWfR7Q+wUmB4GJOghVvYj0=;
	h=To:Subject:From:Date:From;
	b=uhPc/sgeze1XuN8w3WwA2B6DASzXZAtsdnLouhhAGb5JU0efeI7CQ8BL1QWOx0lt9
	 e29J1r4IiOscqrDEqBlxhqISzO0Y3W5W4djyZ35dv9b6dX141M7HqpDjPuuYJnQQjK
	 8BOdhFqunQho6OV4/INQxwS83yRr5sL696jZ76FRkPSjQ4e/pjH/Sfv0jBTDChBIQW
	 OEVPSb/CbsNbIuT7BRsam+Scw78fhyZ9XzIveIQFBX2XxVhObM/fd5o2ks+Ysn4VuC
	 epnrD+WFyeDVkOo07yS6lZq5wck+8g6l0N1/oRtznYIzFDDmMPVp5fa4u4sjGOUstf
	 hgLLkq+clb/DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CAEFB7EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190709365.11170.7984287694909647343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d4fbcbf9e6e3b73d2d7e858a3cf45569eb654a9d454f7569ddfde9fee8aeae
Date: Tue, 24 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771907093
