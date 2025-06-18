Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADC029A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750207794; cv=none; b=iPXsn+TXVGGGz174EzX5jz/TpNnWt1jkJz/m1uILpZpVn+lvq0hZiEkF2oku/0Wpx8Jon3sA/1agfJUfMohWXuXebiswVKMDHXKd6SRal8Zzean50WY6TqFbXS77hQgBQq2Ql/t7Nw4WHXU+djZGiCGbq7ZtTiFtrGD1f7pANwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750207794; c=relaxed/simple;
	bh=hA9LxO2mv7ak8DVRE7SrHdfMitxpe7JhFZjpwxF7V9M=;
	h=To:Subject:From:Message-Id:Date; b=cvgbulpKV8ZBXJepOXSbVZVpEDYgLa5M2qiTQ34TImhw9PSzb58RfB/4hvtzp1YpIrrOS8y8w3xWVIjthOh3xg19QHi3MD/ClB3Qf1+5qoY7VMkQT7+ydGRXuHD0ZYRfp0SgN1vA2LAO/bYn8iPyTesWQXIDoF5y479xrKzzqxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBB5RsaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBB5RsaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750207793;
	bh=hA9LxO2mv7ak8DVRE7SrHdfMitxpe7JhFZjpwxF7V9M=;
	h=To:Subject:From:Date:From;
	b=nBB5RsaZeLXqiccTapk6cAaS0KqBvPP4nZJNq3cqemYQvudenQGzF1+S+BHCiYX+K
	 8wJZg6tnbPoB8ky51AkKlmBOjlThpv/v5FrgRNwjkxvkAd/MSMhM6yQ5DVKThdi5Ug
	 keBi2puHw/JjCTuKLFEBSGn6bJHhOn9TLBwoM6MFgQH3UvcKLGnen35RGyGafAAK79
	 VksqqXJvpXRItCzj/P7PqK7aEGw6ZOtOEX2K4OHsDjJhlkB9KxCA+xW9v3WEvIXy7f
	 kSJ7VbebsFJsrQsaTKqZMYH9Gzaq8SCxpBnPeqrl/5JJVQ/kbMxrfBGNPp6y+GR0Co
	 1sHSYPkWR1N1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BAC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020779357.20412.11770470129495972505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59599e5b00d430fcfbcf61c43b24ceb83426bdce6807a973c92c29c96f8b80ff
Date: Wed, 18 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750207793
