Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0131A9F91
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792197634; cv=none; b=uI479c32bwZsJRSNeccyDdWt7HZNe2TnKOy1Qw36VhNYouo0GrluU7EsSTIYKXk8qLASxl2pT8HazlSCUPW9f3o+RhxuSE4xVoXJHluOcUMK/73hCRuThv5ckSbY+SkjLnhQ9I1Gi7tD70r5wFGtUXdHey6Km7g4X2L6fZI5ucg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792197634; c=relaxed/simple;
	bh=rfMSmkJAA+NHnn5hjgrT6RbbqDr+DOIgioEf+wkc9EA=;
	h=To:Subject:From:Message-Id:Date; b=l92ZSq9bqGV1rXCK9JqfRVVODICtQA2BffuVQVcaFyPVLDDej8yIeLinUUhLRGF/pWr5Kpox6+EyZuwmQbYIyJQ39NuNM1BtWPqYH6ITDv+piFh40QtZR9OCr6k6Gts4adtumnxwIWW5dGBU+tVYZo6F05MR+yjeamUHao2jCgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECKEcVRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECKEcVRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D4BC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792197633;
	bh=rfMSmkJAA+NHnn5hjgrT6RbbqDr+DOIgioEf+wkc9EA=;
	h=To:Subject:From:Date:From;
	b=ECKEcVRw7IwIyCI+fb1Ka0JI5TNdqZef12gIH7VBf5RLRbWx8n3d+tQ4eV+Sbt+lA
	 bK0vVhxS5TM858Rao1Gh6eiQ+srdPt70elEoQXQkXKgIcA3JGOkOhnWqsey7CfZst0
	 33M9QiMn99xuUHw10KivXyeQ3TUSrbtQmWZaI15GBs2WSFClV28ts6dENN35IlIKN0
	 d6gndgH9okFGbU9mJFhgunmjL//lZ2wI4gBWud5zPuxIw/vMxpK127rsRR0DicK+DW
	 pu7GsE6THtLpkmNk7AicrBp3bn0rOJ2txl9YOa1JSDhdU54WeDXXt0uBwmMGQajsse
	 Ypqj/L42U2VqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE004CCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219763369.7905.17818147155521758262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a76802505e69021050978196d2faabff06655c9a4babfef9e8188d48917c845
Date: Sat, 17 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792197633
