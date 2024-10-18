Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B2E20E32F
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729224954; cv=none; b=YpoNd6czDPSMLLSgUus/L5e27T0k8FSoV5w28HImGM/doCMAtozFrD0ZITc8e+uQAvdqV9zLkEenxVKNI//VBxcMXhPhiJ0PwALeVCRqCFaaRfUeQLNO5Eb9344tpry0YsKweu1cb8VahoTeFSrH3/i6QTl0UVkYov26853L2Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729224954; c=relaxed/simple;
	bh=68N5rWNV+6dLEnA48TH+YFoUmA0uA/+h8jS7+136ERU=;
	h=To:Subject:From:Message-Id:Date; b=MaSgzljd7wk4XWjqUw08i5DWgFsJwjT/noZhv5U/tm2a36iC6BZo4eUCzpDO3E4YR5RqBOFFBQ0Ie9mGy9ujSsHTxY+2fhKrjNckDqYnsGqRKHc86IVVRV0d5UKriB/D2C83myYomViLKwnGXShtTL+G+jNm5edg40oC2y5zmHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWfr0ZE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWfr0ZE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB276C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729224953;
	bh=68N5rWNV+6dLEnA48TH+YFoUmA0uA/+h8jS7+136ERU=;
	h=To:Subject:From:Date:From;
	b=BWfr0ZE3GCtfMRMSSoJyrAflY0xTlLRx5HCs29mb39UBFxpH5OuqSttPJCDVRDj48
	 uTb5uvuW+J1zEifY331yC4RAe/9LZym9jTEsq1SQtNNC2Y/D3ZMTrlyOZlQlVngDeI
	 1NQTBxMkT7JwVS3UkE4HOwDZsdWZu2L9EOPv9z1qmtfM+P/92+r5aVN+am94WbZaN3
	 kFd2jnBgf2qJ4Z6q/hl6SdRWoGlYK1JWWWbC6AsQz3zUnSjn8m3MOHSxMtsqY3cKZm
	 84KWLYyAf07T1Oi79Lu0BHbR642/e5j0YUmEfmmgpjYFowyK4juGywfpS8ZVqQ5OX5
	 pX6Ck0EDA1fXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAA1D3C548
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172922495359.10239.14521358969625031319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88434384b3e47d5ba96d5e6e617b2059922d3f6a74536169f65d96669968d1e
Date: Fri, 18 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729224953
