Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E05E228C9D
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759429194; cv=none; b=fdDhiXwGlVjr1MC3St5YMUnfU95ZLm6r7k+PnLpeBqvj57z9TQ017SCL+WY1e6YK1iOEswG2ENzVhw24YHCgWuITfk5Itg1uoSwDrcNVp3fnCDMRzg1rFXA64xOSu4juUdInyAkYY8RagNCrJpcWlLznTkYQI0B/frVbi83QZwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759429194; c=relaxed/simple;
	bh=qw48gpvuSft12Ddj4kB4LAO5qA4QBjyYL3MwIMHom14=;
	h=To:Subject:From:Message-Id:Date; b=kcZUfdbCmlBiKxqMZwhK4yXds/r8Dd3PPpaZWSK/7a2fM36vjpQHIZYUQRh5quKb1HbV0athZ9da9AfB39G/XCvOGSKxMkp//i8nKTwLXMd0XNgt+SxyB+SjvOqqezmb9s0Pg+UbhFnd5MTtdr3fLEdkvUqci8wFHGLWmEkhfCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxIsUKXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxIsUKXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83B7C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759429193;
	bh=qw48gpvuSft12Ddj4kB4LAO5qA4QBjyYL3MwIMHom14=;
	h=To:Subject:From:Date:From;
	b=AxIsUKXcCvpvLG5crao5Ak4ZNdGbHnOZ3h1m0JTR28DtmcqHOArAnnSKWLsYuWlkG
	 ENeFLRH09ABh01zOwXQ5nSVzTx16HXtXAYie3C05lrdNPnajBb+GJ33KbSJU50Md72
	 N4Ne4Qk3PNuWiABjP3DcB8mDOUqRy+fWgmvsPCbIx9xrd7QvI0Izd2sMWxT70DwK34
	 g6Tc3hVnP78N0MpCMrTJ1Xt7wfBwkA1YdiLg1JqTucH3TCCn4D8Pmz/reGk3diAYIQ
	 qK9b15Qo7UkgB2iOC3bsnb+gIyFfSdCbE/HDx1zGLbzOUlkruy+AGKF4Wj9GPzacAM
	 /CZH767bL2WTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969ACCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942919358.10633.1423851128436371685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d0c4feb827640262ace5eb0f08c9fb3b65fd9229a4fd5dfb3262c96df51380
Date: Thu, 02 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759429193
