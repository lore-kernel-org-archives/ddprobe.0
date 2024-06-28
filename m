Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBD81BF37
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719544463; cv=none; b=jTZufEJO76yBaFXgveSEYQFMVp72RTpVpbTtbkZVQ9UuH1okDBzc3y2vibtzhci0nOb+6+uxUpPfyhP1/9cmIVoZ7bQeiSdM+1RqticL4aNSDJGxPMlJow/atmQ1P5kH97PMg/GbUPXS4AV5A75WRsyz06fVt5tew0kwVoPZqIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719544463; c=relaxed/simple;
	bh=wVwvKBgIVVEMwBRKHVdDGHH+isvWfwBDGgqWjubrzC0=;
	h=To:Subject:From:Message-Id:Date; b=JnzRlVWNXvZYLA+dkpPikC7OVxkXSXgs5MTntY6d07UKcdOHDDN5YUC1GwLoUmy5f323ts2lHczTL4M8LsaZ6yrf7RjyVMq1dlpFsXHx9fqaRO+6dsHbZ8Jp5ogJdw2PgdkubuSq52DyzYdbhvUUF3z8wV8MQnCZ49NfHXAme0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZSh6aSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZSh6aSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF80AC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719544462;
	bh=wVwvKBgIVVEMwBRKHVdDGHH+isvWfwBDGgqWjubrzC0=;
	h=To:Subject:From:Date:From;
	b=PZSh6aSFNw427nAICk7+NOwQMfEuF9kDVjhC58lcGPyOIOhq266EAjWKib+epw7Jz
	 B2aS6Lq3oDxaS4cGNW2dauXwM++rY/qYG3JcIMkNonTs5Je4v5eRl57oo7zCfeJdwI
	 Rmup+GWXxq4mxWYxADQow7qdZ2NOA20Qrj8SDMx63tMPYU1qXpegftRZ0jJ2UhsWa2
	 hFhEqFqvAl/o/UljO3o5LzmijBSq9B6BQwNRKj9APyHeUwLwPjHRYiQwB2h9DdXWfD
	 Q66379DELeiILnEAJfTWHpnv051vXe8NNe9GX5MsNI9WIDH+VwYKWOiV+tFh9r5xnW
	 6Ef8isTLxm8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC046C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954446276.17028.6011453623851702865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7993a5fcec1ef3a5095afdcbfb73e1b222c090124f67e2885219d09951fe85
Date: Fri, 28 Jun 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719544462
