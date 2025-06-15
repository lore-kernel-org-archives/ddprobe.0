Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9A1FDE31
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750031394; cv=none; b=A4RhR0S7fQLHdwEqkLU89N6P1/1MyYiKN4yyL8fVdLGQb+xbjW5vWEvslpMssRJv7s00/oGf8rEuNokuN/ToqHl82a9dPy4eZ9G7jK9uBklgu84WofnjG7bqt5Zxz85MfKijBvjZsrOowRxfbnMz7AGDG8d51G8OYxL7Z1hyGNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750031394; c=relaxed/simple;
	bh=fGqJ57lj9VdnubojhaTbVHjCK4NwzYO2UDSXv1BHqJM=;
	h=To:Subject:From:Message-Id:Date; b=R62l7pqfBtuaCo6sjC4ymyBleW+ZQ+fT/guOG0050wDYIGooMImqjoFImmMQKo+NEpv8BQ8p8Nw7laa9O6ALBRaDAMvax0FSVBF01ZzwUYNABMyCHxe2Y1vdPH6jPBR67YQzg0DI0uUE3XX7RwpHVG8uEkEvvJluFsNzFrpTGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK93d875; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK93d875"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A3FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750031393;
	bh=fGqJ57lj9VdnubojhaTbVHjCK4NwzYO2UDSXv1BHqJM=;
	h=To:Subject:From:Date:From;
	b=FK93d875+/ZMjndxg2RH7qiZbIz+MSREfGUY2D/SBuu1McqQWUs6cyIl6gZpQ/Zbf
	 +7qfEhWUsi2OmmjiEM2D3fRXQMSvCrTzveFjb6r7Ct2sQ3LqxpdIKrDCzPQRJ6ucQU
	 U6UKJVoCW+X9DDTtJwdkV6GUQOwKMBCcA2bKyXKxOz4P56IdK52SRJeh50unXyQkOS
	 u9V6dCd0vyRZvQxQU7vfAOZO5f+xab8epRM9ZRRssASJeoGbosVZBhLcB45vVs3OnT
	 shE/i7442RJrOpQy29noEEXb1wt3/K9zkLWC7t4kpD8I6yA/7tap1jjZe0Vj6LSRuD
	 snFtRAYTfnLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932ABC7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003139359.19393.5979574489346272920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916a76e3c544e6f9e00504633599fc34a2e2f79ce34f499969f3b00c2dcb6181
Date: Sun, 15 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750031393
