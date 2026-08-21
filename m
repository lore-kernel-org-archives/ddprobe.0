Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2B144C4F0
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787302834; cv=none; b=NhIqIYr8HE//cONvd9q08Z+88kFCmGXbrZQS1BX84rzc9clv1awJlKYiaIRFy8Tj0JjuwmYCC6QT1taVXAPokjnpVZRZmitIUpYtTc64uEhkP2GWwHUydQugTjVhyZ7SFBob66mQMDzEEQyIpySC0/WBNscV8ip/rTCmi5ZIZ1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787302834; c=relaxed/simple;
	bh=HYG6LTJz66cw1kjO3eGAKmlJWd6g5zs8aVQDqwB/UWU=;
	h=To:Subject:From:Message-Id:Date; b=qQnCgVQ3NUSrbR1lCL/1jXn0quDa1Xtc87KAXowQkmMGasXf+5wZC1uYTgpXfURHyKDfWOaKPEz1O9dSg+fuLOq9EkgwS8HTj5bXNDEAfVgQ6F83U0ViuGHeFdxbMw2iSVGpKMYZIbYR3L6z2TQuakmWKeFsSbZfFhsbc4WLCiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8WA1Sy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8WA1Sy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01AF7C2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787302834;
	bh=HYG6LTJz66cw1kjO3eGAKmlJWd6g5zs8aVQDqwB/UWU=;
	h=To:Subject:From:Date:From;
	b=s8WA1Sy1RLFzJjY9Iwpllit6cWuesYvuiJsz2zyzUikGcov5vL1JRTv8BC1yJn66f
	 FTCXsXyiooaOV7LEt4qkHc0kKXpKe9rGeOJNyDpUCwSOnoyDZAC2NctyJBNW7ATKzH
	 d1A5NYjt6V4KRv5QfpH2gM9j2F9FFDSgYFaQ5VgeeXznbaNV9MeKaSibVxPv+SrVB0
	 gk/s+wx4l82qis3hfk56axeuRcNhZXtsA07zY2+HbTmIsN2XwGOEiaUmyudWTEUoAb
	 4WFr53ayI+tq3r37H3eviahrsjAfSxKLluFTRQwtmS+SreFN09aT5B3AqiCANqitwh
	 7ttOgBAWQ1qhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD045C5DF8E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730283377.12263.16699106997920377630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01612acfba881281c4b9c3d883642bcdcf84aea02565f20b9682d03dabf94fea
Date: Fri, 21 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787302833
