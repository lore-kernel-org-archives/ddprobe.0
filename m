Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E583793BF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775651134; cv=none; b=SLFbx9dffSMy4TRdr4AXMDVEw/6LCXvfkDWkCprSSNL4am0T4zH4BV38SM5uwTufFFWX7I5xzsMxSXY7RfXXWHpSnIqgOvZEDosYZHm0MpClPXp9+oNx78cgDQTqm9WGcXq2DtqCV+ior8ww3r15sa1UCtG3d1zWAv76xZEJhbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775651134; c=relaxed/simple;
	bh=zTwuoBnppd7nrnIyhFvS01ybSbJixtBv8ktsbCvn7ws=;
	h=To:Subject:From:Message-Id:Date; b=pp4RJVjxTd2C6I24s2BOXZ3ITatycVMnuTwUZaRtEtTnA7ntRVUhReLEHcX/mOpOb+otQZXvptTW4PX9Jr2nbP/PATxPrUib9AyXYLR02lNdIPgnzuDkTijAnLxR/fI1Z1gu52x0XSybZQTZpJbsXmuU75Rlu4C70KoVpFx+bB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8k+UgAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8k+UgAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BCFC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775651133;
	bh=zTwuoBnppd7nrnIyhFvS01ybSbJixtBv8ktsbCvn7ws=;
	h=To:Subject:From:Date:From;
	b=R8k+UgAffoeHRx0bhwhI9HycmWJhVuU4QnNRLg2xiRhvcOwIbefRUj51s5Ru16Y5s
	 KlLpgEScCp30aUshM1an4KE/L1bn6rw5oiKj/j8lxmPqwrAjmgIz97F1wGnd4Octlv
	 WhET6kU0TvAClV0d2xn6Qju6GrlDtkbEWsiorLDMeySee+fiZOPZApF9Uk2nhSlZJd
	 bXqLJelTlCkxJ3TXz8nE6agBgk1aVc5DvZ5OaRSRMrt+fCgXelDHUaZ/f/Ds8XR1rp
	 LYQgT+mBsbn0T8mAw5ySj32OXt28Ivf1gIoB80Xiv+trjniJ7wXKzUuxRAO0TeKauL
	 kWZpqxkbrvZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE621073CA6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565113369.19830.3011979145907894992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169903a7d685b8b392391278c6285e83611ae9b0d04673f103d7a80e99524929
Date: Wed, 08 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775651133
