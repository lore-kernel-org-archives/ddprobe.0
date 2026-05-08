Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88F13815D6
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778227055; cv=none; b=EIYYb+AHwmZEDnPS2iKKvwt5UeUDVfC4GtuPvdKuul0bz2DL4kr5iN4PygJ21T/OB9ChYEUUcprmPpskGPdq9jl3GZbvnX81EU4+Qulr+eR0h7o2LuYxqZ1ReW0RtNmjJU69eb1prhbL8OHIRm1pC1kgyjkSVACxGbQnxPzjiEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778227055; c=relaxed/simple;
	bh=FE+RVVoXFwzVZMGJSqu1rmePTwATf2JYNQIFabSbC6s=;
	h=To:Subject:From:Message-Id:Date; b=OnfIdcaGtDDZiexzYaHAIPWhd8VYR0HySwB6lh/ZeirwPjXbpWLMw167QyC+B8GzePuVTu6+3xC6Yhi45p/4fLj+qD+23Ltt4hk9/+fT6Fh/4guYhOV1lO2dllY0OPGQlFAKIBr08boo6uMQfJTc3GFa97YPP27a0/Q9SDQnmt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6rCOpi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6rCOpi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC716C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778227053;
	bh=FE+RVVoXFwzVZMGJSqu1rmePTwATf2JYNQIFabSbC6s=;
	h=To:Subject:From:Date:From;
	b=A6rCOpi6DWD/hIu9cGTI7yk7LzOpVuV0V4ImUNKNzqgonnqz/9MIuGQjz6iddNdS7
	 FoW43u9/RtQctyGdzsWnEYt2jlpjKbsYspvJqPIW/8EdOxA6mR3BfEeWNdd5eMZcEZ
	 VZW4ezp7xnpXpBY148Es0fKYORm/umklUdULaRaYeqvHgQrdVzskt/hPVrJdbiuZaK
	 3BfGz8VzRfttF28k7XeHLo0aWN7mQlQuSxv6r4BCVhwHDkyW/Sk/caoZPTvHtdL0J6
	 qlLZ+HNVtA1UMytrkVwi4K3zJ6hiuLFOOGqqcqV/V+S+fNnEIqFfoya0fMzPE9zam+
	 aVqOgBgypWRTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD25ECD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822705369.29300.11773585401429124430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3bd54e10d4656505af4ce88fd58046c8936585067fdf53c9219ea6d3c87f6d
Date: Fri, 08 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778227053
