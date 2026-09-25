Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E2646D2B1
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790323834; cv=none; b=FwFMJTebh2xa11PHKDWL++lBLV+nNCG/YSxwu3U119ACGvPHK2wGti0/Lb/Kxb4jwK9bZJAEShNgZoEl7IINlNN3fGGv/M02GE5jMV7GJ0gSTzleWm8l0rnmsBhWxTY6U99ESQ19IZcJP+wNwPeksuVQgEuBhlTNsEhM8Fpl5m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790323834; c=relaxed/simple;
	bh=LUpojOMkDK5hl4ljJ7dbSK007bGENXx2N1TGsK5O/Is=;
	h=To:Subject:From:Message-Id:Date; b=dJMHK1S4xWPjknAKfHfLbQZrrK1IpCWhXkbCunPEPoenWlQ8rp3m9t56VWY+KB7ob7/ZsK9115Dz3DH22lSzKoxV0I5qV9Sj06d2VKSi2qiikSoHucp5X5nC7MmyGSc5oMjM9QhRYk2meW8YgL7aCzNsqCVoJKUZ7MfX+oKcRn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcLihn69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcLihn69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BDDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790323833;
	bh=LUpojOMkDK5hl4ljJ7dbSK007bGENXx2N1TGsK5O/Is=;
	h=To:Subject:From:Date:From;
	b=tcLihn69r4eoRnVzIlMypmVN9/d3bUWh1/9oWpu9lgKSvVFy4IOzRuNZanNNSbnkS
	 1lH5bOZhKiSBSbSvawU3vns03cdm0UVqEWQUuBj7WIKQ/4CDAb9DaHB+8efwQ1w7G+
	 ngoICSxDrpz+zpCSZBC0L1LHo8jPeDHLjyZuIO0aBESxL175ZS08gfZRSrydQsuyvg
	 eX/Q0s6sleitqKujJxAFphgHFQI9+WshzyhvxspCEaOEmL/q2sWeYYZo0/kEMoPbee
	 9p0IdIYUeQfA+5EOu88a9drFDsLdVtqBGDDSiFDlAU997n2XoGPebMbMDWxNWFDVEd
	 uihGWK6g1Kjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC285C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032383369.16827.2666885334748112336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc04241acf6f17a05691d3188b0c583a642071394094d5b43e7bd362504ce8f
Date: Fri, 25 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790323833
