Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F46A15A85A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771079694; cv=none; b=iBq7dZY1EHehmQXEl8j8ri+tb/gTS0ffIQNjPKosb20tosuPA4xRcpyZx0hva2tesqwSKHPBZrKtjEpgzgKIYC3vCxPoxqzcU+OhEjnIgLQYbtUfI1fv/vLA2kqZfO5QWQ5mBtbfPVVH2ptgkbEdLXnC5PBS195mJ1ChFs/DTUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771079694; c=relaxed/simple;
	bh=fVGgCSceilPDkmGzoc7r9q/vwNlRVwLElAeRUv25X8s=;
	h=To:Subject:From:Message-Id:Date; b=A5yv5jNDYiWZ+68uvT6sXRkyjBSoEwYlMRIaq3pRwsevpyOauyHPOUEpTzXdgN8k0XmZKjYO+1YlaCgEI9znuMdVOA4rF/reJsrIkcrq9d8W8/iGHJX3zkygwSse96u1N9X3GXQ1KqNwzEyWOrk+oawHLrpz0QMoZZPhWu+ZTlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b47KIHaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b47KIHaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8380C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771079693;
	bh=fVGgCSceilPDkmGzoc7r9q/vwNlRVwLElAeRUv25X8s=;
	h=To:Subject:From:Date:From;
	b=b47KIHaDE9XTYbO5qc4QIgwTnat4glDGWmMXf47N7Uy3OhaL0ui8S38lMLkDgjEal
	 rp5d709vanyA+WvoAKSxQjeZWk+I4rnH30wEORbHWZIlZZn4wiTL0iktY4+m4J0mgu
	 jxGMZxvQQRrvBtbNItWAzwE7ZxZl3eckli9UR3G94hIrXe/C6/l9omind+obVGsHaA
	 tFhECPJqdnTfF1LPQgI9mlH8M6+zO3Pi9BoQ2PPK0eCfOnHKbNiGtwcIGf6uqaQ3uG
	 atBgZWxGpowH1TvR2yFp+xCfnNt4EdODWQT49qC7x4HtRoncYQ+kwYZpUxNYJs6CsP
	 LDE+10Ln0XEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE3BEDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107969360.2135.13231340623089423509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8d8f3cec6f367348cab78265979822f4f2b94aca7b608185f84fbe1fc2ca43
Date: Sat, 14 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771079693
