Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ECA39CD0D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790667634; cv=none; b=CgEvs3F2yxWKrbUYnsOrSgpHAA30mhwUCmK+zQ1V4nUHJ+i9QfArCyO/doXIk8UfbG0dr0QBihwJks2p4pt0eg4V0ABP+4RWcZMa/sy7k2rH0ZzdmUs+247FN//01slt9MVUtizw1Lz9jDeCWiuezqQ/4btL5SVaXiSuDrECwQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790667634; c=relaxed/simple;
	bh=jCJfq4UGV2BqdWCI28fXlZS65ip1O9isav8XAVVSiDI=;
	h=To:Subject:From:Message-Id:Date; b=DkS8CvcnSz5i1DwAohzAbU7+f7qdRmaQsdV+61ZPEnviFY3n6PEWcQP9jeh9L/dvdsEOePuj5mwp0Uv4DrNMaIWidLgdbESjDW+SO782WNqBYViYcq1FEcvhoK5Sy5hPznk6xRSgb66fKfpUKEWTtSXiRpPLMQGaQg11/5lONZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9vORtdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9vORtdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C42C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790667633;
	bh=jCJfq4UGV2BqdWCI28fXlZS65ip1O9isav8XAVVSiDI=;
	h=To:Subject:From:Date:From;
	b=B9vORtdykHIAS+b0NEHdyiTAJ91dwvXwJOV4EZH2UTn/BAEoEXj7bLjsZzdCuoM6c
	 6lwqdrVQxciQMZ+PEtAqbNRBr346PqeagmnzckvuOl+gEYsceBOkK+pFvKreiSTZW1
	 EMfnaqFsQdvNhyDmL82D08akDKrUFZ311DkoEzz705/yS0UNMSv64IX4s1J5tFZsmy
	 8SGhvqeMMPSjdj872Wdkj2/HS9C2Mlr9XFJGGyTLrY0OUY4SopsEOQHmQitWt0o5CI
	 yjR9cZVOlU4oyYzXfAwqqisRI9bMntYBJjb9dCNPWLr4I6LHszHFLVGdKlwc+CTh5T
	 1BWwR/xcp/kmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF106C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066763370.551.12714862883291111465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fe2f03c6421bb83ee3cb80a5e8babf872700243525649e205eb3c912e600dd
Date: Tue, 29 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790667633
