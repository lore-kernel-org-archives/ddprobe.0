Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE55472072
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790940034; cv=none; b=tBRwybH12mYbeRKkryk0SGABP4xs1jk7qlnR47w96LMceNjpFxJZKIOFUBRwsBEcBMRIrfcpHxghwycW5fbdAJVSnqXZllroaDwX2Kt/LruGqMdnYq/kpwyoaju4bJ2LCwQMLh3I/VzyjrZpCUnXSlmj4NDQM4NGNcspnW9dtHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790940034; c=relaxed/simple;
	bh=UQbrQPyzakelYPYu3Rt+Vf3bqFRtbsBfSTyAewQ4tLU=;
	h=To:Subject:From:Message-Id:Date; b=uYYNU/h5Z4dE0sc0+1ZaJQASSSN8PiYmUhw0s4RFvFCptE38jxgWFN5WCFPDQvCkCYYoqyCPZvW+s1+dYTXhBD5Lz6VoRdexdhknlwuiyHzdCEw96hvlMmli/z+fmEa7n4kVyX9HGcNolwbmw8R6BxsvwTpxDjBAPjlOJaRedP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6U2Fteo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6U2Fteo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7ADC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790940033;
	bh=UQbrQPyzakelYPYu3Rt+Vf3bqFRtbsBfSTyAewQ4tLU=;
	h=To:Subject:From:Date:From;
	b=f6U2Fteo6Xq4rleVtr67gwyv9KLob1FZBctoOqoVIGofNrBic3C5V+4ywMk5DeGoc
	 h5lD6uBIUxJ1Ezkz9ktA9H/Td0ODV5ugxdoycR3hI2ecgynjpfM9Sghw/zvs9SUEui
	 K/UzzE3GY/cAKRWNskFhRd7Az9SKUJK7csdJG12U2GW07ZojXejKm2erfw2cF02zA6
	 AO0cwynlCD8brgRZpvNE3xfo+VcnvIqetwV30rN/uQ9XyIZd6pb0tkp1E9l/H1KAzk
	 OflNj5QQZxnqxyUpHpOdUv6rpKe+H61toKaLxoqeJZYHJ7sOGgH0OHDuH6/LoMVIUH
	 CzdSiFYnKYOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA8CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094003368.13876.13936077727686040771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1787cc9f610295b333418b9a55aba12db87592b614cff7f0bae050919fdb02
Date: Fri, 02 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790940033
