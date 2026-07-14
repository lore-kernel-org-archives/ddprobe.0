Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6842446AEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784036314; cv=none; b=GkEyrUNzxrd53zkP1kCzlUMjmsjtJVryIxei27wBFH5Ii0PvNe5bYtPTQcifus2pOo+kkh3WGBBdylXn42NsdFP/eWdNkHToWtH03db5kdG9qXN7lGqBxLz8U9Rq3B9XR2tcYCOYnYGX5wz7av/NFULu0ephvvm2VxvawvYu8d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784036314; c=relaxed/simple;
	bh=uuzdw07CO/+lZgTGk6FmM7Ona+zysPwti64b8gWKT5s=;
	h=To:Subject:From:Message-Id:Date; b=CQ+gKmq86E/fyzrDKT5EK9S71sipbmT7xnBJ0PfGymwN+NQQbWTYodaFdnBu8G2adoDR9EBpKsqFpzBFVQYxiYdmsWHxbeWmvlO2ZKnF7/OKqJeWqW0RN3IEACuVFkMBuqehFcXBAG8C0P/JiMyzb9CNLiWnqn9B7+qm4cviLrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6tKmXJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6tKmXJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACD2C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784036313;
	bh=uuzdw07CO/+lZgTGk6FmM7Ona+zysPwti64b8gWKT5s=;
	h=To:Subject:From:Date:From;
	b=t6tKmXJReBAxLwB1QUKXp2AJQbUZv2TyKJ8d/oept8Pk4d6D2Wc/9PWW47uRib4KI
	 6jRENSLrz+uz0xzW7Yz80KCBWo1CuOsTONXM6MecPB4ut0NzQt3+ESc8GKa9V4EbET
	 ybK+LoS22mDgaYYKaNIfFJaHZk7LhIkeoUri3kHMbQirMM99AnC0OlkYFiPkueGgH1
	 ttbms3fVhK5F61vWXDvAHvgRO0DNCV/QTupf1Q6PMy8iGtMlUfT2hLXiLjxhRftPOl
	 EmDV5bhW051hdol4spMBU6ACMHWoQ2G8h2fVb0atP3vS7kdlYhYCys8QacrJHK6KJl
	 C4REHfy5DsA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2234C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403631372.30810.12686182764199956206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3215a820caeafc8114757c0f117d59785844f35b3d4a480369618112cacaa365
Date: Tue, 14 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784036313
