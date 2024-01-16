Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B60A224EA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705434497; cv=none; b=njhlOTui9udGC9rlMIdQeKO5KXKhnRZouLpY/wwfczo/qqLOCnlq+QHThN2qHDYTpR7rDIX3A0Qoat0R8ZyVjvpTJ8pq9xQrbdsFovNdMkM965GiI8XRnrsVFPddxDBWt0p12U8hmXYt8FnaLY5WhGfHO3iuktAP4G8fyT3eKng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705434497; c=relaxed/simple;
	bh=FAjxLyuY3NIimSZj/Az2e419S9rRGlVBOn0y93KUrK4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=E4z2VPycxb+lozautiiLkYIefHFCACT8e8F8YvfXHhQUxipfFam7kl57uG4DlaVZSc6rewtTpfBxebXROX6y1q14H9h0qELu2CAwEpowOUEPSwUkRcKW+Ph+RNYh1SkiNoaFjx9Hjss/qWWbpFjsaf6ta7W6GO1XigEEtjdNybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ0OzG+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ0OzG+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F5D1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705434496;
	bh=FAjxLyuY3NIimSZj/Az2e419S9rRGlVBOn0y93KUrK4=;
	h=To:Subject:From:Date:From;
	b=kZ0OzG+/lGr/TzOx8v+V1anCkCWXAwOHhrHW8isFjlh5lI9SjQSTd5HK+62f4ViCZ
	 GdfAOptS4jUmscQTg+3Ms28M5/4PMcZZJ4LaiLmSVEUr7JS8x1QKqaGlSm1EazERNu
	 8mLpthOjEV5Bq0H9IPpSZiAct3R2tYNkgQEVibOgoxUaL4cOztF6xpgtC8OWMSxCRg
	 U0ZoNyGqJMIMtGI17iqdrPhqUDpigJantXljSivjy4CI00kdzfQh9Ajh6K/sRqUSJB
	 eaD7lzmuwHKAT7flb2jWiHAsX2evIjLk5W0ANMTmUHaRsy2xon7cBi54zAYdFl4y3J
	 d/smfvfM57pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663D5C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543449641.8335.8069090098558312340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d67b993cdcc1531e9d774a4e040f51c9153d9e884c89ff79a3697147a4cdded
Date: Tue, 16 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705434496
