Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89195224234
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780634074; cv=none; b=eEfg0d685kSiuBYhDtR9P7pAfYt9H03MQL2nknYBAIui3r+XazalqcXDWrFKWBBwk3ykGtlDHdg+mXYwxlaILnVDVr9S/RggujVTfvazj1vQr81AnmYy4gyFcJsS98EHuSm1qoJXUZ7RrRfUhikOQkIJkIGrnBm17fyDrCMNCYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780634074; c=relaxed/simple;
	bh=CnVcSvjN8Lz9aqtF4CEMLoZCK1h2p+03QplV7V6I9Sc=;
	h=To:Subject:From:Message-Id:Date; b=gX/dgTMH9jf009BiTzyh5j1eTELBgf5j/9E50vHOuKZjgCjyQVQ8t7kES5yqZeV/shzaGq/PR71wgBbhAM9Q1xS+a7vyJYlpKfGVHeG8iqE3H7XrCC8I/9Knm3+Z1fuk9IfBz3kXcdUNaaYpxq8UWWiGoHH7fM8BwXVBPX2vGuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXdHyt2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXdHyt2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 223E2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780634074;
	bh=CnVcSvjN8Lz9aqtF4CEMLoZCK1h2p+03QplV7V6I9Sc=;
	h=To:Subject:From:Date:From;
	b=mXdHyt2twOkp2et23rd4AK5wUMfa/TJy9KFHhRFYa+iW9g4mtjPpt1MUwH775boST
	 weEFCCiWMTciGqCOch3PPflnOf2Xpir83uJyeytbwjKupUeKNJ+U8cNDUvvcwXMbEM
	 +ClVkaMvyxAE94sW7XCgSiZsf+9mSJRJFjcES4bZ9XOtePlQ7wuMHcVINCk33bJayp
	 gWPfuAsvm5B58P61xoLqRc8YI01oBvS2KUsYzqkWq65v7xmCZvCwVd08kKnY7l6kxt
	 dCbUqUgLTpL2j30zwejw5Zg8x8LjWeQzPx3I+sreKU97iXiuE+jnpwxVyJa5ygBmdT
	 F8Gj+3HYPs8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E48C6CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063407379.27721.16348359901900967707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e963cfc919951c7debc7f57d216a8e9f669d710150e8f510b81f6c5885351ad4
Date: Fri, 05 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780634073
