Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A3B306B3B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786584034; cv=none; b=E8vFwoJfwp2XRkL01dVdBvtqxg73JkvDPCqk8wlRpIRGvQaABiz32F99x43JtKag+/DKW+22H9wCTDdaW8jq0L3SwqX15EiLWnv1/i/eJSdOpNynAIgQqoMMmKBPne/SCD7cCX1FxBOt8rNzZ2dvrqbucmhIQ6/gaHRX5SjDZyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786584034; c=relaxed/simple;
	bh=nXbYCpILYDuZ7pwUUwrJhRxsv8kDBh7caWwnN3uOBqQ=;
	h=To:Subject:From:Message-Id:Date; b=dVJ1cCg3d0nRGskWYav5FI2rKjND0Zs/gv6NL3h5n6iEYFXMudkqVhcZ+ftomj1nDYDtGgWLdjVaALC+jPjw/BHzptkBYsY02j+zaWkr5Nhr3Foj0mXYC2j7akVx6Bpb7bs6eRawuoGzK8J84/7yHqH6VIzFGW0oJnFtLbXJGJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyg+QUQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyg+QUQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0DFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786584033;
	bh=nXbYCpILYDuZ7pwUUwrJhRxsv8kDBh7caWwnN3uOBqQ=;
	h=To:Subject:From:Date:From;
	b=hyg+QUQGHRixy94aurR15DA2aHSMRUuVrF73Gie4/6bU2HqJyhhjBCMKu8GvAscpx
	 DW26L3+NXFyZMb4m4ya1bC4BQJhdaxucJOST2V+3uXlB909kc38Vi1DgjLj1D16FYR
	 vm+AASDex4Q1cJqzBjIGissbmjYAmf03YB+NHFGyhgt/rqT5ZWNpJizz3x9p/KNt9v
	 pe05T+E//sTh8TiZrzrNHmOnpLWUAM+Cz1pH5Dg7oaATIapAKoazGiPjgr8T1G6MqE
	 h+MK0DP3K0QWx1tuhRhtS/nM3JwuQRJic3f4JpnpZG3m5VLjvKm1peD5JJsgd0OA4A
	 ZyPmqskGW1Ixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C80C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658403368.14561.4246798523670345747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e213f9c46a1ba325b24c4abb147b3c250fb44955773cfacdf894ebbfe6172c09
Date: Thu, 13 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786584033
