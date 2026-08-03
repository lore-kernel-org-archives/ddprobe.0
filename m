Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4968716132A
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785768634; cv=none; b=hV7qaX8cm46w1/NEkuOYMj9g83yC7vuCDB6e5kEhulCvOhwejItt9e1WAMs6hhLbzQIOnMDdTWZwfAiayVSsRNQunKlAQVnIPJlXZI/ots1Ldtnwm8fIkLagRuXvthWv8UlzcmmFGzYNyupgi2sMkI6dS006J3TGlNuHQteppSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785768634; c=relaxed/simple;
	bh=LAHsL8goBRlE7bNZiJ3Bha3ZlB1olWtx/RvN7f07xto=;
	h=To:Subject:From:Message-Id:Date; b=ZsueAV8Gw3MxxjDPHuj9AZbQU0alGzjOBYK/uYQMlSLsOTVe0Mc/+MlJnhE5kXZqZ9C2zpPj7jj80pL4eun/ggWhRoZB+4Iv4yHU1jvRaHQo3QSEOnplJ+lW0QCeUXKV2j6bvoDqd8naq5eYZQW5ACZphGJiP9t4eSp8yL4ikBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISJ5StTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISJ5StTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAA9C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785768633;
	bh=LAHsL8goBRlE7bNZiJ3Bha3ZlB1olWtx/RvN7f07xto=;
	h=To:Subject:From:Date:From;
	b=ISJ5StTKsfLECrc2ziEQfhL8/RusKU78CciFhirP4k9DMpSyzuSLt0cp5U+CLvZ29
	 xak/5ZpPgfoNqKXCRqJLw3AZ0ISUM7n+Vx9sb388U3H1Uo7YQot8FvMz82SYqzv7yu
	 QAn53mbJ0lURltNh6RMt3LjjXgylzDsa7xhXgfLU6ZLHTfRpb8b2yV1XijXIuDKqk5
	 TtaRjp4pCj81n2q9e0X7nWay9TwFaryQgnxf7zskhLDLiRTQCJwn+rClhH3U3cAhti
	 +5EiyrZPX9PKaliMqwnGfDN3kLGMPxGHKuFkHqzFiH4r0h0wwmj80mK8WUrPnMHQWM
	 092DSicLOS6ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA73EC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576863368.21775.2964761877545169179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6028c9dd216bba89e5176b00dc421fcb57bb57276471b5b417e072c707cdad9
Date: Mon, 03 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785768633
