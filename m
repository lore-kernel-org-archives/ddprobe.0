Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295BC2B9B5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727360154; cv=none; b=kAKFOQD5wrsdNYgAwxv//0EqsoEvmA5ouKh4kzm3ObcOl6tFZtYr7prlxxNDn+N9//jOT6e87YWxobArDWOX+MPB/UySk82b5EMRwqzUI95ka1qxvNDAhKqD9rsu0FLOZ8uu0aB+IEiPpX6SrkMSZvyOdrmcJpVXPzsdIe/6V/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727360154; c=relaxed/simple;
	bh=ekhNsiL6WqlYRP/yAEphpaC1JvHZR+XJbXgeXBQg50c=;
	h=To:Subject:From:Message-Id:Date; b=HawPeU2VU4ApsJf5l87S++nVMc6wh66dWtumumWVG7cm3VOY2/vsrVF3ONS5129DVrbzgKCOzFyOGYZbE6WKMLDgmP9dc7f8HgfVR+g5wHyuhT92165lvQ63F0Ts7VLr7mb1grAlc3qiXLWSSvWrJU+uVfKFbtY1v53/Pu/5qFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVRNYnI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVRNYnI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF5EC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727360153;
	bh=ekhNsiL6WqlYRP/yAEphpaC1JvHZR+XJbXgeXBQg50c=;
	h=To:Subject:From:Date:From;
	b=tVRNYnI/n9RS5EuAVLDD6Fx/Zw3SsxpHYkANjO9jYPpv+41Bb+VzGFFszQAfRsq+h
	 szsxkMxliayFGGAk9cN+/IvgTry7AAJqE1T/g74wIrZmEneV8TuW/3WjhEYzXHEg9Q
	 1tz2PI+h8B72t/E90oAXsq4qQ/k5RjrYjf4VWm9V56wNEEPfo2soKEoFuovem+a9Dj
	 bDKY0X3j8QXEXHndLQF6jzNiqfhZvhIQFb31wOuPL/tdmXtLawSeYLptAzcfqzYBlr
	 lB/svPF3MH8uslnQ8so9gD42bd1HkB+7ojXx/KJl1kISKcILabCQdIqIa4qaW5doAZ
	 IGkSz9LUxfkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC3CDE006
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736015357.6485.17373937342200092641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f3bf69fdc65ed51be55b79b88118ea0f34402d3e08df64cfeb5e1104d4fb32
Date: Thu, 26 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727360153
