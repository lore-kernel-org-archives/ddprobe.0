Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2873BB9E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773223494; cv=none; b=NLtLbMTrv1TE04HytXfojHSZZ9sgAvOqX+Vqa8Hpglo24/OLA4rB/DDBPJNrJs9sn/rsrT2OZGl3vyiZbSRtEut7Ik5n+Dm6eo+FFEvNRkJqmn5dtemCi3WQjlpSjsPmu+pR/7YzEnenHq0qaSd579gK3XaDbwd1mzOpVdzBH9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773223494; c=relaxed/simple;
	bh=GSUBFbOiAeysdy1uywDJN8+XyMgQH41ITC7LhTvIolU=;
	h=To:Subject:From:Message-Id:Date; b=lCTg0QJ1VYSd+CH1AbP0Byuwww7NZ0H4hNwNzZcK6OArrLeitiQrvZc98xtnZGCb0h3p3wQpsahVDw1LGUN5z5fzA8g/nuakcx0choP7WKuhBqmNUseJyQ9yxgMXt0owuVYitV2CPLfHaiG+dafXoNwhfNzTxaMLqIHKLotL5jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYwzEh+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYwzEh+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4237C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773223493;
	bh=GSUBFbOiAeysdy1uywDJN8+XyMgQH41ITC7LhTvIolU=;
	h=To:Subject:From:Date:From;
	b=XYwzEh+jixwMJnMlcatsxd2TE83GOAM87rUJidb+uYsLNyNCLaDItTV2ZkjCbLXl1
	 WDi3HkOoEB7DOLlQOuQ7G0gJ6ZXNT19k0fj3oei3xTf6gGc/n/zec1y/Z3tnWVIWos
	 K8boQjITYPc8AYMLSJosg1CfR2cb0rSXs38i8a1MUssOUe2/jLNHCodFBvHoS5ER9l
	 ulCI707gLO5bGTu352ukgyAxMvPhOzZAfM2ocfa1KZI/s3W6epr0hwi3Z8yL6Ff7Sq
	 UcLMwOIYq0pMZCBnEWPWG82zlvyFScRYK/ov7szEfwM0Xm/CXiFi+s3p6P9DTG3ebG
	 H1YD9LNdPz7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E378104BEAC
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322349362.6826.12629006693140500600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e681ee085f2757ba973dade0dc954732a0d7debbb26b3ccf1e740d5285aa4786
Date: Wed, 11 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773223493
