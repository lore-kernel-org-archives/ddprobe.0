Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471F814D6EB
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719435803; cv=none; b=SSWdhhlwlLbLg67v9mN2G9kyuUWPhvIOTP64ZM2eVvgwEe/9EJ5kF6+dM6Xk/jgc7yKr9AdmjqZxwgvFnc3jyn7QsEbufHOIxVEa1h2/sqgPEIpv+zEyE5t9V9hRHSHJf/tg/GGldzHrAeWmqdwHofaoq2qYCWFzo+Ri+qZNe1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719435803; c=relaxed/simple;
	bh=1W7gKHIGyzDVEnQ+i/roBS11aIr+VpN+rbm5kpk90UA=;
	h=To:Subject:From:Message-Id:Date; b=H8gByXqd+b7SO6oLYUEKi7Psk2YUILuOAKXbg1KoO2knLJjqOKEv3/wZ3vBzZnp8c36bco9IYvz/liJbDwMvHhyS25Dk1rFdl6GvoHo1OQHpHQNhAWG5ykUHFdAgNGDBUFxaVmHtwdkZyO0EDHOHcSXQ7FPHKEffimCJjBlFDtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVnIkLlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVnIkLlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE9BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719435802;
	bh=1W7gKHIGyzDVEnQ+i/roBS11aIr+VpN+rbm5kpk90UA=;
	h=To:Subject:From:Date:From;
	b=ZVnIkLlXtus42t7fEvb1fvS5oPLTaDKL+VaRrinXPxtlyhMFTVYdTHrmxdj42IiQw
	 +piuHAiP3JW2//lp1qecgSUN9YY9k4agPRY9Ooar2gsXvMh3dwNRdvsGK8OYCuvP0f
	 N3RLX2N1LsM9ZRyL01yGL5Mj25eQZy4hg02KU0J6EC7wYnhYM7SH60xBT9uhezCNH2
	 +SOnydmqd8IENcq+9kLES0mMZLTYelkkfSAfcHrv1ZB7EnIXq4ozOaJ8hvo7C4bIEU
	 mgzTY3bA300P6OdTdV687cW5tp/vkzwqESoKAetLQhltEdXC40y+CBcjh3wOBjVZ0x
	 AlaILIU7NUT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C986BC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943580281.24414.6607007313486568068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb822e9a3a02f55676fceb71d8c674472c80acebae4f3435877bc14c67dbee4e
Date: Wed, 26 Jun 2024 21:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719435802
