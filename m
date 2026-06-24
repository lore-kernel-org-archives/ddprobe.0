Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9452745E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782310054; cv=none; b=ujixm/bthbJjwIaG1lF30yUP9UvCSc1jiFjwdjAsUqD38AVWIE59LhTqwir/K4E4qUvey7yO8y0s19uNCBuobWiSDD/HyhdgeLHmFqYNSihFWMjIZ73abdBCP923Xfsb8+gcWtNBcRy+z26w7oleDnn70svsqmCEPyWprKpsBQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782310054; c=relaxed/simple;
	bh=BLCsk3LBnaCOHDtWt1uCMm4jn/MocIghg9wwpWonbtk=;
	h=To:Subject:From:Message-Id:Date; b=Oz0Mw9+z4Jpk4GCE2F9WUbBnYZ9phHCHKwu8h0n6QpnbebRtwJHmyLzbP8++QOpjVpsdQyC1X5dKd7G38KgasvZ6aBmHfvy0SkDi8uFcx7zEEXeLzJGesOg8JbKq24ZS05Kq2B1vz23hbeeJghyqHq0b4A8abWBt4yf+kfU1Ww8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSyWfxZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSyWfxZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2069C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782310053;
	bh=BLCsk3LBnaCOHDtWt1uCMm4jn/MocIghg9wwpWonbtk=;
	h=To:Subject:From:Date:From;
	b=OSyWfxZAukaFOCkTzDIC6guOd5QLwF6o65g9y+5mC/1HmDKeBddg0iRY0N87q3+IS
	 RfUVHQ76STnCgSO1cC+BMANNOXzq/q56VJTPilGEnHm4JG31Mc2ZAMf8RnvqWZvikm
	 gCguuEQHOr2VnHid9IZcmXLIWOwO2CXGZp2I2unViTCidBkxS/m+p3FzX1LCOVBI8m
	 em4ZxccTZ3QlPvZG4ykYKzT2OKA4ReH7p9Y9qSTqjY9th4PMm+UJpRetPmAdtkBDGE
	 PjJvPj4EBbnVsjUu24nYaRlmtwyhAADmcJbndY9bDsPhMIHy8/1FlmD7ZrYl9/yUN0
	 j3G8Ks9Apj1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0DCCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231005370.27307.4385527558463174706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5007a73bdf2ec223a79f5827ee8b9d60c50d45d8180124f541b6bdaf559dbdf3
Date: Wed, 24 Jun 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782310053
