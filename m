Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170691ADC69
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755089394; cv=none; b=h34CZEYy+2ZdJ8RH7IUs7HbhuvkbEoJFoKNcvt2CCVEMD6Aaus8AT0xBmKjxU0HGnO632SFq/LcC1Fffezc5M7XbMmo9OfFTBCnX7G9FVa8/tm3j1jotmDghT1gY4LYXL4nf8Wgy3lWO29bFk5kirj4iIS/LAssnag9/N2XDLRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755089394; c=relaxed/simple;
	bh=B3MlSwVSgUcERHg8BBrue9vTDHdqyzyoEx9+nYwJtCw=;
	h=To:Subject:From:Message-Id:Date; b=ndLBfMl1AH99uvuUtZwWP9h2OXranJBmQkVla9E01aMl2vEbxHLWL1wchHvot6hbTGYceb7hAHROijNaUrpaOIuRnEmczF66HUwyB1n9zb70J+mFPIp30ayvZ4tLZ9ZR4CP4N8BpzOkPVFdzPfQbanfARzQedu1htv9u5qGyMRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC/3MGoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC/3MGoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7F9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755089393;
	bh=B3MlSwVSgUcERHg8BBrue9vTDHdqyzyoEx9+nYwJtCw=;
	h=To:Subject:From:Date:From;
	b=fC/3MGoT1udsfpWB5uuhjkak/Ckrsy0Lvud/S/CcNS+nIQ3+nhWbmh6ty3M51gjas
	 vhbdWtjr9LXzn1Vg1nZn33jEQ6dtZIBVEAOl6n3vA779moFN8mi4cXHxHZ279CLpQ2
	 a3KeoyDo7H6NC+uag2PGoOSvtF91lfeohiyv/b1IdP3GZhg7RQw5FbVIevofnkSjFG
	 KK5+cppqo6ZjFXqWATwSMOQ3Undno0VvJbyR3qVWOUiH8wLoTeOm3FOSWgaHK7UeEu
	 /PH2NFX3gzgL/SjS1Bv0/A/jsWDl7JK4PPdsRwkGqAADsPjFzXdmH59qgWx5DRQEVv
	 Te8zWB+gAqzdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B3C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508939357.816.5244297246068624354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10f5fa7552cf34431f796a4a2034005d7bbf269cb2ffaefd05667ce4cbde7db
Date: Wed, 13 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755089393
