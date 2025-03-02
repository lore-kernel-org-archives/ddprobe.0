Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520D01DDC11
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740923934; cv=none; b=aD45v39nek9WhdXqnAEyxpCxJ4cQGR9sfYwHbGJ7EbIrEHtoJY0BwiyVGA7RGgyFifMgyyAXsET6lNj1AX3I769As0xr8mHczhvUCFM1BV6RElPiB2EbfBvwSav21CgeRFBH0BEX6eXKobRqeraFLGg8xB/yxMb2LMY0yl7CVV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740923934; c=relaxed/simple;
	bh=0cdxW//dZTGa2VOC06Xg8Xe+gkLXkVYs3BfEODsdvPM=;
	h=To:Subject:From:Message-Id:Date; b=LLKMeg+WyprCi3yyE87cpF8AHUFc4Vxk77HQ94QZTdVHzdrYUFRvCmuIo4QkotdLi4GN7JyYaNzHMlmX0Pki2u78rakWxhTswA/bvGvf4qLkuFPGFta6r9Xapa+Q9sVBylfLGBq3xdiGw4VT5OmNfnm9vTr765Ac0v4s0o3EraI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeHib2zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeHib2zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEC9C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740923933;
	bh=0cdxW//dZTGa2VOC06Xg8Xe+gkLXkVYs3BfEODsdvPM=;
	h=To:Subject:From:Date:From;
	b=aeHib2zsCOsdWMRzqku60vwkqRDkVKsOw9tcEW39AOosMlYbPVHESW02qdUN9FyLh
	 nwdUnCo3+Jx/ONZ8dozHZvZQe7yBXe58LMqki4Ql+5v7UDhwq+m50GJRJ7X5OVMx7Q
	 q5xiDWBMTLxckTFn51B2DIneYDoJMCJ2HxiUCHsvDl5pmvHwl7DZuxBufd7psN8uWw
	 VHi0ZJSk45x83e9BeWEWLEKhdynXzrmWFB6iUz9/FscA8WVVqjuWipVYvoTIhn2/SR
	 m1FH92hzuz0Ao3RZ2RoZzVgBAgFVvkMLQqE5Jq9x9CabcbN8CbZIXjxHRBNa6IclY6
	 OZIVQEGkE6kAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57AAC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092393358.8534.10560207851587766020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69a1ad953dc70251276844a6ac75e4098d8029f66cb8e5a4acbd411601be984
Date: Sun, 02 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740923933
