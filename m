Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEC74F55DD
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791976234; cv=none; b=CtUae1hxxim5V3LdbV8JdtMheKWrNxK1lneaKEK5OZA1w9Vv4tIyisZiJgTRYxxVFGDSK1OObbSriQofa21Ys+ti74f+DrGKMN1/B0P1zJbA5oXEXdmmODGu3kvWqkWvirDFLUVC5sFGLbAamdn/FYoyfDtc+pQkArnjbMaOMZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791976234; c=relaxed/simple;
	bh=RqGw343oDzJP8N/StPc0ioDKLlHFEMniZxTr4/SYVP4=;
	h=To:Subject:From:Message-Id:Date; b=Urbijm6d2qpasVXvsnqsbLgF0+fMSPlutyWTtPOB20j+ch8mPKEpYv0mlLIEqwQweTsmOIIKmiKJRy+7uaEoejAI8Oiy1BoRneRZ2arB2f/jy1WervPNGmQMkF9ZJ1IowD9tZ/nLNsYzSVecAFaBR4EcIFXQZKWjn6DqzDXJAKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9Lim/1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9Lim/1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C9FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791976233;
	bh=RqGw343oDzJP8N/StPc0ioDKLlHFEMniZxTr4/SYVP4=;
	h=To:Subject:From:Date:From;
	b=Z9Lim/1eSLg3BSptTX2RBF4HXo4wpeqgH+JLoZLhh7HibIgwR+aBaRiztx5HQeefm
	 M631pcQ0do0btQwRPGMZGdnBaHqUQrV/TOTy5u1vGQX07KKHzswhMugCKSV8wxxwk/
	 CnL/lpD66TAOyzegHxpAVKqevr7zSl2nqLPFfA6atfWBgAlAWTdx5woNLb4syJvjDY
	 WT7fBZtcuWFHKvYNKJCMn9/7LWK4h3sjYNRTJRSBi02mLXaUECIQ2EC1EQ7Tt6Fq2l
	 3Fb1TXOwcvR19RtrxziBePaWqhnpyP4OL+roxVSpC6w/phSwBqzRDavbjHRy8JqrTU
	 90VHR1URlI4Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9DECC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197623375.17390.2049792897456965995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863150421aefc723cf08da2127ce628ba22d3fcaa951379813be4c226a735408
Date: Wed, 14 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791976233
