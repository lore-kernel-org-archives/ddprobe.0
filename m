Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523DC3B1AB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719896123; cv=none; b=gM+nfY+MGWJbw8WdtSS36uV4wbACX9kqLrII1p+JO2WlN01C5Mq2gJr9wMvGXbLGAyqMtEo4ItJkbICD/KfoO0MXZo4B2irWUdbsU5JnFqi32sXoiQTWmudXo3OxmMy5mpHwGl3Qs38ltKRBjodiV/JT66ogEhZG88qzjSTCyrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719896123; c=relaxed/simple;
	bh=sJMZbHCbNAPKrNIG4pRSMf7H3TZ2iTp6u2mbBtfoOqs=;
	h=To:Subject:From:Message-Id:Date; b=CiW43TwLrepunh/Ckvi8W8f96IE0sjBfirxSzvVT3Rfz2HuvcR5+WTjMp5TrRr8tiEYzU2A8eHpyxju/OtrNAdTtXXvMRrh63y/S+EDpcnkCWU5JPPUE7Ys+FEeeKb8uxEOAZ7tWwr7hxsEBjwsYbcD4c7Xv+jE2aUF4vfdNP5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDfxB+4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDfxB+4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC703C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719896122;
	bh=sJMZbHCbNAPKrNIG4pRSMf7H3TZ2iTp6u2mbBtfoOqs=;
	h=To:Subject:From:Date:From;
	b=aDfxB+4y1G1406meNacw9af+97A7m2ENRQ2pmnPx1NYRuJPacSV2Hgg4DE70dQwnM
	 8pgcwAVMPgT4awpUd0oramNi9R9o0FjeTTPynnZFui3wemfLoaKAJV7BAwUCYwzgwM
	 RwugoxK3BirPQhpMpYDoziG2vhi/pJDNEbEtuolY7Pr2GQbCpenIn4JPGmW6BFXM/W
	 MQKYsemeQR85/LjlcBxeqxa0w7s3aiQzk3qsKOsEmFkoAiZHNKsVnhOK/WA/hB1SD9
	 zOTJdwxvoh5PY43mehuehb4ayeTI5MJ6zEtkhkjiiZKjkKuACNtYXgK+5LgESoDVpO
	 YFhJ0x7BZI1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B24C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989612279.18861.6370909937119843505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7c34fe79e508061e29d80b782b9d555447e9f1a5d6389efb20dd7dc6f82a58
Date: Tue, 02 Jul 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719896122
