Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359DF194098
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762673394; cv=none; b=upAdWAjYXndA6sRI7VCtkDm2vQTwWfyJCmEFzkdwKGQxD/uDDAAjLHiInhosmp1juCzyIcKBTv2IV2ejcL2N1P+UYRfymL4rE7L7kmseKA656w9k0LeL14HFgAwYVDKvnNDd8sq270ZsmpJM+G+VSikwYsfdA1/DHr5erlYPkz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762673394; c=relaxed/simple;
	bh=/8lMKFNt2t8oLML1GQK2dk/IfwE1iUCP95FSq5BXFBg=;
	h=To:Subject:From:Message-Id:Date; b=mjDZkEhqx59VvaXWl3Hr9O/xkZnDXXWlEiLcOyiZ26azy0DaejE526A1Nq/HocTjPTKiVCJXcchhBjylIgNBc+sW7p5cNtAoI+Q51OHZkCoUfdNsVQvHD3wZc03wBK2plyOpaWkmUVtI6DDPHTDFc1tqG+5kt2X8uMa+poLi3X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvMlN9uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvMlN9uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762673393;
	bh=/8lMKFNt2t8oLML1GQK2dk/IfwE1iUCP95FSq5BXFBg=;
	h=To:Subject:From:Date:From;
	b=ZvMlN9uRv3Myev4Oi9SUVLbb7ADltGA7387c0/n64iHOTLwF8wXOnNQlieBAABEcM
	 4CkUHpngV/1l28vov7w4x+aeUH2MeoqI1znA3Ht7zZb1GhUrLktun/TtCvz91Zpxq+
	 BO7QfPLexDcIn+guptOxeoQPhJimtn+iTwdCkziowUXwoj6Xrjfqf1Bnw3B8AhFmxm
	 UBvy9OT+hhyBbzqlKg11HIz6nJte7dypRQmPUVoljtnNvTfJrYuGevyR4tYyDaTWoq
	 tb4hEwGEMwP++mjfP59BYn981HHBs3Qx2hO3mAwqHd0boFdl/dnwhbMlT5w5TThMq8
	 iTUHOBy9OBHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E15CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267339357.8717.8366340351845562191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1af36bbf3ed59fac42feeac5afd58f9052ad00ff987336506aac47fcfb21ce5
Date: Sun, 09 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762673393
