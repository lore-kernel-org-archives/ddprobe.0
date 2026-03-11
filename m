Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0144C34752D
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773243294; cv=none; b=CszbezJbpp4l8B7AX0RXsjWmJzSvMAU/G8ojjk6IKNBCAKkNSnqM8VO3A2VXpMXGRs4IIrvrMCFxouhHPbr557QYRfdRS4Wx2VeNLQfsrJA4S+Yjnp1O7cfm09ex9mxcj+GmsE9lIiIa3asrebAnbcTlJq1a28PNA6rnANRcG6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773243294; c=relaxed/simple;
	bh=w7cmzuO6p4Of1vmStWsZW6zng2JlKLDt+3LlO5uUqus=;
	h=To:Subject:From:Message-Id:Date; b=QIkxhF1/umLNF+01p+OqEuCd7cxwKXLjJe9G+GypLl3jWZ8Me+2fm4CfWnqJuX3eBPq3joktihrcwkdCrNoLr+ewjxN+YFs3J1tPkI2Z2Tp//4YZLuzoxWkJPOlqP1hDqeJ2+Be+blDGkqMhvCWrWERH8feFI1Tbrko4MVa9/Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7dfEtlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7dfEtlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C92C19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773243293;
	bh=w7cmzuO6p4Of1vmStWsZW6zng2JlKLDt+3LlO5uUqus=;
	h=To:Subject:From:Date:From;
	b=t7dfEtlTBoxudgs4mV0I/pInKoNdnKBnw6VHlvCUvs6f5W3n4MXkyIexTtEJK5Mgp
	 yUbS86nA0OUbmV57bNQ5ttuSIrwqv45vIh5RafBLzeMi94D8VvtC3wqk7nEEfQxnvR
	 JaT605pVmZqEGruo/n0XBe+ZzZz3oAT7cwOW3+mcESCKzeUxSBH+DjIZRMZMRfKne6
	 mxXe0JFpdnN5wG630dzq+H64NWTrtcCZap16FTS41UBC7LngZt0KFME1mZO2bAeJUX
	 Z/PRmu0Yj5cikz+zu6EkHB3CQqcUXvVLnNKKnEwO5i+qqdxpyYDo0fYnzyj4YNdnSN
	 GRF1COzntBOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D91125842
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324329359.26426.14469792426459977883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34f9464dbdd2761754a4c664387e800a3b6a51be581272b72e5c7257d8877f9
Date: Wed, 11 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773243293
