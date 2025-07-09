Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5917B2E090E
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752068994; cv=none; b=cM6xNsYrY1Kt55+Xvxv9UwkkrA6j96vEcfH6qkMP9ZfrqFxwBG3wvRU5e6LZuujKDnOZK2bUYnmP69JFTjMi7qGh+0w3pZmj8ML/5NjgBubcolPr/RsRmidUDmwzj4fdHJBBaL9c5/WCTqtBsFOYH+RpkX/iOZ+d47N1u22Ehn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752068994; c=relaxed/simple;
	bh=dakzv2NBQlN/m1g4yP3/bhzc+6peq9rHmMe0su3Y8SM=;
	h=To:Subject:From:Message-Id:Date; b=JxU0LIYHFXZmkrINqDBukZwJpZfCsjWcxscQwl0jt3yRUBI0amh4U+s8j6p4Qx3KZ/PqXMsjOAdsoqiencDQg0UYkmxXNqwShMaZqRwr/8+czhDuizIjJn9jCQK6Wx7ejhv76prRFXaJnpOdKZiBHcNa0mJYfq7JQcewsp5sx90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujN82jfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujN82jfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C9C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752068993;
	bh=dakzv2NBQlN/m1g4yP3/bhzc+6peq9rHmMe0su3Y8SM=;
	h=To:Subject:From:Date:From;
	b=ujN82jfOAn1EA/3WbnEWHWnqI6cVua7jQ2Wnov/pyhcr/GA4bspk8PKARFULFDwhD
	 63LsCIJPEAQFtNOry2LzCdgEcWaIfffCfzhxnvd9ww8ZdZKFpDqrBeAhiDqbGWC/m5
	 VT8TITZhOSQXHCbVOJN1LAWixE/qU3FjtUDPjUKalmqBWsOg/2U5PQz/efxCallgGp
	 OR0ZFU2FeHU9ZuahXdlQcfhnuuLxgXe0CQIXuRRVu/6cWl6AIUJC40WYuVq9FP1mdi
	 ES5csDZ785EwHsFAIno2Jcwty60Uii6w4t7K9GEPYFAlV6ex0xTl+RMBOpmRIVfDCI
	 9H569YpifhDZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C79C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206899357.26644.2222262646272347594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e3362580982da73bc3597925b140d23aa21a1a96d628aa897e9b51f45b1d12
Date: Wed, 09 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752068993
