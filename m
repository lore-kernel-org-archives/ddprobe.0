Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F63B2030A
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753549794; cv=none; b=qI05oteuDu2erKaI2rj9qlSaQpoq7Bb62CfGu6pmGjzK41Xd/j0xOkTo4WtUX96gstfLsOVkrhggojqywQVDXvL6sveEwMyJGGkI9e8YeeCfec8DKtyprAieXXudGgy5KgrFhbHpeXjDQ3xuAywwagYkw9XS8QpW6gSugieba58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753549794; c=relaxed/simple;
	bh=+LFsZl1okcQ4P6D9PUQ8IvJ4XO4CzLjGzOfkyUA91FQ=;
	h=To:Subject:From:Message-Id:Date; b=WXkFKJWngT/vwd+c3AwezJ9FVBthbtbjH6Oa7zN+uCG3y94YTkdMS3GnOTTp5DTbK8qJxnYLAKJrrOw8WAC8xgOY0zrB6wVeWJogtVJWc8e82UbbPpM20Lh6X9D+VGguP385YBnqp/fOky0L+/Af44tPdCfQ6YESbiVkIlO1tME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adQQnYeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adQQnYeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C7C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753549793;
	bh=+LFsZl1okcQ4P6D9PUQ8IvJ4XO4CzLjGzOfkyUA91FQ=;
	h=To:Subject:From:Date:From;
	b=adQQnYeRDXe7RrMFoRFEMsZ6wxArX1YoL8DImNYTFeSj4TtU1ERV9vI5CM1ugTwrf
	 5rE1nD2CD63dGMiMr1uoBG/L4PiKLjXT07Vhc1iNF+dhmvNmD9U1d6ufHGuFwqpH3x
	 AGrYrLdGMQGsaDx2ijOzDUqRoSBn75ETdcLyb4LuJgUF+Ez9huR2JqsO0SHqhHusWZ
	 OUk/liUHa6pFI82SqfuE6R0jYDhGdOEbHT6v8OqjtFS0E2UeLPrAONzed5/hhKC/a8
	 kn294oc63kYth+jEl1CEt4dw5JyfjDdeOAw8VTnhDPmXa2VSz0vOCHWBAlNLafzrfT
	 tSkYaNxq7ii8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A1C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354979358.946.3272734218800240681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d0abefc960e8ab408b89aa5df82c1cf09b9cf3a4b287fc8f36e6fc40fbfd2d
Date: Sat, 26 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753549793
