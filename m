Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CA022154B
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765289574; cv=none; b=jve6xXSLrBSuRnlcZujc3IKcxZclkcq7krJritHxLXdRYoUEHq1alfTbIWh7CSmAjkbSDy8WfBygDHCK0rPY37lWepm9q7jZtGa8lH6XKf8DhRiYSOeqx5waT0fVgP9hnfgRmoBT/umy5H0DzECdeHJxG9PssLEvv1gWhu+YP0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765289574; c=relaxed/simple;
	bh=HwFEya8bX6vK5bGEMUvxrtKB8lHTSZG4VFAqKAuPIDI=;
	h=To:Subject:From:Message-Id:Date; b=WrjKCuAZ0LzI2lSC/jZVcoL9X2rzIrTUnGxNosl5ZWVluTzdqJrVPx2Ue832Uc10qU8vBHMftabBEBeqXZLTRUHQtpqogsgMa1JV1ZgLnJFQCK4xQzMhMaTFEKiL0vjiAVinL9OG4/U1OMSaex4HUtUP16eXZngJLwls0PXHuRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0faS6FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0faS6FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A371BC113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765289573;
	bh=HwFEya8bX6vK5bGEMUvxrtKB8lHTSZG4VFAqKAuPIDI=;
	h=To:Subject:From:Date:From;
	b=d0faS6FTbmzmm5FUJEcBRYv6ih21uW2GMppUTlnWtT6+Tv9PVEI3uSuyd9wvelhza
	 rVNyVdDQqUB6kWPpp3UVcJXtNOElACMAGX67PrFr3ycsH7AmsNaTY8wuqzpDPau5tX
	 ZnttYECxA+mzM8ML3hDI6+G8y0cfAgZRx5svXAkra9v/iFK+ugRLEHUgecOIVOZA8e
	 xrvteB8sU8G35qyEvrcs9gUI2w5djagegCs4vkllI4PLNUng7O8nq/ETlM8p0ciRul
	 zU7wBmKtwBrJhKYN1IJAs39VVRuIa80yVxDpB04t5gv3Ie+Bs3tbFYasa3FLteNCkp
	 8QB7LFql2adgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9336ED3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528957359.29231.14233023417083464620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fe99d91ed2af1da9c763ea6938a1cee444e7779824acabd604ab50b1d50375
Date: Tue, 09 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765289573
