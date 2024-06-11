Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D0F63C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718082503; cv=none; b=gTtITusOBD074HK7P+nBUzATSovD8x0oX0mDaPjqdvvwRdfw0iB42dTkfTCp80bZ7NVHsRLOmNgiWuGAwXG76T7DZCsLe/a2xRQcqt7PgQOaH+NjNiW2ThP1l8i8aGDw+KFgJoyisYkKr4F46YG1b0J3O5ahlFGDh8VZdVbTUJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718082503; c=relaxed/simple;
	bh=WE9p7mf872BthNIbpk9ZEN7KKXgmhtgVrV/VWcBdWN0=;
	h=To:Subject:From:Message-Id:Date; b=DNqpsKniZkOtV9VeHi7cLM6OpTgDDgXemVBuS2jREX0/AA0lC8oc/1R+YZlXQK8NBtZhoMEkBF0K0TrVe+0XzIIiBVPj77yCq88oxuqj/xm3xEG1otiJd3yCx1Gk3DnKvb+LD7i+Be59iQt1vTfHS7XCVR6OYjbgttqAX7IQujk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9TitUIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9TitUIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03B6C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718082503;
	bh=WE9p7mf872BthNIbpk9ZEN7KKXgmhtgVrV/VWcBdWN0=;
	h=To:Subject:From:Date:From;
	b=i9TitUIJO5pMKwudBwQ87Pioo47uJ/7+GbZnE58q8JqAPAbKDhOI82hTTpQI+kH62
	 zgQNwaoBMIeCTf7laZcJwy+FMKZpMUh4gbVg1neAJf0xFv9VxXu6czB2LA7onVT7ba
	 9g/REFGCCap+/5Aww3HcUHv6153zv7oXxygpa1qOl4QSl86rxKm3CSiSifcfdCXOrD
	 WLFDq4b477nSTFkwnb4OO80QgR5d7dCPu2ZVNLw2j8JnxZYmKT01NFAJgwyQeEO+jK
	 HktABdMLUbKTQjAd9zDb7GWKIZoIKQ7rTJWvhe4dTstVx20bHSKqW9kGyb4nSe13EN
	 v++A++9bNk+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBDFEC25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808250279.13186.7255049953515158074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e1f045466ded7a403bd84469e12fab1e32550effc5f84933046532f8434c49
Date: Tue, 11 Jun 2024 05:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718082502
