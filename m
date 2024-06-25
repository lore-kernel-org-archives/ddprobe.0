Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC5417C9F0
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719344603; cv=none; b=hGwY3FhATNBRFLcfFRuQqhkEJghddD//ya6TBZ0FCMZ9CaT9NtIvvmL7RdztfDnzpAKBbY6RNXiPLM2Sgdw6/8rZNcnU7FTJv7VUqCHxtw71InHxqRV3oylTwrlg6zDR40kCdRPKAs7tIhYcf5wY/CrHLiwn4gpJGyWPHCnli18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719344603; c=relaxed/simple;
	bh=Eq7f7S9bx27exKEJ3cC20yYVd+yApbUtPVStfohLUfQ=;
	h=To:Subject:From:Message-Id:Date; b=o5ytOB81e1hadNfs3hEwVicxcHVZCvz245YopDUb6zcS3dr8to875K6bM3QqN7q/YCXLf9u3H7rl2E4uorWi8Bjd6PT3Tys0NYmVTH3nYjZIy5TFm2AQSgYGwGpvhjXm7Hcf/uaMwqJjdb8w2fj4kJ9fjc9e+biWJATmE9gZvsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdRJnCpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdRJnCpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB841C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719344602;
	bh=Eq7f7S9bx27exKEJ3cC20yYVd+yApbUtPVStfohLUfQ=;
	h=To:Subject:From:Date:From;
	b=tdRJnCpGywY3qpzxovsWgVDSxG86l5D7S8mF/1FrYgwLIZTHCceY5W/75jCdBzLw/
	 wuWzPgVYQiRqr43OQPuYQFT3J6bxRLTzpQokmlL2dTOWa8iRjnHzqvkdwEUkBWNw9g
	 x2KbC/vLNuUn3HH8FO8rIHaV+a0kgOO6yBy+LHwAIbSB9tFg1D8ezN8HVeMZImpHVw
	 Was8thkOXyzCAy/AB3cZK+/2VQlUKaWauk2Pq/+5Blw/aTyb9m0FJ66fAOOMLzA7lW
	 YRdDQLcY4cI4z4K0jSmEgn0N0Uu++vYhPJBzp0D8v+0MRCjo6u1nwvU3+HCicsHeFf
	 x9QvwHBO5fkcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C444FC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934460276.7302.16378202046472827371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ca36b92063198b096cf3ed6eaad93a5a0712bba7446ebe9eadb405033d2d8b
Date: Tue, 25 Jun 2024 19:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719344602
