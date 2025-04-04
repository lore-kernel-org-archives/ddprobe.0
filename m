Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C311494A6
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743788994; cv=none; b=U3ee8Lc87LncysD/K8XFLcoO0r2XuKJzvxMIv13NmtAh8forhCInZZW8Xtt768KIyW2GJvTXL6h0HLodpYQ3POmAJKnkxxHvP627WPq978aRDgHqjxCRIFCnUASoxmXLercj5up2Sey3fKd0mAEgiMO1I6pNfCScwdqS/NLklZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743788994; c=relaxed/simple;
	bh=ynPQsQ0D6GVynFvtZa5WeYALNW+XhZ2Qv+RnVV05giA=;
	h=To:Subject:From:Message-Id:Date; b=AkfuuiZpja1HCfRi0HP7TH3/Zk7oPezndx0D8DqR6oA0NSAnZOUJKR2TqeTn5njD42y37aTzjU0QzkkzykfE1wDAs0XZIa1DVlGE572mfZ+3m06pTQwEBH5buu8PKvzMA9L1iTE9K7x25sofbcE74jz13j0PCNrk5m4xMeA4RdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mecC16r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mecC16r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92BDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743788993;
	bh=ynPQsQ0D6GVynFvtZa5WeYALNW+XhZ2Qv+RnVV05giA=;
	h=To:Subject:From:Date:From;
	b=mecC16r0cfUIkezskon+lLDlxhmu8nFGoyoEQfXsH+qrDW0KOfgYuIXAStNzrDdrt
	 VJxgl28URx+CzCBPqPQl3ZOu7mXu9EWbVHkwMQqANcCG9a6O9gtVC1PhuBPxeYq9xQ
	 /ClRH0xm+tPanNz6iPdoCm6ZN6LwS1TDCxGrTr56UF2Rj7uLKdwpLJoiWYXQqzjnti
	 c3Yw5CT2VYUBGVQMiSg4cDewSolJYVho7Y+wLMYhJ5MbltjeoFCm0AflnS33TtcpJk
	 9Zw9D/EMG2aPBMvxzUGapVii0ImDwFaXNPhe5h49BEfl7UGvcwbdUuW90JCFuAiRrH
	 ZybydY60BuyHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D2C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378899359.29490.5947858086089736069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a4b4fd4f33704208dceb504872cd25a4eb149241f7e8304d50d76182730944
Date: Fri, 04 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743788993
