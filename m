Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5BF29429
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727689554; cv=none; b=HZjXogD0ABcGXUSUnYcVg46THFpKx+7XhL0mqyYYLjS4naM/qA+wZN5+doviSB4posxWCcHIBRSErajQXZcjfg1vUb5DEeTxqEOc4de0pBFC75unzcAA/jv4/Ty03EmDGsb/LG2+O+IJfLn8OHc1WT+r2HzhmJfYrxx93o2lK2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727689554; c=relaxed/simple;
	bh=k4c63CBbiB0xp9bbzOF9CK5v8vTaefJQCXHlSv7j6dQ=;
	h=To:Subject:From:Message-Id:Date; b=rHnBC6oJSAkj5ZiYceVJACPmVzECOcRj1HQ7W/8c7EKRknKRQJ0GidnOcyAZwyn4sgf180XO9CIKjpIVqEKglvM0LHxvCZ6jXimIvFHnTGqWgW7oP35zB5hMXyW4pwvXIk5RazFOhn/9YVvPVYiSXwtu312ecjqRywc+0zPMuNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8nQp9KM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8nQp9KM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B6EC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727689553;
	bh=k4c63CBbiB0xp9bbzOF9CK5v8vTaefJQCXHlSv7j6dQ=;
	h=To:Subject:From:Date:From;
	b=D8nQp9KMdud8wngQ/ZEitQomcIXdlYsIDcjmhqzlu0uKqgw2LokFMeV3h0lH+E6fX
	 ltLo5Rv4h4pLHJDdh2R0VEIyg3BFLiYlpt6JRtZIfkRmWFkTOyYxKNa7mZJucA8zIW
	 I/VA7119HtFJsETtNH7reYGQu7JgZeZPHyrNMMI6Yv/fPZqdbRYhUN8RW9XrKjSffe
	 0Jz/Orji/Mr3akksUg6lXtlrYkI7mQy8tdlYsNs2ZQZg9jhWoF9jARMD+AdwlzQNMA
	 /q9pbrpCNJI5nVzqGlIzd9NS0jGwc6OpnoIIwSA7nmaiDeO8HkVm1B0YQSO3BL3vJw
	 AVrM0VmSK8O2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E29CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768955358.2782.6182753884154504063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c4e94cb4a894ee4d2b15977cca78704f1d172f3a390124a2a945477303c39d
Date: Mon, 30 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727689553
