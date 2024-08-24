Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A498488
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724493954; cv=none; b=mf/2RmWQEQOpoonuins56OjHt2c6UcBZUdWOHB0DOpeDleYXHrYAXwxM/nWVSONW3UbrcU/qQMCxIhdX6AyCpqPScJF9crnC3byZHGkE2MwgrMnQ3kM817Jrm9Jvug6hwCgUjg10/EnwVfzA0hvOjXChopYqu2umV7vgL/cV7mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724493954; c=relaxed/simple;
	bh=djrJ9tn0Hv1+FGlkxXr7yYJfjkhnMVCjpdsMK6DscUU=;
	h=To:Subject:From:Message-Id:Date; b=aSv9K5/0GN4vrvJvlUhGu0ktmAFkaZy4xaJYGII+3GCt6c3QLA5FCl/q8ouyJiO7RSkTnFq4DiWEspVqzA7nuD5RHfQSG9p5JK+/aKAHSec5Br4HNmASD7KhXJfV5dO/zTF7SwegpchmEpCIZEkGd88Ck21bNb+qTTRk+Xg1we0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsEIPEly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsEIPEly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C0C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724493953;
	bh=djrJ9tn0Hv1+FGlkxXr7yYJfjkhnMVCjpdsMK6DscUU=;
	h=To:Subject:From:Date:From;
	b=fsEIPElyDjVFGuLPBhI7eSAtxe4+bPkxmc0j/ZO3gP80D0PAA/a59heZy5RtJgyGy
	 GTgFZ2dLoGlEksKIGRfu/Yi1ftQ66bRLFfkfCUKulN+o4TWCgQKpHSqCcjtLbL7yXa
	 n71mc5zWoyiYkJmTWZCo5iOM+cu6yrWhczzPYN6E+TLhispEo4ip7177geBhEkU7jL
	 pX7WTzodkTA4wnXc7phqCZobOcSKopRQnOuTl2Ut1ggCSt7L18iSyh8hoFPX/UXlaR
	 VRqIWObThjS2IkyErbBZ0SDHfhBs/aovzoHlO5TmJyyJWbZ521ZXa+vKkgpO4BZtZs
	 DTAsEaIL9tvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFBC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449395359.25290.2445745088268864851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc99a6c5e742a77947414441b7f363dab8baf959c2514c95f472bf1b51eddce
Date: Sat, 24 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724493953
