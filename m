Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489F2EBDE9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768233834; cv=none; b=UY6iviKTXM7L+DNqfN+jAWHMNwfD/iSEq5SQ0aAm0TWLl2saB/ri+xxOpW+sGfnQVcxk4WVloTugsbtHcab5S+WbfTG7yLbqf/DoGEJy2cr+rb6IfeC2Pu99/SXvRNpSThsguxvZbEi7PdkLgPDTInWNXJoUGwKvJHbZzx7FWJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768233834; c=relaxed/simple;
	bh=cggbzgL/0tCOWlOHj/mNJ/z3ijr7nVbxhnRRYzyEKIA=;
	h=To:Subject:From:Message-Id:Date; b=X/HjZlknDZSP1ASAVQX7zUIiXMaZ5ao20osoivll1NbQBc7r91hKS0ctkLoPOfyjWrEs9RvUa78xFKoHGeO2pQIzNsm8bwi1ANzpfwbGkH5TvLqXZjF9Sl1yv051KOzbBKmpaNXFzlBGy//2WX/v4dtoA+jwGPNfUqiPihIFM1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdSfmXL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdSfmXL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4CEC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768233833;
	bh=cggbzgL/0tCOWlOHj/mNJ/z3ijr7nVbxhnRRYzyEKIA=;
	h=To:Subject:From:Date:From;
	b=MdSfmXL21Na3Zz4za2kQ7q9O/Bm+iTrmmm2oaQWqmZeb+N1Sy+Wd+5gHnjS/TDFdP
	 50sev1XIrVpM8qy8NHkVnCGqlonNU7Xb1SVislS5s2IxyTdNwc8JbCp7sltqZ0c2Po
	 1fkbzaDBy2WpDT7+XhxMfyQ/IN/c6wH1FE7XWTg/xBhevp+Iz3AP1PHneChr6se/Ln
	 GWMqcTlwIhE7pXUN5uBTO5wnqgHMckkrtBUt0RN6NltJ/tBSWJi/qV2mfkG4Pfhk3F
	 5HBkFI5qftwKdARbe6DC3DE7KHir+TPGrTe4PcNA6WRlUEqKVvjSHr/Wd6BUGoTQ3w
	 3nCnXOlkZfxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98531C9EC99
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823383360.18892.6149724850998516933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205e0672f2307e34ddcb1fd8c42f9e9b45cb889d9b332884a08926554337bf99
Date: Mon, 12 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768233833
