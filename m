Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483361B85F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740809334; cv=none; b=VBSOOJ3xBFdYTpo4vMJYbRF3bBhPeRyIvEM9ZZVu+9ktFYyyqHU9zaokqr+AbJDW7xzLxJwf0MWdF2WTesS9ovedc9ez06zAz+COhnmaS2eYVdCTMNOcuPg2RcTdKtJUIy8kUh2fzRHhb5wPWxOs+52yVf8IvRQmLhv2NxukKZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740809334; c=relaxed/simple;
	bh=5AiRxoHRee6FipY6uqlnQm067LJHUBjHeTSahIHJCl8=;
	h=To:Subject:From:Message-Id:Date; b=FVBZQm2ksO0oGBK+ht+7rI8awZ3zvevNJZMbEqFpwlqh4nQTD9tT2Of0gjX6E+5FnstJPjZCXAb6oguElvazsMGOayjTL3BqoKHfBQEANh0UYdnFFVrqtK7Gd4YvxLI816PIxTkLVGelbEI7xXZ6iIuwbixFyUL8RUgMaYTjCG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwoME7p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwoME7p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A953FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740809333;
	bh=5AiRxoHRee6FipY6uqlnQm067LJHUBjHeTSahIHJCl8=;
	h=To:Subject:From:Date:From;
	b=mwoME7p8YTEnuMyHWcfdimOFp+9jRSgHLxojAeAfb3HJ4HWRseW8OQAN+IA/UWLU8
	 JuOqQbfQN5ZgMm/4ZJG3wwOrHMAq9WEmeIq62ShylNyNZYEOvyXkgKkUTZiR8v/E44
	 kUNAVlU5xl5mVkR67AjknaYXAIJk0E+50MI9Uoj8QcLv3YyndTAuUfL5OMuhBEuZrF
	 i9vg0om/GPUPRlwMJx2cw5X3yU5rC184cb+Wg0QKG5eJzXPWb5cQbeYJm3Y/8lToMN
	 C/N0BT1QLxvfDssJ/AFMl2jtA0nR4B//QUskqWKG67OttGmQoBs4PwfkI3Z1ojQnmY
	 b59zbIUy43D2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C05AC282CD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174080933362.19333.8280403126480940876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cfa604ebd535632b87d26b3edacbff90d9d235503e283416ebe9cb72bfdce9
Date: Sat, 01 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740809333
