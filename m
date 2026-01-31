Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF7D35D5ED
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769882634; cv=none; b=uw41j6c8VScM2E+M69EFIlgOP5NPRQx2aPJ0qYgBMNkV6+yi5uZZ/GeT5dMaeW7fz61KKOcFtH3MvwC00PL4ZjD3fZ3YVXuZBoxjo5ZvZshI6AFPUE40y6MpCJlcC8jnstFcBRxIRzn2lOPMoNTABBauU+YGxzVEvOqCD5LOvF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769882634; c=relaxed/simple;
	bh=4hlal3XkEIBJzdXdTNwMlI2UBlcC27Dcg9YL02lLjB0=;
	h=To:Subject:From:Message-Id:Date; b=l4cyJ1CCvtLdiTpgkieVS5Ht3P99v4guXf69Bm2DOm7uiIdAnNlnUVwBWX9g8dn6neco0/rKK8zPtfGq+qKZAdhNqVQnTrmxVF9CyK9QWjftTHvZiOX3RoYetTP+OTvC0i5AlYP8YAzLXiWFWAEDWqGnCpw2Nx16ZSmcyJHiWQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCtUHoBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCtUHoBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769882633;
	bh=4hlal3XkEIBJzdXdTNwMlI2UBlcC27Dcg9YL02lLjB0=;
	h=To:Subject:From:Date:From;
	b=KCtUHoBw3kVoXzWIPf/vZIKBK5HqJpnXPMlogCB4bAgxtlLNxqsmiTtMUsfM98Xzf
	 /vyxvij/y2iDr+sNxXnynDPfQSYrpdkciW1SEEyeNjjlcVZ/SHylxzrMANyJUKzvA0
	 k/rqF93keajp9dXSPIAnf0EWdhnshD+0togoZFqLBmKupxMkMOz5VQhZ3to3igIlQz
	 bceF+8WqSdIKmRK1H/YmQ/yxYfYF1XmEpiZ9U6M7Ccbsae0lCr1/Q8cI/co6aYbM+K
	 whk6UkdU1Z2Z2eJ+H4WnaIiG+uP/+3UqC0qSUCrONwyPOC9n72FNqKkNA4dJwKgq8O
	 O3psGoxe8EK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8620D73EB3
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988263358.15751.14159437064411005927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26da95246e181c54f5585c0c0ebb48326c508caca04cfcfb92ac3d3c7ac9a78
Date: Sat, 31 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769882633
