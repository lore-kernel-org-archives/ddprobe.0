Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0811B1CDFDB
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732035954; cv=none; b=mqlg6sDzu6zWC4dM5WDkHpwwJdNbN/WsGrR4jkjfFfRWW0Gkhu1JIzu7bQlkxJvwL3sgBZGO9erGA8FrjDLBNMiPUsax/bvuQYmVf80itiZsZppNQmz1Wiw4ONuLX8UMk9GYz+Fz4cmurMfwPTUHTwtuY+Dl88jjf5EM6i3VjCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732035954; c=relaxed/simple;
	bh=XphDc9mKcjZkAVz6QXau1f/y9sUz3UFry6D+Ug+UPbA=;
	h=To:Subject:From:Message-Id:Date; b=IFkLhRfX9/dTLcs0d3Kw5+FuepxtLcvi58NO7k4z9V7y2O1ZaZaIFJ+EWGVmaKqmOGJPRku7VgCbLGJ4vrw6fjsBQZJSdhW9LMNZB4k3tayp5jMkfUTQaGtpCRvq1c7+wF7G8ywMR1aMTOpuCliv7HNi7AycN8nFZ24JvoE7Qto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twEmNT70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twEmNT70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576AC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732035953;
	bh=XphDc9mKcjZkAVz6QXau1f/y9sUz3UFry6D+Ug+UPbA=;
	h=To:Subject:From:Date:From;
	b=twEmNT7012xOdfHwnAzlF64Ox936hlB9fh4VTka9RYaQDMHhIamc1RnYT7ru0iH0O
	 OdcnRcQZJ+XkUQBSzu/AseYuocxsFuAMBywfRxebk5HOM4Wc/SJLtX++M+lSwiMiuS
	 5ABQXFfm/L9diRyTLmLM7YonEi2lW2IApskuhZg9VBIJ1BlaKuZp+TIiE8yLcxv8iT
	 32NBUj2vhSiHLpRgzWHM2kaKCRYKDih0/6nHiwHSirGj7aJG5nCaY+dhhDEfiwhaUh
	 kUk86UjP4N1YiLjVsKWjZ655C7zFktMF5tuZveWNkLycpWJ2HwlTmlIgPb+LzhNzrn
	 p1mFL59e/+QfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97509D62073
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203595361.13370.17636133520856619467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88a6279b481e39f03a1724f8e76d150492885fe3c0c0a34a8ea77dd8c8dcaf3
Date: Tue, 19 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732035953
