Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6C843CED3
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774978493; cv=none; b=sy6/Y49XhglQgw3sYYjcOY8vdFcxWju5e1beXC2rBqeI9IoiJQIei+ToNP+T6qMJWrwebzI4najGPeuHbxXJDFeDMDT6XwoaDhQ8RKVc1JAFRp1cfrJqFN0XOOO79FEIbyJp34of7lvanZA9C0DsXQAufvH7YNpRcBsmrjQD32o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774978493; c=relaxed/simple;
	bh=5kEZSScMoxi3VIUtxLHYeqoxC5pf75ktGTNRXdlQGps=;
	h=To:Subject:From:Message-Id:Date; b=FI38F4cIBExHBpp4r8TGmze38StPtOb3+sgBQFDHmvb48m6SN2tDD8pb5TJz2OYDQKqExbePJu2csjV1QAqbPJtT93J0XKDYICN+GyRUylYBj2YDVYxH7oqHi2R+DbFX5k3+OGDswXjQwQJg/PTcwH/LV6k/DJz6kUuMVSCLzEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkh80wYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkh80wYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD3C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774978493;
	bh=5kEZSScMoxi3VIUtxLHYeqoxC5pf75ktGTNRXdlQGps=;
	h=To:Subject:From:Date:From;
	b=mkh80wYpnyUqNbGI1IiemBK/aSaks3S888KZorzdMe976D3JF70+RJZhbxXX4cYHb
	 OAv0ZRRmR3bGqW3MDmwYCOVP79tWpXgfzq2Seo1lolJd2+76XrmEObHIuv6n3fUCeK
	 J4N6LSfjI2E280ZJB6pRxcraRpnV83+OxDj2hJJnQZuPadzPpTOReIsFLt7kxFgeJK
	 pgrnEkzCaKz9EbMSptv8zwvXvAnQWxgsg/TPqZ8U3W0BguXOjGTtS8OQv5SfT4ZE4O
	 ulQetHEg3N0L5dqNUWPcnO03+VT+vcRryPqsm0zgGtsDIB04AocDNkDTCQCX0I+YeI
	 Ff7t1P/JO7Rww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93619FF60F4
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497849359.29897.17786754593668869777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f750b76dab2ae9c98e14d9391ad177a7c60e8fdff5bff5d242c097c051ee05c
Date: Tue, 31 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774978493
