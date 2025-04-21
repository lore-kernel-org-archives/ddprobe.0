Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D95813212A
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745239194; cv=none; b=UsgBsKI0Y5BjRkXJxqJV40Z0XlFY56/KWRIBbvVGFb/3PrzUyvCPK2eIgelbeqvG9YB3dEGfSNZWHS8iXMXMB9E9LLyNsuOz026jtzPnmzHhtlxjPNfpwWjnJYfgL4hqAWLJ2m0EuguZj4bLdo2EJi+u8N6bYLu1Ia4Un0h4TkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745239194; c=relaxed/simple;
	bh=PG3PmyZFUEmyDKr3p1wvCx+NbYHtjmMLzGyXt8fJ8qU=;
	h=To:Subject:From:Message-Id:Date; b=HpjrQRPtXJPjsuk5wJ7GoV8BDlk/rCJVCBvITdvnJpDrprau3/HIcd2rW1V9IbuPMyh0dmxAM1ovwTTr01A7mKbEE3KvXu233FFWVmPwi/GLgMHg/oSTu9wHELw/45Rq3i6d7CUysLCEAu6RVUUYKqe+aAeaqwnev2UP05qsyK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7BPPDH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7BPPDH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01AEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745239193;
	bh=PG3PmyZFUEmyDKr3p1wvCx+NbYHtjmMLzGyXt8fJ8qU=;
	h=To:Subject:From:Date:From;
	b=U7BPPDH+AbMnwQXuLyOujXRp4RAx+ieAv6QArSc4umPov5tu6rAfz8vDp5HsVUy+x
	 eaNkazzSyCU+DtwyRS1Fup5h8IEQXNDrHvlLRhydzRk/egCWLhRVCnHQ0ieV73563B
	 FuZWbCyuujmHAkeT44NJ1y5SeojmR7hUlMUV8VQsFAWnRX/a3u58iaUHS+XB+9P2h6
	 f3JH5ma/TH+2MiXsfJCqk1dHr0mGsb8U5nDpUYT5QMDpmGFtXEmRgfuN/HlaZJg5AY
	 APljJWB6T0AG28gF5Umm1UjeHqllzge0oV4Z6WStbxfjjl2xrEH7ixtc7+bOsMGGrc
	 oev73x+58fiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523919363.17865.13050233060142535244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc982bc173485ec2f68fbab35b5fb29e593d6460c0e8f500f65be44d17f7efd
Date: Mon, 21 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745239193
