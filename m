Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAEF535CC
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707917896; cv=none; b=F/XkotYmxe0X01mInFn0jnQSLC7xUtQtHrKEzY/NgUQ4Q56CPYvZ37QxejcGBKyPhH7uUEgqC2iCZySDmhT5nBCqPbaUEHTNchstdyYc/2OkD8okre8szOuVGC7TfZDb0uHYrvWqyLAMdbHc7cpv7EJUWaQP1eESk8xCIxnf6xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707917896; c=relaxed/simple;
	bh=/RzUXPJ1x+uyeGL0madaxlbFDRuH27WL7SWqwJyP+Jg=;
	h=To:Subject:From:Message-Id:Date; b=m+gZQbXqBwwYeCqbFeIfhKtzizV7qSdBAoOr9oZyX82zC6YAA5MJn//dHqMFWK5+H/bzlkNlP4NQbkVOLqXvnMOsHqVjN18Kv0KIYORvVd9Vk9ORgn1bJKovm/D2hhcgu/jK2cD9elZV9+9NERWX3KsdH2dvuioEndjMLyF4asU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTDW50ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTDW50ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801FEC433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707917896;
	bh=/RzUXPJ1x+uyeGL0madaxlbFDRuH27WL7SWqwJyP+Jg=;
	h=To:Subject:From:Date:From;
	b=LTDW50ci4b/gmJdtjkD5TsptoSCNb+7WKLR1lcY/kGifjycmdevfLQzLzmVHpdT9j
	 0ZvMDHTLplWUoawzfdm3Zm0T5gAzHhPHhocCoJd+9UtY03WJtyLqNvzQLCh7hCmcXe
	 vn0C8X/FwKpF8ryp1y7m3oPFydRUZjS9jAmlB48hJnLK29e5rvIWGaNr/Sm3Y5yt4x
	 EArTqFa/ij5MUjQaubOEOYRjx0wd9vI0GKNV0yVECzum5KKO4s3kpD7yIZWg9P9MTo
	 HE9eDGzT/+w+1JRq44M6+AexI1QJjW+G/VlbhqyBfHMkZ7s9aYHPh6VS/s8Qpo3Heo
	 +Svwm1I/6dejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FAAC48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170791789640.25968.5097356435356592388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a4380fbf1a05f44185277912ca3d762badae19b326a21e51f6e96d75cccf4a
Date: Wed, 14 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707917896
