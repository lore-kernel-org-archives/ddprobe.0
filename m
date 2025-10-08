Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363CD199FB0
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759964994; cv=none; b=Xy6gvRJNsCOKQfgbMH3K/U/YAfMizOaFMcp/X9pRm3pRPK4mT3VDWkQN8vWV1mnnmvI6bLMgVb5Fy+r109KO0WUyi5r4uUXExbmad15qAgUyfsDPqLRNwqJinWnFccdgHAGVCZmYm9DrzbgHB9GsqJkqUR3yhEclrGeVgsINI1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759964994; c=relaxed/simple;
	bh=e9kfUONfmOOL2UsJzXV6ZgEUvue9JudHfK2Q1hXJZ9I=;
	h=To:Subject:From:Message-Id:Date; b=X59wDPD9idDvCyE7hzCThtd7Z+89obcO792pdPk4G7odnITtIdX3IMROpNlNt12B1fVnOZdYCMsabm40Bh6u7jfmOjLc9O177D6NwdC07u1rrCgK+TmXjVaAEc4JvQOUsICe44d1WJ8wVKXOQAtRr67lO4j4v++FNBxbAE3k6oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d791EmcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d791EmcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB067C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759964993;
	bh=e9kfUONfmOOL2UsJzXV6ZgEUvue9JudHfK2Q1hXJZ9I=;
	h=To:Subject:From:Date:From;
	b=d791EmcP/oIo3izvtV9A7323H1FzlIFUcCmQUz+kRlpDhHL8VFxMcm5CCovp79mmH
	 SxSITJQcVp0ewvjcqv5yfYrlKfPEamlP5jKLRlU3eG7A/OYnWyPPxIyUFuEo0Q5cQ0
	 SSsj+MTen2UF8ezgtg0l7sO+rLw2NY9v3gkIqJxzq3KpVOMYoneBqL6JLaa2c59z97
	 y2CXJyudqI3Ou5N+bHuiFmXo+lagESQYEZPMn8sTaunIwIPRoA7oRcyhefOSSBYysq
	 d06FdENZKQYiV93YJE+1btVKoLCP0HN7vr/h64wQS0h0O6tVAtbL4y7clGyiRgHDw0
	 d2+g4sILghQUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97709CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996499359.12183.11654616598375501584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14a16c59c91aacf7bb6bdc24316212753f46d68cd996cc5bf602c043ac75355
Date: Wed, 08 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759964993
