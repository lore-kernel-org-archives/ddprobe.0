Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1A2292099
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747249794; cv=none; b=n6zDFA3NLyp9JOfu1isNGibG3A84XgUdVElUNFtxehQogGLF0dS6u+RyvhI9smaJEEfc/25V1pImJkn8R5s6QWKoVNigZxThax5l8B3H2zoW22585RQuvTAYlEaYYQ2PnoFC+brIdM0qpaqLFbWTtc/SZtSblx1baX7n8iUHnUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747249794; c=relaxed/simple;
	bh=Vod48lbO2Dnoufq4kjr2H10JjadxL/pxt1CDSv663S4=;
	h=To:Subject:From:Message-Id:Date; b=R+PnBYDUpHHCkqZ/4lAwCMP/67M7txS4pm611NVReWgS33Bm88tQcAm9+7DZIk+ICeV3ynjstrO32X4Xy726WjbWXEYIB/HkvEcfnnA7pXsi+a+dX+1X4WGMq++WO3BWiIPkkNN4G2BdZOzR1M8awXUXORy0y2yzqv9NMsgNC6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7Q8t4DP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7Q8t4DP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747249793;
	bh=Vod48lbO2Dnoufq4kjr2H10JjadxL/pxt1CDSv663S4=;
	h=To:Subject:From:Date:From;
	b=U7Q8t4DP3KPQmR3KW/xZUOUelGmK0PjbMqLlrZT9zpUun5u0369ar3Eu4ZGF1yHQi
	 60l48LaPDcXfzwtTLRXaa5TA8fnErbiJXJKa0BaklVEbfLYZEhbKjLPVVWe3znbd/o
	 pUNIrhe4X2YcWkInQdjkch0YZEY7Cv+SNbv6wcUwlTc2fDJI5eevkwIzbha84uuvXS
	 cwqC82fFmn1EeWw8nbTedkxPay/6iMa0LIHNsaguHpMloFbDLYVfBNOcgfIhfdFH+v
	 hiz1BS/HpFDzha64AjmoSNB11cr97NTpAuSk9+OELpaw3P/n4OXm2Kzaq6ENAQ/Nio
	 knehuXsDdplDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB98C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724979358.14193.6101569836778474405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41e640bd240ce1be573f1192a8253801c957f4788d69ef49e6ae53c467aada2
Date: Wed, 14 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747249793
