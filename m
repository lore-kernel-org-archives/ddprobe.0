Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2663818046
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722815754; cv=none; b=bLXpnFavQ8eR9rQsfKk+R7JbwmWiIPyAywgIVrUqVXCZmDMIv3bVOg7qBJwkMh6KZup/89hqbTtU4oD9m13MpUXWEyo+i+qQH5gn07AV0oiBKewumoSRVr396kespIcNdNVmoQG1Bc3RNcx9NcmzkwS5MrkULPcPLPeVdoUvNbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722815754; c=relaxed/simple;
	bh=0n+VSM0epzTkhj4T71SLbiHX3dBIi7FQUxo1OHJW2Kg=;
	h=To:Subject:From:Message-Id:Date; b=sWsbjcGepmN+QnFrlXcBGk33r0a+wDD7M/A1VQEJFW9IvYlkYrC6JNZEvZTF1PGcZDN6AgaSSadqpEwKjTGXc56a8lrRG8DU8oUwoSe2HUhXEZvyWo3GAQjLK8auvb7YfjZns80HROh7gE7Gnv4lFoFWjYrrDA/AUA8vHBO2iz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZND/hBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZND/hBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA7C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722815753;
	bh=0n+VSM0epzTkhj4T71SLbiHX3dBIi7FQUxo1OHJW2Kg=;
	h=To:Subject:From:Date:From;
	b=KZND/hBfPGK9h6xTHFmgGJn++Z6KqW32SesCaV3ou0Tl4jssTKy6klq4KqIEDTeLG
	 4USEVleF5Se9jAJpVaUKFC87rWD0N/nOKqZdPO1yeJ63ggD1nbr0h1GIhhxUM6/nlA
	 UisMHqDFn9muyqqxky5Y41F25uBt/TCrpzJgRui+UrFx9Yp2cxiyxfFj/0wwYGr2Wl
	 7mMfHidydsXvw6jfYRnT+TdUbcrujW7VLxb1Wg3nIZ+x6+0Djn3RzjC/v8adK9vKzD
	 37aQikriEUDmxFIW2qhH1+qqlqf6JQe51DpeFFGeVDKIFhdUuakDiMba0TcudVqT2N
	 CDOLEjfsqTz9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C8C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281575357.13559.5560467575523124062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d07b0000680ab8e27e0935d3d4304708c0c312e66f349092d8a4ebc2e8d2644
Date: Sun, 04 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722815753
