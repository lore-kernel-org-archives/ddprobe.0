Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC2D2737F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785880834; cv=none; b=DHR8djKJH9RldhQ1TNp1G70JJy1njHL3hD3Tyd9jqrBqr2IROpQSCiJg5xmnbtHCbQrkYcghl3I1hWFjhW2oWgQs6mhk9hBLbioGTK9/cnIiopUlfAsbd1HSIIs9IECCcRdpk9HnLpxKnJYvLxqcA92DLoocWRaKHCw3sKQo8Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785880834; c=relaxed/simple;
	bh=LlWhxLE5RHZvC6S+AOoNtZSQkoZ3N6ZrG4abpV0SPaw=;
	h=To:Subject:From:Message-Id:Date; b=Vpxh6r9Zj0J4BzTAUQ73oLJdXlsPTjrZ7RkCrILQfDlM27pa5pa8c6ypu3CrblgSliXhzfI4ZxmMskfVOORYPmCUkj23EsT3fxBh6/4W++/h7wnk8cte2p1Zc2TZyWMypZx0ijtfZ/8f+oKm5uANNBW9dHFuEB8gad11HWu1GnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt36LzfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt36LzfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE96C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785880833;
	bh=LlWhxLE5RHZvC6S+AOoNtZSQkoZ3N6ZrG4abpV0SPaw=;
	h=To:Subject:From:Date:From;
	b=Xt36LzfPJSF8TSTK2eR+tzdRPFvDbMq+XZeeYjXCbHNCgz9/aZ1U/lr5420EqWx/+
	 fZw69TR4VppyzuqabWSA/6Gb2DLKF6dEKcJ66h9I7QbZlnQ7oMaRVWFPN/j9drq0cM
	 /QrzAfSjFgU6Fhqortegy2BdINJ87FshR5j7S/ZKesdx/um1eJfAT6X/HMAYSfrLZ9
	 sY49KgU8Pct3TgDEDksb1EhIKmjTd+w8FmzyFFL9ESWxU/txHk7HSTlwHoscmRY1sJ
	 bcJLqTl/CnG2ughzxzu+SlCpFYue5vl2dhFjAFhNF8mYPYJCLhhLThDFFEforkln+i
	 96KKH1GpHrEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B873CC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588083374.29073.724031030198929207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f956c0a29ecbcb7dd6d04502d7e5b00eca20bcb87b9495e4ce09a667ed79c07
Date: Tue, 04 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785880833
