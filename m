Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E6914D45C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708616897; cv=none; b=POMmFlICa5dlKcl0fqUtu/fjR5dPPH7qUSKkJMi/agpUJpR9tZMzE0/aB8xdlD/sISMIDXZ6X7XNL+m9Pz71bSZFWoxDrMKeAVE1nbzG4lBAAxXl/iL+MGuOwBcudF1AIqZcnLRGYbLRfJy3uR8z9JP5d4J9J3tMV/giDjo7dIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708616897; c=relaxed/simple;
	bh=hbb6X8X/egxprTRyWGNp7mmoRs050FtJoynhjbI9fmw=;
	h=To:Subject:From:Message-Id:Date; b=e2Uywo5jnw+/LL/l7+Xvy4zUFGLqSXZH1oxiZ7A2thf0bYd4iAavGtt7cBdajhhf9MoaCnFA8i83dDiE1Vy2SXTAc9wFWHgKUELKJsVQh15GymxWy5A4kpKT0+z+7XXt8Z4EieFmCs+9V05vKkAQbBvaS+Y8adftiM2Fee5BW+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffWaqPx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffWaqPx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 903DEC433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708616896;
	bh=hbb6X8X/egxprTRyWGNp7mmoRs050FtJoynhjbI9fmw=;
	h=To:Subject:From:Date:From;
	b=ffWaqPx7xsoyOVsJRPVEJ8kLQZO4P9ad04qjHLF0NaKuzBhBcDbkbdihTv5Td6JPK
	 SRrfYmgoCh1GUYI+k7A9k/Z+kJOFDc8lhC/TqXroifR65QnWHLdvskOHyTzb3V7h4u
	 a5OiCU5O1fjxlJn1VcQFxSOHknnwO+tF3yzdlssnKbDY7VuXekS/7AmXthMzHAN3ba
	 6nhnpcJ688ccerIr8RgaK4PIJUiB32q27kBc63KCAQOUEwnQONVJBL7QNNBA4jiULz
	 Ao3/KOps7aUbkwzH/WhS619z5TxmjqDDds3TjNYtNIZSzveCHrX9m8qB+KQl85uiKa
	 DeIWYE4ANRGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F96DC48BF8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170861689639.680.11418409032315321427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e3ff7e75afa8c60329fa97ba657a029c48bf8a7f6c717a4a0e3983c7373b9c
Date: Thu, 22 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708616896
