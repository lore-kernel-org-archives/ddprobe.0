Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E75349CD1
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788685234; cv=none; b=b46r7L2bc870cS7ws0tpCmeUK6w/oUdm3L79cuaVhFcO3R31ds0unEf/bDBZSzJaP+dsuJr9c91l6oF1DcFDq2CUb2Yln41/Oue36M4lsjPzFWaDa5s39Sw9rhekdXK4tvq8ZjwXOxhmc0GbLsR/6Vz+6/fWjuLeZcPHzZt2Gl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788685234; c=relaxed/simple;
	bh=ZZ6sSiwSQiO0qmbk8Ntcy0alstowZ5AZnNYaWQn/+6w=;
	h=To:Subject:From:Message-Id:Date; b=D/R81WDcR1HbQmx1u5TbwlZQCDNuwpcA/eW5Tdn/ibEEocduCZqzgfeKiAc6ulgRfAHirR2nDJ+k5fblJKshZZ65HNyNLty4GV6wHixnHDXdZagJ2N10jdEG/cD+aD7XkuEbZ8S830936ZXDZTgVam5HokD/8FGoXxbJxt6WIlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9roF1I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9roF1I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6534C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788685233;
	bh=ZZ6sSiwSQiO0qmbk8Ntcy0alstowZ5AZnNYaWQn/+6w=;
	h=To:Subject:From:Date:From;
	b=L9roF1I4e9mQgd/nozdoxS7lm5Sa+ZTjuUzKptIBw7g6TwhXO5OfqLAt9mkVFZAnf
	 TPzr1Os+9BMdPsROuUHKFbdW+UKuvP4rQykeWZxNf4CMB18qWp+aHenLznHacB+Qhd
	 /kj8FQjws49ZYRyTQypi+82mFahZp3u6Y8oh8/THkMuT/NuQe9s7wG/4vqZAU/+eZY
	 0+/YD2Q8XWk3FppP4M/9PT6cWBj64KQYk+8MsdT42OBxj78meQkX5uBqXOKPij6Fs3
	 Ac3zlV9qBDxnQf03uPiiBYkk7s/y+udLt4JMFvjsIalCCRZcCShLMe/Ww/bk4Is/PK
	 vzdn1lXtFRDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36E2C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868523369.24893.14904946548313767676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1636237d7580cc502e05b2ea78ef1d0e489da2ec48f4b1873e9f2a306fa494d3
Date: Sun, 06 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788685233
