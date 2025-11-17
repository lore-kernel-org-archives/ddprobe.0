Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B857335093
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763391114; cv=none; b=TZIuetfqmsPkWO3hp93VzxzTO8cLHf/Kf+nBClEGSaxZQcQRH2H72F4okUwSFMQRQ1AKRS359e+YgwACW3WlrI1o6klOvzMb0/DUKH33S2b8e21P5XNeSY3WgIXobaZAi4hFTGthVhoWRRRqBS2VE4urwSRXiTg2Lg0KEtbb9gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763391114; c=relaxed/simple;
	bh=wXNmQXhhFj0hILbkCnzRO/O7yzuOJhXsOvcRczoXDTk=;
	h=To:Subject:From:Message-Id:Date; b=otjskV1M1UGppqFtI2rXskUk98gSE2jv+6G3Q1qArsRo+urhwsdMyTcOwZ2VEzVmAasBPb31rEcocl69sITTAQBch96rwNjS93HYDCcWiPaxp03T0IlJ7QvFizKwt84FaZxriV6ZJZduniNuUOnavUuyOqh5f9TTjU7pmqZM/OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS9LyEFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS9LyEFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC58C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763391113;
	bh=wXNmQXhhFj0hILbkCnzRO/O7yzuOJhXsOvcRczoXDTk=;
	h=To:Subject:From:Date:From;
	b=QS9LyEFPd3QVLTj/tcpP/6vqvgM9j0sxOaif5wxS9P7FM9fImgglbPaRo8kPOGrVn
	 ARxHYW+c515KRTsd2ZKCy19lzICod1vVALmop7ATaj6NkyEZf3tju7W9vHnCHRAgkY
	 rl9nt080WpCGD3al6jVEalDfuCfVRQMcDTY12XX7E9Js4r2jQE4MRYKJ9XHpJQXasM
	 pU3av7qHQs24CEWRul2KKV1rvZmR5NE+HZ3N8gxM81ztm4Ot76Mo3hTEMv45t1KWRN
	 voLNA6uVoJCpolCfh3Xsll/+lJe3hBSXWPqgl7bRk0Ishuh25+daEBIaEv/wreI5aC
	 NZj70SVunKKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F8CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339111359.9449.15682421760756858429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b75a7051d3a75e75f1473243185497ca99d8fdf66243be05bbf4f3a368de27
Date: Mon, 17 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763391113
