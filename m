Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1092C1CFA0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719650663; cv=none; b=VjrEv0GVGzXn05yDWMDXy8Yp/lmGqbaqrzU474B8Pi70JsLe62KFv3JveO0cMU5gtjQQoLsXHgpAYiprwvbbnRo877EXZ0GamPCEszxtaQ6Q8l2af7+O+Q3Rii5iPHSL7QgL1/iJCjXPUBIRnny2N4BwHMWJFOa3DMR8msa0alQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719650663; c=relaxed/simple;
	bh=fFhQwf/PeOpzVsP0SxgyC+o97Ol1XOK7XSox5NeVdB0=;
	h=To:Subject:From:Message-Id:Date; b=UsqfmaM8q5H7yH0IQNOs9wafZEElwYR/GKZYaIbk0U0mF8BzQ6ROGJcqvkhaVXzuQA4sacrANE5bLCncBSKRkRjEzx6/meAA3r5/+f75PJeyRiIOJ+xdfQyMHiCrP9AK5nGh1SyOBThTIO19ocXXbB8Vm9KrzXbTAVziUNDI828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIJNyluu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIJNyluu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E299DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719650662;
	bh=fFhQwf/PeOpzVsP0SxgyC+o97Ol1XOK7XSox5NeVdB0=;
	h=To:Subject:From:Date:From;
	b=bIJNyluuR6Q6VIAUXEPLhCHF8Tl+acn5eYdsQNlP19YXgSEuWuYjd6E2q/MZ38Mc2
	 FrxPAiXgR7feAxvKLSUxcibKcTYPmNJT8xbtixfDGNwWaJdJ2Jl6vg1IZqxbx9jqnE
	 h+tiWdXLuBezuyt85IB0YMGzPPrtQJa4lSZ4GISNueZyTXV2ZnXTxu+WW3pZDKUd7S
	 UFS/+Gksjw3NKH2DZPkp9925/tBenJ77tFlRJkG0CF1pjvffmqWHAdArFUHRQckhw0
	 c7TAW9UC2Qe9pIKZPaCqtgW+uJuniZSdXlDdTG/BwxERXVrVzdetf6LAfHHf9oxsVg
	 5zkcBbPVLLNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE9AC30658
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965066282.14119.14299255384990500230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac098ccfd9b761857297cd410935c0dc795698ca8884608876847c3595337f20
Date: Sat, 29 Jun 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719650662
