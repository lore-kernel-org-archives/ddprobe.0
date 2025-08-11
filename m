Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8E20298D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754893794; cv=none; b=HWsB628xx6DBxqQE/SSU9eF6z39vN1glDsAymSydOoV6LyeGZAmUMudr2pwC4N5HKce1kZaiIqBnhO/HsiAf9n6ljhgcMxSbUEl5baHWQ3N25CTL3Y4hYImuvD0wRIdcuJUufuCww4yvkfJLJCn497A99eRnOyjeBSJ10bfCjlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754893794; c=relaxed/simple;
	bh=sN2nW+lf3UQF77oPKQguk6oiKstRjON0McLrN4ii3RY=;
	h=To:Subject:From:Message-Id:Date; b=Tw77JJPbk4C3HN339Bx+KTCx6b0RJXtGc4MUYrmmvzwfxIGupxVh3aBGYmrv1d8zZTCaFU137ks5rFwksM9N91HBEm3VA2HC9D5a9VwGRLTeR1rWA+ivD0QU0gyXKq/3z8JaRlMjhagKxKFfGHxlj/Eqs0TzHe41lj5A/hRWLvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD7KUrTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD7KUrTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E9CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754893793;
	bh=sN2nW+lf3UQF77oPKQguk6oiKstRjON0McLrN4ii3RY=;
	h=To:Subject:From:Date:From;
	b=oD7KUrTZVISE9ZNZKxQbCb1DfArh9vbW/xD0gv8M5Cg1nTwTu5WdpzXryUOlgVw4Q
	 TYA4k45uT0pyWroMehHtyeV2CHFHtPfT89uVoiPDX5TBrH9nQ3o75nf+6NhlysBQI4
	 SIiPYT2BQ7vHLNkpzBIPth5aWvH1h0oFdrn9BsK3FO+YrN55wbiXPHIRrYkQhC8D3c
	 UiOQk6oT3AGM91bVY6xmo1KAEd5GIiW7bCwAy1RByKIi9V3xfentVpELjp1hE+jBP5
	 OSSlx5Cv1dq0NJ4jU6o8Ml4CG08zesW1Vo2GkzuPEW3wU9ty8OclPtl18YXZy8ZhYg
	 0dBssMATJkV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF3C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489379359.26448.6101980280511222213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e4ec534d06fac0e4059599a36a6b6c0257a7dfa498569c584b438eaac6242c
Date: Mon, 11 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754893793
