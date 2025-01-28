Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4B9A945
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738034154; cv=none; b=p++TwqoMxUaYvMPSXReecdE87Nnnncuy7QG/m/jUi3viuW1aojloKZRJBGhhbBP8LnNGVvYlRqkKAvr3fIwezujBzdnsHQRVUwPujITxrMoLDSO1Ds1rBSPMvlfrDx7SRMQ4SdFV+ohShrqHxW73qPBc8TDy6ed6o1o6VpDMKo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738034154; c=relaxed/simple;
	bh=7agoGL8ILum2YAJSRkcD5MVuUL6YFDlJ2/8/jHlS1DA=;
	h=To:Subject:From:Message-Id:Date; b=ljR2N6Ymzz1+CTTpgBk9uGj79vk4HEGqsUc4zPbYnwUhIaYPkjL9Gi7tDiRH0bLkNcU1eYFJPN8vOAplv8RoFg9A6lH+la2CfaRL3uVEV2IOMdLXS2k0T17W0Hhvt8Z1JmyA4qKA0Eq8R1x+14UHjoBRLCu9oJz9LIwgMRcjKrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSifbbIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSifbbIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF587C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738034153;
	bh=7agoGL8ILum2YAJSRkcD5MVuUL6YFDlJ2/8/jHlS1DA=;
	h=To:Subject:From:Date:From;
	b=cSifbbINH8QQqTDHlvUlVphwRfrTSwBp1QHhacezjzej13ZuyOYuqUcGt07uQWJwD
	 8zPbIc9BWVEyU5LYuRF6U4vW/7AVK9382sUFC56s8fVXBtlAFszdfLz1hz8b9K7Lal
	 qEKbmPFlnL+yyLytOFe7Ti9uHYUI+DJuFBWcmozSkf0qgm5qZ9YG5/JnkFJkGHXceN
	 U+9ken18YuPs+IBsWCMaZflQw/jGoS0S52cuI/tYx2V57LN05E4w3P0iWn5ZRPD7YM
	 KeqJgj3AYHnsQSFN6zcMapHxDBR9cs2PxoJYYX6n0D6GyO6Wjp0oUvMNtDmZ3PZSye
	 34rEIOCJWzlqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A4C0218F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803415359.32407.6042818601983388739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aaf1adab3365334c3f48f873420760189db30378fd94458fcfe8172e001cbee
Date: Tue, 28 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738034153
