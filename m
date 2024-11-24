Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216C836C
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732462554; cv=none; b=Npivzwr/ZcqIDCW8CGaAO5L+oxzxRmbUs9duIwX0hAVMiqHJoN9mVt/Cb3mkAF5z68nOktNRCade3Vz7i8AYdp/lAX+ctSTB1F38/PrTCoeaJn1g9NYBobQpHmQ4LdG5f/Udg33rwnpZAN7EEjFHZe0OMEXLkhtob882Dd1wyAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732462554; c=relaxed/simple;
	bh=/7Zqyd+srIBsFfwqf3Un84JP2hdqyEiaouISSvGM8Fc=;
	h=To:Subject:From:Message-Id:Date; b=lyQ6KVhxG7So1LCUYSQlrtC8ZQg+S+/Fhf2LMzoyX0oeAPmuXHp1NqROt09b5MtrPYPSehuY+/n4oF5qJOifvk1P+bk6nN8Gtlf/EbZZAWTzq7mG4maO83mw6cv1saB7U4GuMVJjuBi9RU5fr6TIuM0C50YX0O96M4zw/1VdC9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/wyBC4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/wyBC4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F9C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732462553;
	bh=/7Zqyd+srIBsFfwqf3Un84JP2hdqyEiaouISSvGM8Fc=;
	h=To:Subject:From:Date:From;
	b=Y/wyBC4q9jczLu5L36WL9+bhJoASdD8OHHjv462t8NDzm8Nk6If6I+rrKDQQYZLeN
	 T7WqCiaeX3YZtTdyzdwjbBCZrxh82Og3kdZ+GnAaNdTL0EMxway4lh15+a9x13kQla
	 hM5YCWSmSezbY7b5y1URz/6wpIqBFJaVz5I7x/hpmIIdkGJZJoijzAfHcNWFr+JN0M
	 8vn1XXtuu8JRb/ykXXgmNNHgbkw91P0olbgfYC5Hzagyqw794EGLQNJvoS1mB3mmQj
	 +vw8q48CqOgXJbTcpl33NK+8SvhI9sSIMGuAtsMScic+usSjysW6JYOFzGt3boK7T2
	 ZNOxLvp/+GjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70AE668B8
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246255357.15193.12404756715442805432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dee94340d496763804b324e3a207d51d80d4f0b62c5543a594e4c8682938ac7
Date: Sun, 24 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732462553
