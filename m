Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD922FB0B5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758713994; cv=none; b=TvV9Z/jkANGoFewXvf6krrXmZ17jEroN5Zca9U0xzkghlcuwyD0xk2sY5M06yfvp7DdK3v7hipgtLtIDwywauV9177QDiC2a56FRnQ8O1bUt8GmVqhAhjgYIBEeUBwedUjh6z5pkhEIHDqOeAPHTdxO49d6mDnA4Fau+vFhhr6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758713994; c=relaxed/simple;
	bh=ms4ygWZkS/PEPzaypQ8g1RzvXaQSLPa7dMnmJopCH3c=;
	h=To:Subject:From:Message-Id:Date; b=GXKtpfp1UTXRXYLRBVe7PSZWNrGgd8smZe3pVC1vXye/B7PdkB/D2V/OGGQK194Pp9rUMOtDuDMvO8RSrGu8ymH8cpgTH/01KJ5MeJ1fwM4G568JjteWOuRn7mzblnBYywNJ5/1EWdQ142o0rYahRywQKdU/i58Hq1fRnP5KgNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asy1Vf46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asy1Vf46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758713993;
	bh=ms4ygWZkS/PEPzaypQ8g1RzvXaQSLPa7dMnmJopCH3c=;
	h=To:Subject:From:Date:From;
	b=Asy1Vf46Abd4jlj01CpiZ9vPSu8+JrQzD8N0KOospYbjfzC5MKxtEDaxt9UHvZSM6
	 0J7C4KRLRMtnyWKCniV9BN2va8lcYj8Iz/Vq3/+4omr03qwLdCK0OvbL8dAYd0h9GI
	 N8Zcs7M+kGRhAinfM68k6JZUvtNIAfgYt4k/PrOFdeXir5DRemRbRYSWRsIDjT1rS9
	 FruzbKKddp1ynoIkQyvyQNSxo8I1bXj6i/xGfsk/fJ3iz+tzLd3gU/e5kqhZiMmxjj
	 rcfZQcju5nidiF/QJGsedhHKtf7PzDcPRBg1zzzp3OB04nTkQ2u+8FqShMq1kuyMfv
	 zX1Rr1OvmfnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A5CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871399357.14930.5034021630258924706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4ea4d8abb39b253fadea289b51b4925cdd2a9e3ba8ad8a94cd04e71e27621a
Date: Wed, 24 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758713993
