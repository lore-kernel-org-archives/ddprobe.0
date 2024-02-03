Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5B95FB86
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706981296; cv=none; b=mMI9kp6S0Y2+vIZ8uM5dD8NQ8Kgp76apx/rIJAXFoD0f3j2lIXlB8b0/4kQYraEEB5oNX1pdH6Ot/ZReI3GdEBkyPQjZy4OG3X6Rnh+xnd9qOlyS4eW6pOXx5fUQ7eCGwmyWgzEEey378dgOn10BsUJVk6LzeOhr9j6Hw1pU7G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706981296; c=relaxed/simple;
	bh=SldbqX7iEzEr76pHwNNAllJ4AEF2F0ulk0d9COv3Wu4=;
	h=To:Subject:From:Message-Id:Date; b=qAEU3uBpz8dEvxkU75YzA6MAhK5eF01ZpysHFwHMRlTuJfgJG5coQlSyTySGHXcbJG97cM/gxzOK3ZSj6DBugVXh3oedhJWlysmM1sA8aHhG8FNXgii5GGGYSmfbv+qlMDC+r93tgSlnWU7FnW3qpEjje4yjJDJ7Qy0OLERstjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0T2GaW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0T2GaW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73777C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706981296;
	bh=SldbqX7iEzEr76pHwNNAllJ4AEF2F0ulk0d9COv3Wu4=;
	h=To:Subject:From:Date:From;
	b=O0T2GaW8w1xXR0MopyeEzp4bRYYbb0MzeC6UiIEMN5L/Tmgyh51PnkCLvdsKVJfsF
	 W+2XEewGAups5iOeHM6O4lNTszQKR6LearLoNKxpfHqGwGeTgVYtHTdGOzv/QW27eF
	 czvV2Ea5TF7ncbw9LpJCRTNBQoCeFPgQjvkU6yy0MY/2xih+TF6oe+tqBsrHc9B+rh
	 7hYErQZAKHzkRvylz5kp5KR8+PuZkUfp0VbOFzJmYQGy6emxYSA5MUyLYDcvQpj2yI
	 3KQZegA6xuJhsMC77TFDHZ9a638WyjHGezmvQ085xDnRzkabABN4GHQxLD3YIGqe4u
	 gEkCnHWaxd2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8A1C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170698129636.6367.8243060577608211978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cad6c4c716a776df2fd2e2a2000d3bec1ea9c5c8a9e7b1840d3aacd5f63e835
Date: Sat, 03 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706981296
