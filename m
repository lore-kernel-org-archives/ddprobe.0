Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3736B17A2E1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747901994; cv=none; b=fUoCL7wroGyBSp8wzC1wUt4JyzYEOuoUgTQprjTXfqlDbgrzB9fXv1wy/4X18jhi/DjLsKGeogCXZ22wKFAlDa1BQPt9riUespStl4MCHIyQt6PaxPYosCf9i/feYA2nDa77M/DUnn5DFw8LGG7kkviBjRJ9ZLWba9Vmj7XS0mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747901994; c=relaxed/simple;
	bh=Jt+1vcGzy2urVWv+P165YnAK4Y272fLPvWPd4NOqKT4=;
	h=To:Subject:From:Message-Id:Date; b=Cbd2N9dHAs183l3+TCKscPXf5t+UH3Os035BGYhkYhqiNwmF62WuhH+cJ7q4YbmP78rQukWvN7B57HjfVmS7K54t0KKSCxaeGbyQhUMf/larkvKRh6TI7SUquPXNgjgsxFj8qo1XqG+tlFe8CNXldFOfgLLjo876e/ad3+Zk/RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkLOfNlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkLOfNlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1625C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747901993;
	bh=Jt+1vcGzy2urVWv+P165YnAK4Y272fLPvWPd4NOqKT4=;
	h=To:Subject:From:Date:From;
	b=PkLOfNlEhBPW4Qflvv5/D0/p2/ibEL4WBaCPWbzLh4v8Mr3FxDwbdyyxzfPlQh6/C
	 4gH0d0HC+gL6C2Aq5b/xSKt64HQjPW4BcN0BfWGwdrELNL/jqFMGH1v3VtheX941rq
	 TONmN+A/ZyZXMSJtJp2uQILq2aGcni6y3HyCOn77mdDCul1VGh5yO34ok0ji+n2wZo
	 UJbwDkz7hEHAPrXn77n9HFKZOFShVkeqYfFConl2cLPOt7JuzSFdII72jUtGEYQjAz
	 whuG3D3AsPRLdkzWytCwQtYw2Nt/UBpor9HuFpZHznLV6iWKiu7KFqkY7R9vuNocMa
	 s1dly7Bk9zBUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EFC54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790199357.7992.16036383216501754888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea61f4cae9c5528b1d2a9bbf00e3582b198efd6210f156feffd4af8ac94a957d
Date: Thu, 22 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747901993
