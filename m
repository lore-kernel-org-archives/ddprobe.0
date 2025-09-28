Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386D1DC9B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759046994; cv=none; b=ES8PeHDxeU+jTSfQszcOm6VkTQykzEaLmHUsN6Vxhh9sqS48pnd0Iy4IKAE78lZDDCq7pUOUoh2MqKLf+bQHaBmvnUCWwI0algbrdsz7qeAskXYc3Pyij8jK6xgBKBbKyMEplgGnlDDpUjqIwPjNwu8dhRmHu130BR2rnX21C00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759046994; c=relaxed/simple;
	bh=/qykKNTiRZnja9JryoPvNNuDOcidIQ+9j0Uh4sVLcns=;
	h=To:Subject:From:Message-Id:Date; b=NQz4Xni1VhbJYJKQctRPUnmneO2mvtKwqraBz8xpEBzjDzt6oW8WRY7P6D0BOlcLBxMUgUmUYpF8h8y12cysbOXZtgBzMYws2jh6+i/DrmzIWvwK9EWY5FMyZDRhm3p5+1XMCccH9JTWlhs+DvUZjODpE4O5duoVMo32+848jfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMRk5U8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMRk5U8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B05C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759046993;
	bh=/qykKNTiRZnja9JryoPvNNuDOcidIQ+9j0Uh4sVLcns=;
	h=To:Subject:From:Date:From;
	b=SMRk5U8mgRjxi9HqHC7t/sN2wTt/o7PVIWlXeS3O4mv0eNeraEQj9RFHBeKHASKAT
	 NwXr6c+CZzXpngMxcRUard2+hCpqO8fGC43yeKPqHONNLfVELvXTF/7A2LoWLfEFV4
	 XR54MgufH0QYdb50bN677lqs9hGl5M7HKYlZaWFYOtc7cR1tMjLyKdCcBT1DI/CoIb
	 F+4dqZD+Sc3pwVPxKGowFSIl2o5HLvTmQJmTaq6leR1GbOglyLuXfshwNmLftZXkIE
	 V2z9dzDWwBMSv95Na3s1TrImoMhGpcQWME6SrfTdEND0iEHBHiymQt4YLk6xxKFXUO
	 VQtLtxb+6c5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F20CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904699358.5797.3137994590629518582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78678b2badf3a4b5511aaacbf390600e5973e103f4f99da6d7fbcd307357bb8
Date: Sun, 28 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759046993
