Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A27219A8D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774437294; cv=none; b=faVnYjOrbqdPYwH52hvy5bwlIdHSU4ugAi56wD5dqx+KgBOh7+y5ZCdR4UMWvIjUlemGDnpOaQWUn84/ZFSiBhz3IEtjsXMNZtbSL4Lj5hy1Yvz1DwBy+DQl4YtXw7rKB+e3pJeEnRQ+MecbjnY6GgTHTRkw0VOYL/V3/XPbbsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774437294; c=relaxed/simple;
	bh=t9K3hD3sjrcQpw8JSNVW6GgM7N2WtdswFuljBo4qWqU=;
	h=To:Subject:From:Message-Id:Date; b=n1arzNMbu39cTgNNq6qe9xNxRh40O4XpsqInnO40AY86CMkyxtYBb8s9rWg3XV6PF5WsbaJCsYkBh3pswfXlRvuEItX9IAO05lZNiDufn3Z0AbHBpt1BwfLXjuaE+DlDbq3vFnPwrTISyJZg83+mkUaeMSVEXOR319epLMeCjn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbLynYGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbLynYGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB402C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774437293;
	bh=t9K3hD3sjrcQpw8JSNVW6GgM7N2WtdswFuljBo4qWqU=;
	h=To:Subject:From:Date:From;
	b=pbLynYGxJSfuEmqxgHlRm5n+uN+Zmuq0XuhBLaDusZFcmhi00XkSXXwMjwlUUZX4O
	 bYvbuOEqSXC1AjdnB9lhjkAqBMZ+w7rUTORzU/7Fe1vBDQUZ6eSOlvp1QfIKIbUdlK
	 vx4sWHEUl5WpKSNwFrjwb0VjCU5HgYyOJaUCZkdwvcAY6YJjlmaU0eUs9fUiWPb0AM
	 yBRa+kwPINyk/wrorxIcGk6alo1323GlTJTO2Gs8eYVuQX1wlRWIcUWRAL+a/R9Rg+
	 92iCIlFRwZom1Q/am7sWdfmorUIFQczEx/FWODP1NTX2GYklZu28Rttr/IiWItb58g
	 Hd/LfD6YtO7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98761FEA83E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443729361.30756.18275490158246772189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2995b3d052641eea45cbddd531ceb06458ff2102c8ba074dd008e96b3095eb4d
Date: Wed, 25 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774437293
