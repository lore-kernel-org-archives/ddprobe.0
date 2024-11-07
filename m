Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDD419048F
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730957154; cv=none; b=ePDFbc2j7+++QZiMcsVeRP7q8yMFxuxz4TdSbiy8qHbV4qZfG8m7pB7w6I/m7isLSjkBjLi29Ut1UCh5f21QJY7KG8U5qX7VDGUWyiPQi2g0V1EK7oALdd0WlVKEqkBvSlosCKk3A9CIr6wSyXtENQKDVCWL2ezq/ib+1XfbakY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730957154; c=relaxed/simple;
	bh=+9CuwHgNcIzBxnHaH5VLad57OBhVeQ6E1uCoK0GQgvg=;
	h=To:Subject:From:Message-Id:Date; b=X8B03W3ha4Ox32UB3CVHgv8+W7Oq5i2WwPv6S6/SN6jM7fnCPQKVY4Mcib869V6u6pu4L3h7OepfHPn7IkdfX0tTDd0mui9fTeVReWHv3YGbOr6zCADUggtaCwoYoFwhGVVGvbTCoA6EyH9Xc3bRs9YJDgWa4K15IXnqbGjWkVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piJmryah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piJmryah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3FCC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730957153;
	bh=+9CuwHgNcIzBxnHaH5VLad57OBhVeQ6E1uCoK0GQgvg=;
	h=To:Subject:From:Date:From;
	b=piJmryah68SUKu6S1VemyfpJ7UEPWOzaWhv66AydDas3UB0QzKSbjyjDASZpOj4c8
	 HmhmLuhHjLi53tRebOQww74f4M8K4bDN28AtVYPpYP6SN0yt0DWdh0l9wIlKK/Ul4z
	 hcjj+dOqZDwL1S9uUZrFeazBvx3LJonvyvjIIKvaHraFYn7u9iHO/CD08cKG40zvf0
	 pFgvRoZAJrxYrRDfx4RE00ddu4B6Bb6xk+uFzcY+AcQhLrH3fjoUdWYYLil8AWxr9m
	 JFU4IqE8e2QaxIrrnVUZu1FNaziylZjwAlCNxqxOO1NQJquUNvHUYYjaaw8Wma3R7f
	 r8Iq2ZOoiqwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94183D5AE60
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173095715358.4713.9308586674334154227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ecd32f92aa43721e5ca71c1eceb7878812302151d8e4b89a2143a3fd7f589c
Date: Thu, 07 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730957153
