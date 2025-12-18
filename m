Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D1A262808
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766034834; cv=none; b=bakoHFBNiLSc+U0dzxRAd/Mrhapv8IqT5cW7E5Uhn3vFeqZUB6Vo6V1eVXGP3qQuUKZu2WguTvWY7XioR8R4MUCx9W2wKBgKIfChPm1jQjO8Cl6tA9nh4Lr6UoSr+n+luyxC1aCmSfpahMK32GIOZU6K05fiHBEYAJpACZk1gFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766034834; c=relaxed/simple;
	bh=/jbe4jF1E+loCNg2BvSAcQI4eNlf55P/m9ies1pikTc=;
	h=To:Subject:From:Message-Id:Date; b=AhWse+W8Uin5odhc4Mbd2z9AHlJlrVYP/J9q8msHr2JFImCoV8Axrxr17J4Q8YZLDub9wVfmhxTTWLVboUJaqwkWrpvaw1uWhM0+m6uy0vw5ngpks9ClaBXMMZaQHy3C61fbhSg+eMxFsmpfJ0XIwx8pDrHeXNTbsi1Tu7Cley4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QY2pZylL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QY2pZylL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1309C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766034833;
	bh=/jbe4jF1E+loCNg2BvSAcQI4eNlf55P/m9ies1pikTc=;
	h=To:Subject:From:Date:From;
	b=QY2pZylL5aOB2PPQ9vkLuDhj/nBHS+w9yf2ftTmJoEVBdEywacFOka0UUX4WjIvHN
	 K/98gthqfPZPtHBpUEIQM5wDfi/7hnoPWMwHLQv82s6WQXeEjRhUjCd89I+ezOxYLP
	 AW+w9IySZRsRDZvrn554J8J05TUbdU/tkelYNsNyzPrE0ykJmzunOgZaWkzBVjE8gS
	 pK0QW0LeBoRvrmnQBTtlisEckxWw76nsUyNTQGfyBxSh7ZELrtPeSS/TOHM99dxKfl
	 e3gb2Tlf5sB1WHxO6GH7CjgjPvl+0fEfpUz6drocQgqKcwqRrhhGj7csKq2yAHD2op
	 XxdYiCYDeofsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC9D68BDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603483358.1904.856932114666848905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeead096510b74608314090da54cda7e2a21c40f95a9a9a51f7780604f7f745d
Date: Thu, 18 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766034833
