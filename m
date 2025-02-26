Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B46815852E
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740604734; cv=none; b=JoQk05JCpqf5KqmJPPMzTMZsvECCMLdoUZKfbHxLi9LhXNe/TO68R+oEKVNuzBqKQ7M/f/VbmIRXMhOtVAHByDpsKRDxu/GpFu0pFAmA3fbgF8V/tzSESZJhiL6DO9g/LqbQPH5bv09Oq1HZuNaMiP9tMDZ8iaMx5uBko4eRiK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740604734; c=relaxed/simple;
	bh=mdeRlddsIGVK3ggjZR0uMYYuH85IF9GO8rhX1kXaq+8=;
	h=To:Subject:From:Message-Id:Date; b=AT4BU3OJJhVHbWkQEZ8TmXJMKbb0ntDCf7lMkTkpnzCRd8KcXNzHTLqokG9S+mFGbaPhcNf0VVALVVz0ffUxvjKUITyK2NCtuFXSV1oU8K7JxanV541KlsQwfOmNN/dIgi2bjQ0Y/k/T1jkwFNNGG6VXv4b0uHKoS7Abeqb2nRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKiJXnRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKiJXnRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5B9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740604733;
	bh=mdeRlddsIGVK3ggjZR0uMYYuH85IF9GO8rhX1kXaq+8=;
	h=To:Subject:From:Date:From;
	b=sKiJXnRWKEtyeqP0gyDOE0zPyqrxn+Ys9xXeSm8Xvv6AwQ1Srn7Lr3Sfl1HBrcxcG
	 0mpWS1boNgJF5IBTTyPrs3bj8oPFUSKPzxk1UDmiRfvc1igv7uOZOQ9suqjHTA1XMW
	 G+r86A2Fvfbjmhh6G33QHWmNQIP9oCHOFPsrrMWQJC/i8z8a+Rv9Owzv3QEFZAVMMm
	 n6tUCyejQDmUjZT9U7AMqhlj3p9IAu922o8VoQFqQBgMXMTABoa9B1qA9UNh5MC+Bb
	 JWUhhei9wY/9bss2foq8vYvTx8/fUVyoSCW3kTCxaq1I0G3KAQfmrOHQF6nk9etTyK
	 WQW+uG8qA4l7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B842C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174060473362.29929.8654153076821691972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eafa2caa326cd20c54ce197613f4dba1bf0681361f78dcc62ab2dd1b9ff9918
Date: Wed, 26 Feb 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740604733
