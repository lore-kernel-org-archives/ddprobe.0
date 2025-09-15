Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB65F2E8B84
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757960993; cv=none; b=S1tlRL45tCKf8as7j+R4iLoe29NSbIDopQv21q8mXrA09SeWaMscf+6QkDTiD3tBPCp5HW7fRkuLhjDdU9HpdRkKATcH/BedcMKUrg23gMdMt1IY+fHbvNL0snr2Jxc9cGcWRWyOMpJAa2mya2m7MSby+x2mohNf0dGzbcLp+Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757960993; c=relaxed/simple;
	bh=3r/LiPEl2WV88LI4/NiNB0jGEIBBdWi7mULyfoIMcwc=;
	h=To:Subject:From:Message-Id:Date; b=Dsy015rLKKyuS+zzH7oxz24HCeriucFRUwKG1OVLvAW7O8RGi54Cs2zer36rZwOceR0bVQzxir4L6fK0F0OZ8+o3Qo7n5eE2H9uWDLZAcSTconrnEthXIl8138PwgAOfIQQLpsAmRaZpdBdn/9uoj3z1GoO87NRwlFceRyXYrK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmZoOxov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmZoOxov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4BCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757960993;
	bh=3r/LiPEl2WV88LI4/NiNB0jGEIBBdWi7mULyfoIMcwc=;
	h=To:Subject:From:Date:From;
	b=jmZoOxovVUeXjCi5anum4M7qNm0eOGohATRAx4AQjnKcKNSmDTCzWPg51gj5rzW2S
	 aMGXcHL5qIQf16ZeXXit4aIMKj2gN4++DMQPlw6iOH9YKRWvQz+40w+4VeLYRX4hoV
	 ROcE7DlHJRutV92WDonTR8umt5vN/2dSgyws/8osUXEa8ODLlGZSdwLDlaAMDUXzCM
	 F1zdtoWR604pNRA3LjqizoGmf/6xb522018/J5Rp5bNObh9ub08Sj30afKZCzxkWlQ
	 ER0UbClymvn2WWp3UIyHS2Km4TvPQ9b0huadk8BibF99u6Pn53zDTWa1Cj55AEh1aE
	 KNYArjhT4exiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F7CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796099358.8783.4722435743577207458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd70d70dda5da5f309ba3c8598b64472d629472697e4830faa6191298964660
Date: Mon, 15 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757960993
