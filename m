Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4410B388E6E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782116194; cv=none; b=XoVpHEvtJgo9D+/1DDvD0xBH7+B7yQBx3yp5P0voXsk7RMns2pZgZhcRnB+dadYpfwqxy2XfsZx5bbqR049U8pDkuwBcUlCyGmZqHzzsgZX12ERIB3XXJhbAKTTq8fYNjaRwOFBw7depenQ2Sskn9jLbk+avfWQHdq1cLkuYCz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782116194; c=relaxed/simple;
	bh=kkOwDIHzDy76r2DQBYO4Mtmtv1rP/v3kaFk4HM9CvWI=;
	h=To:Subject:From:Message-Id:Date; b=gYTN/OkIbj/glwW7jF5UV7d2ycssauWhryTEsEMrNMJG37PC5nezVudvFwCKyPbUb/CVD30nn0qKR7b8pDJMcs71adidGtFXmdII0xZMai10MK+9xq1FDxk+gvc6AKdqZA1rY4mUF5yO6xlmtdTzVYtIRjy1xUUIB8+GZq39Yks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO5wA/ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO5wA/ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE12C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782116193;
	bh=kkOwDIHzDy76r2DQBYO4Mtmtv1rP/v3kaFk4HM9CvWI=;
	h=To:Subject:From:Date:From;
	b=fO5wA/ub/YYoh7PgO3iuvXzhCSEpcauWQs08r6vrlt1gEz/9l2IefBk+FY6KACER4
	 LNg3B/xTTuFhvWK4egZDUJ18fsGudGYOzu+bmQ7euJw/CjDSr9EAbB18i9NlAyCTlu
	 OP/Ak7jbr4u6BhcW0pThL3P1TCCE8gjq+miNPxDQ3AzWIMndUlLC/zuT9IuloM7apu
	 bp0fdzsQOEWkKJxVHxgfDGV9b9754dDVsmby6AT8cznCjxL6P06tNfZxJKT//PoDZd
	 eEAKTPop6fxDB03PcfnJEYpNVLM9Opr/30mT+Tba+jLzABFtU4wlqtp6vyo/7LaWsH
	 Q3BiOmZT1qKxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B061BCDB471
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211619371.20337.15677044469150087646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd55e0c3391e59b4cd8df2aba71f40a44d9b506e53bf508afd30a96702637b7
Date: Mon, 22 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782116193
