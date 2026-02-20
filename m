Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216BE3161BB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771578894; cv=none; b=kWquv6TKclY/E6vjzPhAlNZURSM+/UPqcHmP/ToMFikVvxMgpshN4fH10jDW9mRxXnwwlzX7bBIGMYjL7i+yqAylvrCLWf5idYt93XS7e+AQohf/wtgZI7Y9dXQDcK+DXl8zDFikSqy7EK+8iMf+6YA+rq6T5SZPKB4BS8frKdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771578894; c=relaxed/simple;
	bh=Sy1Kq+ZhRfPMWLFotGwgIurBty6qQcQyotHCaUZ7fgU=;
	h=To:Subject:From:Message-Id:Date; b=RDVVtjLyZRivnQ7O8+il+w+Gz5SbVjz0mbkQVqNYyQ4diL3fKwJo7PJOAwOqErHzrMp2hOyrfie6t8ummlvYhAJOgcqEVweBz98ZhNElyEeZtfn4EImhyW49XkcSLWd3fpATRzCEyLKJYEWF8u18bUPnpdcHUzyimttQUZGk950=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW16m2at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW16m2at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B962EC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771578893;
	bh=Sy1Kq+ZhRfPMWLFotGwgIurBty6qQcQyotHCaUZ7fgU=;
	h=To:Subject:From:Date:From;
	b=mW16m2atMi/mmV++NxLTFNRH3DF8+oP4MbnSgwZ+sbeCgO35q4tZRiOwAXjxHrRwT
	 +X1H0GF/fRzN4BVuy1J+JooDyIPJm/KfErf9CXAGnJjR2lh84InGm6eaj2WJbUdagq
	 4Y24FX1kxhsi8r24tbCmPa8SEIR65OXZn2hgvvIU8mmxhUN5kwjsnwX6o4pO5JQ8Fe
	 UUrDIROUXFgc7D3b9aNfF25lYSYhYjg/OV2q8y4O1mrrcPEdqlbBPx7ZFxdXw086Yr
	 MHaKJ/gTc+SRAe1t/nkldnSZqnrWY5FGG3GovkkpoI84/3EsUjgdn7GIe0jRwCKvF9
	 /giJOqF6YAfIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3546C5516A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157889365.9408.11488091218854995600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d626f2a38fd41c5ed40be33ccf21350617f28da4a92fd6a941e0b308785a66e
Date: Fri, 20 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771578893
