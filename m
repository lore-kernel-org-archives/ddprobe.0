Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC7DA94A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737008154; cv=none; b=h1G3RSEAIAkHDEXjlvJeYAyHXTTyFBobyCISRYV0XH3j/G0zlCP+8GoJTemAuTMUomX6E6D2zJGE1wgCjrmoocf7DXKf/u6mAZrpZ/12ICfZTXlHfRnybmK8F/pCgZ8oubIo2MWNDZlxrPDg0aA+gr+R+VAoC1g4p/j/MrJmMn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737008154; c=relaxed/simple;
	bh=lGfaMAIhc44wwKR85Ayre5pa5+t/4aEaJFW8lYZs4dQ=;
	h=To:Subject:From:Message-Id:Date; b=cDHz8dMSzJehqDzlRPpLyGBDpAs2BR1gxWZtg/3kACuVzpp1HWJbfT5NmCThJdcDiUK3Z/qzn8AfUJb9sVdkNgY7J9EsW/mX7l4kgmbrprA9mWbfUgUSwcdrPvqIX5LNSJB5LEfosPWgUOFF+OBmt0vkaRktAcf0WlhENjDSRcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myQOS2Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myQOS2Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4AAC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737008153;
	bh=lGfaMAIhc44wwKR85Ayre5pa5+t/4aEaJFW8lYZs4dQ=;
	h=To:Subject:From:Date:From;
	b=myQOS2VvAvJyAwYh2dZRMN5w3IHDui6Yt6AwTbHQVAfrfBxPHufF4HePJD4lEATqh
	 +38dbY/tcqkZU1iHsjLpK+NjtoqYWkGciB5LXriVra7svkJFOErunHxq7tUSNCapK/
	 kOtpT5TPI9oLdZFreekB7/7p9b1BdHMCEF7wqA954Pg4T5D8tp7HLpCBz7SjK4LQFn
	 cI8ORImOtJLK1CLfWWoAkOlM/PtuThi/TOMyU4WCK688aoxIGw9oI5rUZ3cBcf9pyA
	 5P7nnUtu9CdHUQBAu0KqZZWT4tkGGcBu523anvcnrXhJCDtHfyr0ebMVwf0RZD0Vdt
	 Iig2VffJtrjKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577AE77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700815360.16100.16575777240378552823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dd898ab19f68d96c4d2e9c77b31de4b09009f2b216a8bc198e6b26ba0a574a
Date: Thu, 16 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737008153
