Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187CB3C2772
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773916494; cv=none; b=Mn/V5F+OqsMvFkICRDyoNmJp0OJmRfSIHXR/F049THZtR3ptzPEDQs+xfRDaOv5Y+E7yolbwPkshotJ9m7QnOd/iGp+XU3jsYA9KqZIwhLk78sAgQZuIdkHl2vavfsm21J7NbH3h5groB/vVx0NSFF5rOQ598RENPHrzWjLcun8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773916494; c=relaxed/simple;
	bh=ccWGG8OoH18UYSqrxLeiAy4gYpEp1dsQTzfVg6nksTA=;
	h=To:Subject:From:Message-Id:Date; b=EMlNDT3MNXhmvQ13fBBX77HZJdV2ru/FA7OCXo5gZQV5Evv3rpIadl3AhoOJn3XebaDzXOojErLR2iDWav6u6fqgkswIlWHg2CkXns45CdPnSp3G7q09VoMfIG+UbjBBcl59L+VHE+rM1R08RcXR9ofVlNrmf6FORoXjVayqILI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc9W6tAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc9W6tAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED82C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773916493;
	bh=ccWGG8OoH18UYSqrxLeiAy4gYpEp1dsQTzfVg6nksTA=;
	h=To:Subject:From:Date:From;
	b=Bc9W6tAuKCxeq18E2An7Q61aFp60qZnRied7Z5uOI9hvUXUsHP1wYWvKWygjbPhrz
	 qA3EjZW678sfxJThe+nDE0QK6mSR/2GEbP5XXp6dOmT2DsUTWWe2fwpCZdOY3oBb1M
	 L2XCBJlyBgclWWOipAQPb1RqVZx5ND+WEVyCAn74V+a0pu7HXEl72NUV44W0Ow0k7K
	 BAvui2T6h5u5uVXuTaPVcGGl8E65Lzc6FCcb2WfNbckwlJD3Fsq6qm57OtlOu9FNCZ
	 ayueP1wOsTvZ0bps2DGqZjCCeRXpUD73CaiQXMsLw9GTZ8E/U9At//DEk1TUnW83C6
	 Q4EbYvxT20lDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34D108E1DC
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391649357.4102.18020938464490197384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb08088276d68dd8c1fbf992bede09711df6a04eac2c2bf8b4c4575b2c2e3ed0
Date: Thu, 19 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773916493
