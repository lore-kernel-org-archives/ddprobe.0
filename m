Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7FF219EB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747809594; cv=none; b=EJTOlRPplOVfVlL1yk3Q9vp8KYS48imayrlXd7wMmqT/myqrxA5lmQFSgV2hAI0ypsyB/TzsMw6NuXTyM5745tQWDObLAqfOll7sfT3FIdUMEimuqMQBdtotZAlr4IBsCWobZzHDAKXjbY43bTJFz4YZ/tvpR0oB9icq4NOZ+co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747809594; c=relaxed/simple;
	bh=gZYlvcpk52/b5tkf57trjwux3CremHTQupoIl7I71Vs=;
	h=To:Subject:From:Message-Id:Date; b=NwcG9SYe+gGJVem5a6i9+74LV5NmSRDEHqJJRFoVq87nCqTlZAoi6EyqJ88qOuYpmpY/Rhy6dSkwxSQZ8HJ0LTFBmCnLgtwAPZpVtubUMMVEqcexSi7lkqEDb4/CZdfmZED5bPx8iYRrbeNIq1yzWYbwWLT7k8TPEH183Gn6zbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjkn57j9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjkn57j9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3251C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747809593;
	bh=gZYlvcpk52/b5tkf57trjwux3CremHTQupoIl7I71Vs=;
	h=To:Subject:From:Date:From;
	b=Jjkn57j9yEchRyitxqbFXEvFxH+jLzq7woEZ6RmJi2g0z+5P091evjY0lFAyAM74c
	 e/izyrn2aFciLgNaBA5lKFFK5XT57UtsB/7myPLsgxsZB7rMLYoGyeP2Xi4iTQMDlo
	 UOlZSiaHWbsULQUiN0b7ZyTKo5I6FIdCx57GEjv5P4ES71v9d7FFEN7Uvq3f1Qt9E+
	 uLKUAHuz7TJSDLrCSbqtF4EqFfwIgneKnvxyF/rmukxL4j5IEPt1itBZUX/4uE1E8w
	 kKEvtkBOi8xp21HEQ3HAx9OncKBbLw+1lYDt5RWtijA5t5GW90YLHo2kOUjvTlRZLI
	 XRBnAlc1NWKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD60C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780959358.4860.14578931436705440591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963544f364277f045426792d94743b2bc14079bbcf1e8a6c2ce10f42d5f8d197
Date: Wed, 21 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747809593
