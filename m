Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1D630499D
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758721194; cv=none; b=HroFB1CMGcP35gvMzOxcbG4cFP9iA3K7ziw5HwY9kECZ9acETAkD+WgzJaJlzjSjUhOuZQR69MEnuomg8WCdnaZs6Jmku4ej2UqELRLdXwS/pgXsj7tQx8bpTjw4kvGgAfGMwCzPNxyAv2TPq0ifAZWtO/EdPs6IIcFjD0H3+VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758721194; c=relaxed/simple;
	bh=trwNpc1g6ShWWLEAqzlHIEF+c6D9Tyc4is/RxGZwO4k=;
	h=To:Subject:From:Message-Id:Date; b=JKe/hhgF7v+rjANSuh61ig2xI5JSkSuOnnpmull1HXLtTGrfcdPFluvUyD8ilvYuanC0L5R0EA5IupDWkTcgpvPg8itphhX4Dj4n69MQbvLyZREeLU82R6zRMzzDyDTN9794ZrUphfQpNIjwZCSZ3JbFVGhM+qlfptuLbhm3niA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btQ1rmwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btQ1rmwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3687C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758721193;
	bh=trwNpc1g6ShWWLEAqzlHIEF+c6D9Tyc4is/RxGZwO4k=;
	h=To:Subject:From:Date:From;
	b=btQ1rmwgkOkZb6RI8HktH80CXFsow2TvcjTX2GFANgnRtLYnBo4TdnLjAsAEvo8qX
	 DlEckUbViPO0ipjXL3ZuCVNcil4LkhMsgtniTOyC72YctCNeW7grufkh9FnlqwEZzN
	 xjgI3LAcFaD888nsnVo7lMgz2jcHh+WQxPR+alY7mwZDdbBa/bpsCBR7G2lYme+ICl
	 1lbqIMLIdvbnMXDxHttoAjQWMhM14DzWuzcpEBn3F/lYu/jP3HdHWTGKW1K716GaR9
	 eRoLo2l9nePD5kdGnISAsvV4IvIzhBKzIYORHZzP4e6jqgNzyLBR4g3SI3I1l+O80A
	 eeEnFDHixyZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEE7CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872119363.14670.1123775429848863691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf73311ef498a1dee711f301e91ae4fab86eb81c80e190ca42a8711694ea80b4
Date: Wed, 24 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758721193
