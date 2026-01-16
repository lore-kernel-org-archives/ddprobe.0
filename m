Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1816434D38D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768544034; cv=none; b=loMyWIhGVaRfriJloQWVKQOrAZ65A5HPSINUmgnU+EQV7fIKiLTkTskM91qCQMXqcBS20a2YF7mjLMCewW5IERA0BWsSm/IAQLsST69VLfokAx56Jn0Guohvy1SHfv1NmJGrk0f5vB3GaDd2b59bTxtqKQcPVWjeLJDGTv9Iras=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768544034; c=relaxed/simple;
	bh=VC853+RtCRlQVGwWWVAmkxPh1Fpyl0PMkuGLJxbjwhM=;
	h=To:Subject:From:Message-Id:Date; b=cm6jM9j7K+hMSEPxApKkc5doHsuyP8sxm2NwaLnwyZRl+ed/dcRyyTUj/YVsxo9ZgRbofo1JKnlU61HyMjR/gpCUVTlNpDBVVVsHOl9YIqBnZVq4PMwfijuc8obi+LdDXo5o+FWMOhdP+Yk4mZiuemPbF9LSrqxv7TyvvjW9/0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AesQNFB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AesQNFB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768544033;
	bh=VC853+RtCRlQVGwWWVAmkxPh1Fpyl0PMkuGLJxbjwhM=;
	h=To:Subject:From:Date:From;
	b=AesQNFB1VIAtnOBpZImN/D2DD2bg7icMH6zC4jt7UVNk5FouD2JRhf+cnQ7tgZdcj
	 M8WSkTpJydz16ezjkNvDfDzDMptJ7o6VPWCYtwADg0DGicVsKpaDJrXute/NbCMwjv
	 AOrCKMfCLkpiGYE80vk4a4VE3bMO1DFTJKzq4F9QnNQOmIpklDStGBcjq1JmlzmFnV
	 sCb5SQAFPv2IimwzlF8vmH7ZMp9ADoO8xiTaFIdAfKGZG54U7TTb23j+6ymFunB+fn
	 /kuZSvaniLAm/4VfzLLPLaQnEsKuLEeaeUtd60X9+wLlrgPGPQob6TnUYAEzW3Bm44
	 F5XfDnQCGYeDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F148D4A605
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854403357.7063.1353280679021856284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770b7d7f7c26277abc1ffaf939e5e58c8f97155e455d242c292ae84e6197ac69
Date: Fri, 16 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768544033
