Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5A28399
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737920754; cv=none; b=loqrEm3jjP72jfplhxgwSXASRu3z4Q3RAranLbh9XOoJO7b8VBIFNoWEL5FkaOUOH0Ih5z++hICUs7NajE6hZpDipXhgbgCk43wxaTC6oZCBTHVkocrTQzNzgjf29R+B2+bb7tyex7crwzEA5/6p3e8UbJbtN5sMRhFwKslm5dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737920754; c=relaxed/simple;
	bh=oCIUZ7Rjrx3nunj3UbbcWkKmIC00ZuI+4ZuJbDKD/Tw=;
	h=To:Subject:From:Message-Id:Date; b=qgWIYphCySooNCNo+9mhjAT7uhvc/3z6jjJhoahI2bLr1B1dX7tz1NFQKISZkENr5FY6UbjC0ji6X9FTrAGCSUYPBjwMm87qJPrLSpoaOyNtBbzmRAHgusQdVjX+5mgPT76yQnRJQfy1Y6FJH3NQfnRJMwc3x3WsVJ6x22xMV5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EV/8QHqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EV/8QHqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98F19C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737920753;
	bh=oCIUZ7Rjrx3nunj3UbbcWkKmIC00ZuI+4ZuJbDKD/Tw=;
	h=To:Subject:From:Date:From;
	b=EV/8QHqyETjcfLIefUms6ZFa2UrRPPFvXL1sJc30dzeJYB/OVVGtkEkNXWqkCJLci
	 nlkkVny1iUHehMtbu9KhuiIkkHGEm+/TIHuWJnCi2FehO5LU7hHX70OXSHTRz6xVy5
	 9rSglyChywrXfx2HDX7YFhU7M/cB0x8hzAFyftgLhSw/qJLeox+iCDU6jg0c2VlpGZ
	 Nh3S3j8mTxC3V3tCg9iio4SAcAlkFhjTJqcFJTIOghmXLhxbvEBcoNmuo6WiTBZtR7
	 1Vgwb5Sjy35N4aNPWZuQUaOUMgq4+0I8VZK4MJLta/be6xK7/8DbN32RTHs9KVWB2e
	 8rMupdSpfd72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE46C0218F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792075357.24076.3511442705853086481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42c0a1073939f0c1cf996a5bbb406734d420dd8739e30e7b23e5726c4f2ba28
Date: Sun, 26 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737920753
