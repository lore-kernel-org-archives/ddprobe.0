Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CE91DED4C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766686434; cv=none; b=jhxELk4ipIMWJPHXgUeKmPgel5FcmxHCKpV0Hj1vk/6VkZ7isvcekPvIPzCud7v84iqT4zn/Z5rTYXw6VonZmh2yKCrs4C7gIIlvio++ZNUJBJ0Y/48URpImTwZZuEFRoDDN/uAhTRKxNzuHJjmV/zeSdP31cOkfXX0SStNqvlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766686434; c=relaxed/simple;
	bh=zE3oAW5ddlJkcEuVW4SIAhjWroEsoLfPLhUQGVxMmEQ=;
	h=To:Subject:From:Message-Id:Date; b=fsUfFUnMblo9lvofYeMjSm7gkheqkEteremJW4moSL4sftZq2F/+Rr0srI+NIdeEcDZEnWTZn8Y7ULzRji3Fuy5OWyt52PBA7bU/OWnL1FPFCoLcJ/OD6Ov8TdgumaHvZbB1hHKMsY1kLTcXsHQfgKMA2TnbrhwbwFqhTwDKlMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRBUSL3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRBUSL3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0166C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766686433;
	bh=zE3oAW5ddlJkcEuVW4SIAhjWroEsoLfPLhUQGVxMmEQ=;
	h=To:Subject:From:Date:From;
	b=QRBUSL3Pf6+qeK+K4lOoiWwXQuGTrjkcwF+IkRbDbO86scqzw6ilXKldbZD1crZoa
	 gNd2LpNxfuVhgpU4yT6PH+Eve2BFo3WxgS2j47eA4bBFuX1jaJcazz5PRrmHgC7RVe
	 k83DwG+wbfgu9PiDNKKDU9n4j/SoVSYdGAPkLObkx4e54qbVzkMEPMluuf72/iQedP
	 XaI2YQPUyq2Ym2hhBTwthLyILeV1WvvBsUJXjDYNgFrnvzlKtjf6SGU1njA0ru3Cvb
	 27xBPFcCWNmAX1YPxCfKi0SCUEPlnY+CRzv7cjQqGety9pTDgPGgT9BbDAfFf6MDzJ
	 iMzJ+tjFf/yNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90136E7AD62
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668643358.12983.3562494493606199776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590b4278b4fd8ef1e2b3afa0b7ff0c8e35f33ca53c3fe77be6badc93b4efaa6a
Date: Thu, 25 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766686433
