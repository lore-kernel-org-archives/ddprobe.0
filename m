Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2F176F17
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719919523; cv=none; b=kkhABLu0tSWEC7xZLICrtK9q4qTIkmpYtRjy4yIhZFzuTnfWxNEKyCVRXj/3ZUfal1Pnvdj4ViYFo8wj3e9MFhreEYq2LoFGslQMS9DGZ7hbjm4AK3tQlK2m3LYAdgpVkK0lkq0eTXwfj/wGFSTJLQDtswzOO66/hBuGpgly2R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719919523; c=relaxed/simple;
	bh=vLhU0T9tbYKFgXSetk9h+sZaW66JKOWteOK5hCESCQY=;
	h=To:Subject:From:Message-Id:Date; b=XEDh1VVm+fMMCuculatoDbeE8coaqLNtdLkVZKjWCpx430wjXXzJrdZmpR/wiaikxSLbQoCjHDqnJw3x7a6kaTggYxc0WCJXV+IHCtX2bSvaSgmMmEvrOp7ka6wbP+lcoImRS19OM0GufHh6MChYPuiA2IpXWsa2YKa4PKjMc/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhy2Vd1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhy2Vd1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25E5C32781
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719919522;
	bh=vLhU0T9tbYKFgXSetk9h+sZaW66JKOWteOK5hCESCQY=;
	h=To:Subject:From:Date:From;
	b=Jhy2Vd1MNX78E3+7bRziv0wp7esJFAhowcfoEc3XmYforS7akUaHms/RWEcicKqSQ
	 /SvbB+sUWX+8B9Ag2WYrm9FKs0+0QyFAhrkDfmEgNkKhiFbAVuIMwacRO2JV5LlvPa
	 hJcsNYTXe2KPXldL5Up/ybxVel3robz3wGndWW0vEqskHSchOHRITs2Rkv5nTeojpQ
	 ABD8vRBj9+fjPdags0r/UuTkPq0v38aldb+er6p8wUgUCAQ2W8gM5S9hcsr9SdaYeZ
	 s7p1SB2LansMy1cxPKhV6H7x1FAvR5cK73vLD55kHgjWofwjElOVbL3Jl7KT5IW4s2
	 Ei8pPRjok65qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B16C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991952279.31298.2078799440848204494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3dba4e6065a2504b229c3c54d76396882d5c69d2a39d37f56dd5379e984a6a
Date: Tue, 02 Jul 2024 11:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719919522
