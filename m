Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364EC17A305
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748695195; cv=none; b=M/W9bYLLKwd3vY7hY99dzb1J6gZM8mW65sdm0mmVY7NF/VG/tx4QyICAhw7oAf2MvxInUf49AkfJkHNCYi/5Y3E/wAlgbmiJmtHcslPeDg/ar0rvPM9bbR5rlZoj6LCFJwfZlr0qYx+Ula26Zy5Zv9e5rclWffZDG9fEnvUJZKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748695195; c=relaxed/simple;
	bh=vjtnKceDNEz5IstMDSGWdA/+37qimAc1GBD0US4EE3Q=;
	h=To:Subject:From:Message-Id:Date; b=pM2GTlrHuyP74RQnVcwku0WAjHJb03F6Oz0ex6g+u7fgp5Dx/lPxWy7S98Jd8u27oYTAnH+yEqTlTsjDas2S9HUKNl1dnypXrnYeRw+QPtHN8g0QGGHzyQx85Ekx5XBKX8ZCCfIX85JC221t+Mig33d0Bb01zWbx9JRKp9iwBiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDLveapg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDLveapg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3368C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748695193;
	bh=vjtnKceDNEz5IstMDSGWdA/+37qimAc1GBD0US4EE3Q=;
	h=To:Subject:From:Date:From;
	b=QDLveapgsT88B0oT+XR1LLeyz4dExNNcdcL5Nwi46w0W82j/0YFgCsrjA5Id3FjYo
	 9va8AXPjcibF1ui9uDEXFIN9DCBvrYldA1D+dRj2joPHBQM5IZn8fVKIdZDDyeJugd
	 zrKuIUApZXuY2Atk9IgYciGEa0pR9an4nySzqfhmyqTfH/ycF7zUH/ptQwwlurXKAQ
	 1DEYCt/MHIGcgQ5RS3VtlgqrxTJLRAP4Nla+s1EU8/5uRWjhPSlFLevBcvTjx3L0la
	 lacM3GtJ0VXDxTZjDplarNH/lKTFVV9W3vEZdBwPjQ3zYy/URPzq5hRArEi6ADNVJo
	 SNU1svMe9kc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441AC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869519357.5888.12621656881138337711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a87ed7ab430d6ed0507c8499e3b5c8e39f3b28639c138eaf6bbdf5eb583f68
Date: Sat, 31 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748695193
