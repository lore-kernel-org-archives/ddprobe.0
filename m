Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43D6273803
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761884394; cv=none; b=Zy6JNP9KksHxRMSmZa6A4p3w6UGuaDoYvy8DeSNWrA0lUa/6VReYbvm9reg7Z0kGHLES5mckXDgrOMAEADiPlDZevvvo0WocyDrintBdc5FmxcCQAkzlZ+l9IKEDPh1iQNIFIEb9RAi5aaq8n0RQ/pNg+weV6px8hLbzJT6j6rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761884394; c=relaxed/simple;
	bh=M+bHWZNHyugmMFO2RQdi+oZIRKfwI3Bf9DCq5qVhvOs=;
	h=To:Subject:From:Message-Id:Date; b=SmWfUgM4/niaYzoEN5HeYt8IsZN3qOVkt5WJgRk40ZnQHuT1fIVpVhjU9oy/ckb5Ap3yeGGgsGb2NKCow/jXI6E/ibbYqnkVaz3FCoZ4KGcXmELXHNpf8SVs6OxGBXs+mvN46J7TLe82fwNxG/0fee1/1Taw6Vvj1PN555Vu+C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCGVMsGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCGVMsGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20C4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761884393;
	bh=M+bHWZNHyugmMFO2RQdi+oZIRKfwI3Bf9DCq5qVhvOs=;
	h=To:Subject:From:Date:From;
	b=sCGVMsGjsV8LigsWjsAQE0Xgbkh86DmvTkbrhCZuGzbZU4yyyc/6YKHBMD8RU/Zfo
	 gCTrG0O/T3mPa1I+gmWIBUOApDUF/gaAJId34YS8OmhQWGXC2BVIPRrOMCFrCuXnXT
	 EpC0XqgIzK1heEieZlKYoO6bqGGlcVEXeEsTh88ppHF3GGlBEXK8TWFdJw6x9u9xmM
	 k15ke9Ty8iRpA12X+Z7fPieJwcRrI1ZiZD5avBv7NSq1Rj3yOQtSXYwrtlb7u5tHHi
	 BZ+1u6Y4PY+nnkYGcvGby799Q4oW4FPr47rdeoQEyvAzbsQH5rERRLDIBKiVf+VLBF
	 wlBU/rVz3f6lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EA5CCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188439362.25196.17449267883721217972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5e3fb0b810d6e9cfd0046ee2a50b8c6ea7b5113cd14c7b24152bd3c5e242ac
Date: Fri, 31 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761884393
