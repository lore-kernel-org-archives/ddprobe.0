Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC4915DBD1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714152143; cv=none; b=gjJokVxit3ZW1iLNeZuJmmmyepwfuKezsxMf8Nc9U53WZOXTK3yc/pRemtgWnlWYZdXSKLtCYiog8Yh677L/EEDGWL108bfKQNoKiinCXovxQqtNiK/r9Yrnfln61Q0V6pBAJ/0X14Be8eVCdlADWe66Ae/oUtb6dZf8/qiHQa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714152143; c=relaxed/simple;
	bh=RqQijieyjssI3jQ6iLT7glF2iZqg1zraFpB77hqSrzY=;
	h=To:Subject:From:Message-Id:Date; b=J1GuNSerDtHyDzzciYsO6jc6XUtHTrscvKUQY+JKO1uPrQmSHtuonQHjOwfNxC/jAOKyJbX4j81krS+oFFG3Nwqqyr0ah0zvqaFeoGm+1gmhsJdlOzyQgq2AueFTbMrL7fgazyCpVL1HNTRxY3bUrzafk8ccmNvM5cUkUv9DI8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuJzb601; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuJzb601"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EACFFC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714152143;
	bh=RqQijieyjssI3jQ6iLT7glF2iZqg1zraFpB77hqSrzY=;
	h=To:Subject:From:Date:From;
	b=RuJzb601KxpjFs4eICG9LNTWU3117Hcovnji7r84X0EeuLlVQRvoC65x4h5yITdeJ
	 lNZvJDU8oaWM3T5fShLIFaeGt1DZTA4ZvpfpVOo42wZ8BClBXQcRH3lUtMMC7f0Tpu
	 alv3ERbHcuWwXlSqmXl4okZKV9hsYSgGKepO3YtrxsCSNxa68dDJneZb020fmpo+O+
	 QL1/f2b6AGRORzcn/+b+J9gnX6irfmQfHAol+Ts+vWA/l+72lAQ8emMRfz9bgPOccY
	 mHEbXZKiYjXucNWx9n1kt2wqCrY4RYIZv1/YRr9v04XBqOJFDPOwUWmkqrb4lBDkpD
	 xNtBoN1Xy14vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D77A4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415214283.32282.1525225840884034000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8873536b8a74fdbdcf7c45c971e268e55247f50a82d1d1182d64a2e350f50744
Date: Fri, 26 Apr 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714152142
