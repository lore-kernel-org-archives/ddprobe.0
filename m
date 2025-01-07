Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4B41DED66
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736260554; cv=none; b=HP0oV/nwJ4XXbtUFM+QE01zKW4xphq9HWDJzlkb+4f0WQPMl7taGehJWjDQXekTbYlJSx8ueQFwUUGyaqB8hJP3avrkqWNiQRCg7fKiOhABbPoSO884WY3K6DwBqXs4fCrZkNZ6p5VrCCZb8Y5moQhoWE4Qsyg/q+9pdb6romY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736260554; c=relaxed/simple;
	bh=0lvol+NQpBW3QdZlmg1ZHrsBpQiqfaBsXBXQWp1YY/8=;
	h=To:Subject:From:Message-Id:Date; b=rm3BO1EtPmKnoql/egDhCFErvEyxA4PCkMwsZdJ/3djmU0vQEsWrFZ7ACFCXMqaYBlaPatbumdAQ+IMQjIaWt5tmJkXZEHuWN/nG48ttbQopklMN7L5e9MX7d7OzUKGVS39XKEEKQa9Jv204OU5hN5mqe3rfzjPEjcf5xw9Xros=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kyqrplk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kyqrplk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28DFC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736260553;
	bh=0lvol+NQpBW3QdZlmg1ZHrsBpQiqfaBsXBXQWp1YY/8=;
	h=To:Subject:From:Date:From;
	b=Kyqrplk1rCnIV9prBUmyYOuX8ty+2NKbpUCU6LO7hZy57yelJD43UD9Bd1nSdkn52
	 TGcaTX9wT20MauggNNQBxEOawGZ3V3giYwXHAFDC8qvPWN4eO7lTv/0kioTzk2qwbY
	 MCHED3qWJwU859ZxEMJcLyW8WLlNH8EnNs9RPx8/7HMGMAAhoco+lKbqTokDXtSJhn
	 LtqRMWL+SSqCOSYI2bAjK7NfPduDOkfXFTDLPNeYQ24GlEYd0xDtS0p4VRs+jsSpwf
	 9j2zU0grEiRzK5/B4rBok1GLXNt2angLoiubqKBLdZpiEo8soz1xz/m01u0nXsJq/T
	 5UKSd0AnS3JHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA8E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626055359.22785.4197530154393803716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccac905e7242b192c0f535cd7b9394346a0c1443b9ea0c060fe34c78b0a0dbfd
Date: Tue, 07 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736260553
