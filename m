Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E84208D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760771994; cv=none; b=BL7hpMG4FpcHfX3jphqmpFJ0xHdp/sVYIlwoSFs8Kqqul6aWxyCpKvRkMSLrLo3l4ucj/jKgwAUQgZ9fguVdkkUFACNg/K4DjXrQ3QLzzZmwuKhldg3oDWy4NwBbZuX9jDherVoNIT17kmtcwXTuYe/8LyrFq/EMT3jZdaCjdfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760771994; c=relaxed/simple;
	bh=O7GCVgg7XygsWJ6YSfdEPjPlr4jWX++IovUyJ3oHX5o=;
	h=To:Subject:From:Message-Id:Date; b=dMuHh9Vqp+I1L/1OTU6HgW5NSaiIg8wz5vfjWY58vXQeK1Nqq29wUJdO4PJBIE9SriMRCcl3OjSKf6vaskVNeLxkH99TyHw2GiIkZikA2ng53hniQ9piYNvE93sjUP/IS04Gl3zYpnGAleP9TPbHA6dWap1D9wsuyp7R/q6naC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU+M8ByR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU+M8ByR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B6C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760771993;
	bh=O7GCVgg7XygsWJ6YSfdEPjPlr4jWX++IovUyJ3oHX5o=;
	h=To:Subject:From:Date:From;
	b=bU+M8ByRr9IftFxf/kZFf64QKqOBopj4NYAk1P1fiFJyP9BsaeUk0MVhnB3mtzpPO
	 vuVgiqBWkgGC4xZCXQGzOPZ/yaqqu1TzUGjdVyBUR0JsYcDL5SdEsvurKTfSOc3E2b
	 GdyJKvnaHNJJMI0+N9LRS8+zpDm5gl3r99g/vHUsof17kr6DoNqMuVSZWcwzlfIC6U
	 h8bD+G+Ue9navD9P1TIQ9/oJweu0DiULao7Mg6yanKL8iTTmJCqEHTJkQBktwC4HvJ
	 hgWnOH2qDEIrLpEfuJmeXZbiT3bfeMqFdOVVU5l4QoSFy0/9sLpZSKhDY/UX16feYx
	 95lbTQ53wsU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA4CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077199358.1503.16896184815217744035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec0bf8d92806617b6d6fd13ea0a84f1024ca07b2a0f1341a00bd84b19499c20
Date: Sat, 18 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760771993
