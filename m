Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEE934DB54
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067236; cv=none; b=HlduidtKkj7ztNc6HkQMVvTD0WYlny+IGyTiI0ST+HfiS9P7l7h4aaVjdccTvQzuueQ/o5FnlWMze0kYp3h3FjOueJHCfd4647UneoxxwVm+jAlvusU55EXoIpOBHae3CkYMj5V76MhEdk+2olB+yx3Tr3wlOtrXPee5mJSStG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067236; c=relaxed/simple;
	bh=G1fq+eDGYnjDQ71h97A3SCYuYuafLJgDfwCrhtMZO3Y=;
	h=To:Subject:From:Message-Id:Date; b=rQfTBO92X16eYuuqBgDhLY6ffa+BUn00Z8BvVjv/nBnlb3vBY0WP+05BAgMovpxm1iqq+tjiT2F40WC5vyZ3g/AAJ6rmao1zFVqO7bYIjDRSRAahGT7XxBMAoVAtnMonn4xgIHQA8rzHCGaNJvpZn+BKPLIdg2YLkQac1ZBtUws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXzFjxSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXzFjxSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CD5C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769067233;
	bh=G1fq+eDGYnjDQ71h97A3SCYuYuafLJgDfwCrhtMZO3Y=;
	h=To:Subject:From:Date:From;
	b=OXzFjxSNVH8YI/blcX+cIsYYno+AdFruzL87Cl+VDX+X/9i4bBSziXqpxl7c706cy
	 TJuhcwCxNJyL5kAbO+W6zrGFQuuHgrMNe08EYp7HAwB5Krhti39TrvMJQuzxXgGmbu
	 LljhPzQ76KBYHdEQy1puyrYoyHPZLDge6bwsRTy0k08LTZ0de6e7aPNBUwV+whuEBq
	 OSs2VIXaYVtjIJZtqoiKFvbpI+iosCb8YnUMVV9CfeXz1SHOEjcOIc7Rm+TePX95Bd
	 5nliI+f6dx4HWpJU5DRq1vxGfJfr5VbS4vyPAVQZfYkngsDAkBBRhd1gGpa2LlQzZ9
	 2cObQLyiuNLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B4DC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906723359.4805.15318595681306579455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc97089c1f2b25614b2c172148f403380d34b6fa1f98e278eaee6a5693676da
Date: Thu, 22 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769067233
