Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BBD17C77
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767058434; cv=none; b=alyKeocgrb3xbmOcambq0gMw2NoQi8KwDd0X/EjPSId54kJrI0L5b8tUtm4POMF7yky5UYo1h8HCDLsytO+w+Fkq4imTVct/6lUpfQIbb3UECMWUEeHMdF9LUwA3mfCMr0jvIfwW8t4pv4qtNfIgTXXVGod3emy8AufK0mvTcgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767058434; c=relaxed/simple;
	bh=b/VsdVwlH56ReG75iSMpYjSZPDgUWxeJj6XMT1WXA5s=;
	h=To:Subject:From:Message-Id:Date; b=LQQ1s57emUuEKclYBOQzZVUij/wfGTlOo+NN6lL55TdbbsN7k/kIXHdEdiej/tTs0+6WQ1e6ZQJOr5HLmH5qST0R7fC5sLs+pKHJeOW8Pb79HX7bbuOvvTN8qT47Gws7jAfz4IrbxF+vL/cU7TrVB3RQJ7msxZGC4RA22ctt+Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHQjrX54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHQjrX54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7B9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767058433;
	bh=b/VsdVwlH56ReG75iSMpYjSZPDgUWxeJj6XMT1WXA5s=;
	h=To:Subject:From:Date:From;
	b=kHQjrX546LyrLWKD3j62HrLPAFuUD79nhC8575Zxv3qRDTC08xhWNGBj+4pVtUB/g
	 +Mml7+09dJCQb3SexXnLkd0zxwRUap+ipp9twS9jgApUOut0H26inmwMAfXcN1BmRK
	 Va7H4UNVFKvkMZGXlTbtd4jczpAZIel5q3w7Nhv5Q3xDaaTzxeT8K6Vm49jDCCA86e
	 0O8vpezR9vRv7KRSmzfA7lRSgH5vcr6l8qUGH7gdFADJOIeRSQQ8SyjJ9Z5uKVaOJK
	 fMPIKBvrywNGrQRJhMWvx+iecGR/TsnOFAv0UvG2m99j8rv+KZqYMkv/6YNb5Ebw7A
	 i9WyWfMsMjFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F643E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705843357.4382.16527565515665576074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d0b6eac080901fcbe0625644e5b8167f08b5a98ab31b9a963a060b7e5f9025
Date: Tue, 30 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767058433
