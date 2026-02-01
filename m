Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC54241690
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769936634; cv=none; b=C+7hccUtDK9hO/YGTaAc35hjOifCN6ng7Az681Xx+0F2OotNcF0RK8EWimBu0iT929UEQ7Rb+ZemUS/pBYisy2+ICu0qIWIoxj0B4gbN3n3E3j8vWS/n2fB8OtE8fnp+9ocvPNwrHt7K7BAxWjMhP6y+UJgrpDr3ezZGBaG6biE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769936634; c=relaxed/simple;
	bh=81EW0Qi9NJpRLzSkjLU8cnXHkAsWi+qu9Q0tm/2W6ao=;
	h=To:Subject:From:Message-Id:Date; b=cnxkFoZRCW1tRcG8dyDyvGv7xIqcwQkf2zF0hWdUXpJgkkm0wY+ABCFqJn094MOncLw69QbDE6+1igvYY1KcyCMYCpfeHgAyoAQJMrmiSrW2IJBGYHixMmPp03jhNOwKhVIYmqDM8b4Hg+kHlMFMlz6kg/IcBFuoed9e1/1JWWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6Pecwki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6Pecwki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769936633;
	bh=81EW0Qi9NJpRLzSkjLU8cnXHkAsWi+qu9Q0tm/2W6ao=;
	h=To:Subject:From:Date:From;
	b=i6PecwkiuHYOS42o6RYUWSDFb/O7ZupF5UQf4qSmmwt8T+bYbKTovfptsDNlvXMNJ
	 w2eIndWa8KCOtqNJfJ9vOGJhsdiLjQqve8mx5WuEEJ2Dwc0bBT+HtfG/J4l+Wi1FCr
	 Q+n3NXBDASQ30yvssZ+dpP5P/SQd2h8sk0N8bed2cA0V2A1Sru9CCrsn5imEXmkv99
	 luH1yvuWX821vzfxOSuwXt6Hlu0ZRhqrq4S0OVyZK27Npj5hLg6CSsWi+mVo33Aj+U
	 NaTE2XnBQIldM9eEhKGs/GB0GcShTVp4TfTm46gyuxuKX3eB+LES1TKDc7o62bBfMQ
	 yrC/okCetfddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431FE7C6FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993663357.8388.16609390479549073077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe6fdb87d4933828ae3c23167978285ba5dc759244fb1ff61ebfb588d18afa9
Date: Sun, 01 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769936633
