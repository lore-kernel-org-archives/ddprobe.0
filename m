Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD6828488F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784811034; cv=none; b=ZkGP6azw3A8fV8sS38EUZN0C451xXUk6GG/HCenUInvYN8rVJf3G5O9DHIjOVlwt3VvLIGm14qX13N24zHKQ6XzNwqXAJ0XzwVpDs4JQvpHsh5DvIgFpYGy/wSGHvDfs89tnFFXthFhgGWRiXG8669Lq/IwlORFCqTmHYnEWads=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784811034; c=relaxed/simple;
	bh=/LpP4O8g8rifB4bQkhcnAMZgN3rQXA7Bn2QltEhr2Eo=;
	h=To:Subject:From:Message-Id:Date; b=lT+FMiR4k5FZ1a2eKTe6MUb9LxV89aXBMoD7o5PIWgcU8wxq0PJqI0riDZ43+ouZKjM/QEFStQKcZ8+7fFLr6GA9Xec9dLdhDjLUBD6qXjuz68LRGeL5RccHH8fp/Y54BtA1SrxgRq/7HskNwC0C56dy+WuWLtCBdfxBvKvYI+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loX7Sd1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loX7Sd1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA47BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784811033;
	bh=/LpP4O8g8rifB4bQkhcnAMZgN3rQXA7Bn2QltEhr2Eo=;
	h=To:Subject:From:Date:From;
	b=loX7Sd1w5hJtILt1GbVID5sP2svKHOrREb/abmsxImWKnS1YpCRpDYtvlRKRGrbew
	 dNZjfK4o1J+JNUISh7T1f+YpadzuXgj838Oq8DUq4Ft2waj09pbiojKIBm3ihPuq4Q
	 6YDwsDY3FnHmXi8gfCcNvKJpAJiq54p6NZwwicWnNMPbHn/JPN3yuOylZhnJ6vZI1J
	 IalGmw1XaQ1vFnSaWUgLOfoBz8kShJynlTyN/xwwL0PZlsLgkn7aua6yvLiQYrqKZb
	 +lfZp+IPmSFhdjS+ueffNuHLZUu/QhEVupayXgmCI65TKQZuUMOqaUVOEfK9Xt7KCU
	 7G/acaR75L20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1ADC531CF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481103369.19768.3365425872394357007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b769187a1440c290531bd1a59aa737fe3f706061335c8029b1aa56d2717be3
Date: Thu, 23 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784811033
