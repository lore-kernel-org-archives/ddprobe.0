Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDF71448C6
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718282303; cv=none; b=hCQARwKFreElN0O84UjCrUN/RtAlqaz1j/My0swQT8aqck9DFcO80HTlNzF02EC7STL6MPRLVvCUj0dvznkPBlUVXGlcxsxXhbuolApWG3icqPj9gBueQp7QpJpiCQGLWv7s2r9vNQ5RPtDSfje/ajPxppr7yhnKP+95+1j79AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718282303; c=relaxed/simple;
	bh=sIeRjsr3yc0f+jF0VmTQFqBNAEvvnDFh6LLYvn1npQI=;
	h=To:Subject:From:Message-Id:Date; b=O7Jf211Dn6C07kbME4dLbHVCP5GQz+NGToj0lPw54VviDdr/bq6mJiHBKNvs2GfvFcn+64dMeOeWqB4bmk1fMWY4O2w6s3HPdEkiIFSh1p8kBB60xeAo26VE4dsdZK6ZGeHXP1rAkpPAkxwqJriw0t5U2vjd0qUWPGTAEDQHkUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfwizbRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfwizbRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D9AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718282302;
	bh=sIeRjsr3yc0f+jF0VmTQFqBNAEvvnDFh6LLYvn1npQI=;
	h=To:Subject:From:Date:From;
	b=jfwizbRDxJZozOzV9LeOz/OlH9XnT/+QUQVE7ZgKXELGgm80G4eLLaTzAVmLGF4W1
	 7tgjZY6Ib/D1mk9SNgNy+0pHkcVFXdFaMQejbtp3K9GqLvNqbmATOCVhc7CR9eTfJ3
	 tyC2P5BTI0jySBJaiASZe53wtAGLg2/V2qi/Bva47TPy0zxFR8Ityd/YTr8TkU5n5L
	 5T2PhaqjJR7tJfpDeEYK0y43/OphNvpME8qpX6oKcn9R/dhZ3HKkbGFC9R7xc0hkIN
	 x3i2Euczwqf76kMIYUu6PCYHRNfQdpyLa4GJ0wGx7oIOP17qKEQmGW3DnFQFpSmS4x
	 ROdvaTSvhbpCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD31DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828230276.18646.15953605282033953587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a89c09bd3150a1393605f5a5c5754f52b6fd47185fc89b309c0f542af6a8f9
Date: Thu, 13 Jun 2024 12:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718282302
