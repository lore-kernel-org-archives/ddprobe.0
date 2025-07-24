Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300F72E9EAC
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753370994; cv=none; b=qCB9e2cSPEUKmEWHew2O1eCUiqQyf4aRmHnCB5ntuFLK8tq4kyOp/RCxYz2huWBhjE9NNdX5rsmQA8Po9sVfr+q7kr7/CKJAwjWpIZycoD0wYO5qEQ9/97IiMdoCf5pj54OS8DDs+bMJ42OA7Jp3q63la2HG9dy7q22s765RqyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753370994; c=relaxed/simple;
	bh=vWXLc511UI5lPquKBp5ZG5ddm5QTv5zwLsZVBTTtxIY=;
	h=To:Subject:From:Message-Id:Date; b=bxa58j1UzFQy5Eufbw/MXdAj060lvzb1fs5zL2meVYRekvwcUJl8Lyiqrz2bEvJ4dHGHE7SIMAsOBCjeFIdnqB8fYuRun+fbT/id1yNO7mv2xHc5O7SegJN+OE7GvQo+qba+GYDPLzbDKsiR73QEQFQsuz9d+e8bqX17tajL2SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9WQaBcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9WQaBcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A416AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753370993;
	bh=vWXLc511UI5lPquKBp5ZG5ddm5QTv5zwLsZVBTTtxIY=;
	h=To:Subject:From:Date:From;
	b=D9WQaBcll0dDG3RJBz9WSLnpCp/UeOrcjotdGod2TXH7wgrRyVbde8pq17IJwmnH5
	 d2+qq3QCSFsadEW+s5uUsbN5VkwqCbwZee3l45QXeUfvN2SMPHWKgcf2BVNU9/LvbT
	 mOYE2HqqjRyaRWSR+k49L0hLgcKH1FIK2y3hZQcrzDR05qaO/lhzwLLt/LxTkfYtws
	 4TiNugcbbm1cRLdLemxROlKV8cK8Msu9Z+H/ct4XtaX6mUE87lwcj59iD6eAdYrJxd
	 ud7iCTjBRI1W7V4Uqr+T6xkcPIRc7DkTAxr9DdR+/lEwIEl7bpKlN732jR3sNI+Uih
	 Jl1WHtnrHXZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9329BC87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337099359.25217.6823282241546636447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf41ba1ea03182be887b343379b2a2e9167166113721560704389c8052ab3fc7
Date: Thu, 24 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753370993
