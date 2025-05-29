Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515020CCF4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748518194; cv=none; b=dt7OxhOE4Ehhsg7K3xwlrfe+fACet8CbiaMVeqshlP7qI6f4zko75FnoGTQUXgzTE2hhBB5I/Bs5jUqacebPBgE/oyvyqWmiZunHBwPCSI121y0J3jJjocZPT2WVWh+a9plPddtuVEtByUvOqxgTUndCAnu6YdQb0B9Bfvxt91s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748518194; c=relaxed/simple;
	bh=X8i1IqqoZ/ITAId8yt+7rPhyNCZ6oX4oKeUU5B1TgLE=;
	h=To:Subject:From:Message-Id:Date; b=UOqNE7Wzz0YaWqlZddXI9g7S06VILKspBtMwrgoRQRmtIzlJI1Et7nUgT0w9IRxpDo2Sp316mmJ0nqsj8mdrf9UBK6/lf4yAZArVQADwLrxKl6cY44WHNMS46R/GpflvEUIhD9o7VSvUBYocPLz/+METnX1xrS03YyENL9tZBPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVoZEMkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVoZEMkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04E2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748518193;
	bh=X8i1IqqoZ/ITAId8yt+7rPhyNCZ6oX4oKeUU5B1TgLE=;
	h=To:Subject:From:Date:From;
	b=HVoZEMkkmv2Ummp78jS5d01Kc8z/Iv9YW6tWpzxQil575NBwfrnPcik9lmOC3Py3j
	 G9Vh4Kb1UN+Yfz3bKdKa/mgcd6qoiPs4g69xFxtpYYCpyX7vLu6bqYQLjm0wfy7dkr
	 3YnXkomwPuYOfUjHqQsbKNw8Eq2aVgtXDD84syK5Kvc0Q41I4v6kl3uoC40RMgTMsR
	 2a+XNPkcKlnpQYXKR0Rh3BuecwXqS0bIUuS0LiJIUmFulotAiZhdsBPyqP02x2hZZS
	 wKbpV+R0CpUcHpU6+y8UAcD9HXIYMQUa3+/CEm6rNtNbV0WntTi4rxzjq2FrnfeJQZ
	 hEAEYWGykcbnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E861C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851819357.23712.10930144993989580201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddca40fea34b4d87bd3e697054e8d0857ddbc9e5a8ab4377cca79a9a7e8c978
Date: Thu, 29 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748518193
