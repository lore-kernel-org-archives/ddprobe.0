Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C0030C14D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780449274; cv=none; b=o9P2zIYbbcHyvkNc22uxMtqVpZR8rafhsg9HhsWi8HV8TmPRDcUpU4U0QuEI73WLu2vjH3Wq9TxHGjY4GqsjD22M2gNjTispM9umylQVsQLZa7R6lCLHoyq86nv4ryEjXCHxCF+yC1aJ5IejgciVJjf4GiVthBHf8QDKhmbjHIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780449274; c=relaxed/simple;
	bh=o550QSEn337cLFWW5oa9tCWfrNad1rh4GTVj7OHssb8=;
	h=To:Subject:From:Message-Id:Date; b=rFplG8Hq6kiscI+v0DLJcHJqmXTeqLBNoAh4/we3lghaAXHPt0cKcqhZkXkermsOdSQ45PsPP8egDHkFE4MdtwnSXGKqRzcuH+4bL2mRJU/FpBYncAXaWQUdjs7VJZTiT7p/9XiyuubsBBYeEna3sicAfIWVWcH8BrsGCgimsTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+VdbmZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+VdbmZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4249C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780449273;
	bh=o550QSEn337cLFWW5oa9tCWfrNad1rh4GTVj7OHssb8=;
	h=To:Subject:From:Date:From;
	b=l+VdbmZWx9d3L4qvpeaMDOdd8Tz/6VKxvO9mACohsbnvIdi9A/SqqhK7s2HfhfW76
	 /91byF8URp8i+bor15sFAaVNAftaBD++kKjE03vn+XdcLnp0yVbs94UNt9XixRLXsz
	 2VWkm68rbWx8x/luWZUhU3X20in4p/FdSjiWmEZcxn8G9SUPLHBAcV+uzKlQiBQDXP
	 0yE03f2SZh9HOWM/4tjwDnvO5cUwKO+ad+wKXzGbNkPdbFSw5Wi9jBaYA4TzKc8Z4y
	 JLM07kuBIbh6mb2aFBYTNBi8Og5rZICHu2KZxlakjfBZMd0vnG1ntjaMH0qxsfV2Cn
	 CHUMKnyiWUw1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA692CD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044927369.15322.14378065251690785183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383e46e5b7f6ce6d513270d718c5bb230cda4bbcf89749f023c8d81900dc8c38
Date: Wed, 03 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780449273
