Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6263207
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717387523; cv=none; b=MjeTLh+6p+q04Oy8Lbsm8GGo5+XkRr1nHnhsFNL1re5zsq5daDagTX/ZfMMFjU3CTGAhuf0kHqHGIyNKgfVdBdUzLzYs3LhFXET2R6tNsiR7eMZy/pcfpXkYkpgI/t3GmQfUQzqCAkj8/YswafhCNO0CBpj0Vm79BxNs0r84yAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717387523; c=relaxed/simple;
	bh=s5wT0sunHImzfpNhWw24yPNSdyGpdl5q2AnwadBkgCI=;
	h=To:Subject:From:Message-Id:Date; b=b8KuOw2RYiXgXn8P9bNdFd4+GI3dETQLJNSVw8MqlJN9Mm1LuKXnnw3da1WlO6jr1UG1MD4+ZCnlYh1+Df/2ZCvs8asW1vplebisIfCjWHXFXFAWGVyIKACFsP+axqEs7b4ik4VFbD8b+VJOvUao+Jry/ngiBiphPFSqGX7cdBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFDR7N/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFDR7N/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E80C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717387522;
	bh=s5wT0sunHImzfpNhWw24yPNSdyGpdl5q2AnwadBkgCI=;
	h=To:Subject:From:Date:From;
	b=ZFDR7N/i3UyP7q3e+rOAfEBjmEHeYnBy3x4URfHNDO0TfXmJrNFbcQUodgFHO7xqx
	 7My2d+tK2rmbs/+mdgbv18IyTNZd637Al/Q7iz7nWXxN47JGAcoQfsiCDtYxjZz/it
	 x5rr/bVen/iqFAMMPHknK+xYvgJ3TFaNO931WH4+JghquzeWtP2pG+/ZAtCCdTkxSB
	 cJpUzGRwsN6v9XX3mnDqJ9vgO6+ApWtYgrqKSc/KsEc7ofAz4CsO3rPcVAdHvBuQRT
	 n8HqMR+az01etSkYRWsrHLUgwb5pZ1thidRYWK6re58Ps8AtnjLb9Zd8pY7avSF7kn
	 3YwpGO9jxlTjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE419C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738752275.7873.2431482738820748621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1857da556136062d697a03185a15e1f77926212e287662d5883ccc77e7c40e9
Date: Mon, 03 Jun 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717387522
