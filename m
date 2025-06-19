Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1797D78F4A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750338594; cv=none; b=MN0HKlmeu/sr3gUxzojvs4nedlrwOHmiBe8kpKNzEqQ2v3y4CSv8fkcVzPj6Z1X390a80VpteHc4py45U3BQiSlzIxMC+NU1Zs2xkOlO+5xEbvkNYud9IDroxKbgx/TTPLLT8gCeKK/T/LomcOQI6kDI/5me9RUUzY4bMqNmARE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750338594; c=relaxed/simple;
	bh=FT351Iee0phO3jcBlvmHuQ6s8/G4ZPw6pbXbvlsMRcE=;
	h=To:Subject:From:Message-Id:Date; b=QDrhajwoNTm92tD4HdeZQy/agVkC4izx5EkTEU0iyfxpjA1auCzR4+n3pw2iGckld0ZGCotx3+LqCtGp1dialEn99+ynmgECyGCXyZS55RwcgTINTyqz0Kd9FaIdap9c9BG5eX4fS8APqkvx6Yr8p9HJv7s7AJmAbRjvzITbeIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D20okteb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D20okteb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750338593;
	bh=FT351Iee0phO3jcBlvmHuQ6s8/G4ZPw6pbXbvlsMRcE=;
	h=To:Subject:From:Date:From;
	b=D20oktebon6AzojMasO1ZbpxiSq0q9+0AgoIPbf/VTxWxWVG4GBPlFwf1imO1G+Qa
	 4UBhKUpwMNQuMB1o+xRTW2SpInmPa/u+7MRDQRCu1g+6nG4ErsAcVbLDuOKszqUo8X
	 EdY7MlC5xcg50DU4m1NHNdFtN+dR/ljCfWefAu/01S8/f3soReN49H/SpHdWy0FUcS
	 S4+UjST6Mx9mQiJidzoi/iDJszoakaONExb5AJ0avBMYu/c5YRQRhfiNaa7Fact0vn
	 NeFFYsstyKcHGCRStMiHl9LVXWPPPLNc9Koce7mOSPpjLT9RTG5S3BFb2YY9pWgKhO
	 H8peJrNpFOauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8AC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033859358.21557.7581131652984398905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff364c99946e522b89df09f5fccec347b2ba7cc345589e4cf472fb5e65b64ca
Date: Thu, 19 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750338593
