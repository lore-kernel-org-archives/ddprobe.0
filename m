Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBE533506C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774383293; cv=none; b=tWQzw9nkzEvKI4nodpXs8WVVmp5hTngQvLjAunirnL6QLtotfzlTq6TYGE8IdNlKQspemFhh8R8pwswty/0Jb25kKwrK016/dPIybLoHbpqLnq3pR3cJVOzWKf6DADsyRuQsbfBE/39LctE4WMHIhZKbAemS+eoiw4mpOi4dZoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774383293; c=relaxed/simple;
	bh=GVexR93PW3HRf5yxktSKqfXPYQ78gPMtrZnJTny7lv8=;
	h=To:Subject:From:Message-Id:Date; b=tVTSqunXUXOhnYbFceKUtN70U0n5uj2xIRgxtf5/AIbVoU2uUIZhiLpsuj5kmWVbCFCNyp6d0vg3lBbvOwsqgYvsYSbrwu6ybH3ea06zcwkiSO+jS3rbZlLmFSjCfzzSGj646Mb02i++vpx6ygU03TZgLWfHoGnhYYSpCzgjGn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT2M535T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gT2M535T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09FAC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774383293;
	bh=GVexR93PW3HRf5yxktSKqfXPYQ78gPMtrZnJTny7lv8=;
	h=To:Subject:From:Date:From;
	b=gT2M535TOd1NuqYVsCD4lU+wbAVM/JrMD8jF7wS/waUMrg4lwZEyY4yU4PBa1I5mp
	 5CwbdV0iBsCBwBg1wIgBSoVqXL0YoglIMTc/o+632c3uH/ftorD7f9MM1jIpnoVzud
	 d3lFs67n5gHpuEWPocOqTeSnl78F8cWwA55Oj3FjXiITqTMxLuoyCkefqFmNYp/XVa
	 /ZXpw8+6lIyVVpKKDPOIiZ7Q8EGbDvVZ8HE+bWGT/75Qgnsk+abJfOCJeIvrqMctke
	 x5df50sUpAbAZTS6BSEnQZ1UP5h7FItfMJVbL90i6ScyQDiwcqNHU84pSURGV6MU3T
	 0rWNSH1M8RpCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A275AFEC10B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438329365.17146.16202182385723858032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1728b87a653544667dc4bd6c20b90817cab7338ce99fa2f28771410afcb3960
Date: Tue, 24 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774383293
