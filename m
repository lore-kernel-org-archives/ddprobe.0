Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5171CF284
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738337154; cv=none; b=cjcQ3Y0NR55uz6XXaPQOGszlrLnT8mFW4yFLYM14AuUHkNTNuTErFm3yCpGQzjXjHP/rlgjUtTKKYA/9Iv4y0wZaPRthqN9nQw4xf3zIK4YOrsrTrIANqdFIqa2AcH3afQNHbEJbysciNXb2qMkcGTjkKAn9AYCmBc8DutPV6OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738337154; c=relaxed/simple;
	bh=Uc1CiPvc/0z3mE9PLuAbVTv5USF0WslmGUHXaGvdvSY=;
	h=To:Subject:From:Message-Id:Date; b=FXxRuxsvbABEJzT9PARAae9BgrcFUNdt0FRRn1iqezNb2e6/ZD2RYHD9gvQTUXC8PKrl6voyxZl0quc9Epyq2A8onyfJLWRZe2F5bzvx3u7ZIlXbpTp/ntnj8YzCAh0gWqr90nDVisKRxSjgCHwh+FyyloWUyp5YeexkANyiSXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5kZsMLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5kZsMLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD64BC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738337153;
	bh=Uc1CiPvc/0z3mE9PLuAbVTv5USF0WslmGUHXaGvdvSY=;
	h=To:Subject:From:Date:From;
	b=D5kZsMLnzpMzsFdbRfaY5CeAN3HkrqSqix15s2f96WtBnloj27BuzxjS0hXy+x1jB
	 E2eQfDJGMsqAdEfzaknh/SsBEgVzjayZtdWUEZDgov/yNYE6HKod0R+VCU1CkcZNxW
	 AEAsn1FyjUd00E2zyKypzRgXsIrzeh+C18g7DWCrjWBBcpD2uA7jVaA3Ua7PnaIQxx
	 m80ak7WakS7cOmCxuemYXm8goGEDnMeo1Nuwe6A904eWdxtcaAvIVc+8bdbTF1yq8x
	 kR+L0+GcMtC3AUYTHdrlR6FyiBaGcYKKfgaXe8ZsMl0PplljTOflX0obobHTbrmSdc
	 eMIhQsgZRv4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969FBC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173833715359.11374.10631379867995420526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a61c559e131a4aba234eb0b2483f9b996d1cd2998cfe42c2426a92aa66a38d
Date: Fri, 31 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738337153
