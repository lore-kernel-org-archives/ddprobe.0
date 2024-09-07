Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255E5EEDD
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725676554; cv=none; b=PEUAyTF+47CYfBUjKBY1S/EA//SddLRtzcK2vo9Hk2n+tCP06x9IjjSD+OAl9JWCrpbIXaLyRf10qSkGZ/R2gAfLXEj363GMUUiq8s472LWsiWobQ4f3cR2kCDh5VXfpWv4w1pRfxRdSSL9W+BTH3PNzLVjG/XVqbSwtymJc7OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725676554; c=relaxed/simple;
	bh=kdKuIv6vQiErLsy/ETyUeB5WRIM5ErsWgpg+Bnnd6OI=;
	h=To:Subject:From:Message-Id:Date; b=Jr6oEyIDbRZKvbb96NtemaVJGWowslWC7Bg786eOgN8nI8mz//wethOohzYK1CToaZNJFeQoosADq0yQ1XC0wOU786F+t7tTW+Ck1wH6CypWSj1DlHrJ7spuKJDI6Pz4RFzhNqar0r6vvKotRYhwogSgYNEdm0PWUlbDcp9RBeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omc8jHpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omc8jHpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A814FC4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725676553;
	bh=kdKuIv6vQiErLsy/ETyUeB5WRIM5ErsWgpg+Bnnd6OI=;
	h=To:Subject:From:Date:From;
	b=omc8jHpzm+eQpOLUsBdF6bSpoPDfdK1xOINlzul8WfRVebyjxezXQUTfE42P/2EfB
	 DSzQzS0r169CbgK/Pwxj8d53CLXHDrdDgH28V0Erpp+cIaJBbVpyagXYMy3k3Cxrss
	 HZtjPOXuZ9i4gu0NQAgwr2YXPVjWGOTwGVfKhRyxs1pKZ30IE0bzeCpnu2kCi1OOl2
	 E2LqMe7EYkv1Mc7muC6fpdgOBd2Kw3GV0YpBthW/rKcGG5Sg6aHOGaF4Fnxd0GGnWr
	 X4JJxtN4AMTIrVLTzVxEzaTJ4s4h9AeSDpTfuWnHCZELG4fiY0D0nzb7WlA4KE0UPU
	 BmprOizelBjkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F5E6FE47
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567655359.4141.16072517675839016132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a73bd6dac124dd1aac6327b324b52a87b46b03a642edb920b8a54c2c12ae42
Date: Sat, 07 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725676553
