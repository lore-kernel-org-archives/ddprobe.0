Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433082F549F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781216194; cv=none; b=Z8M6/WhE5ieuc2ipjSSbUEzZuRf9n+zm2X0OOgB/vtWrXtIqLfMVt2fUba24vV3UBDcb0Lpjopx/Q2DQlXFBSqCtkkBCN2AtiXqwR/c3/AOJHNln0g51jDLmS22mqiJRJSZm+WYIZ4fcAWxGKWFbT2fcXQ+ONSn0S6gNndUtqPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781216194; c=relaxed/simple;
	bh=Y/Mbo5SHVbaOBF4AraAkUD0DvVcFN+fgne9mzfXSZxc=;
	h=To:Subject:From:Message-Id:Date; b=dNO7unFrOJh7I2aIvmG5+TZx28+wCLDpxhnDCqFFpr68LKqZ9JepOnC1B3f8fiQT4Yv2kf2s/HcMJOMxHu6H9QPUViCm6Op6bp6pIrFQjWrBKhC5xUWVkusXJipB0IoEBx07YIEd7I62dfcU9W8swKyt+JEcOKMgpVUnJxziIPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKjJaG5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKjJaG5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F95C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781216193;
	bh=Y/Mbo5SHVbaOBF4AraAkUD0DvVcFN+fgne9mzfXSZxc=;
	h=To:Subject:From:Date:From;
	b=TKjJaG5lfqtB2kBsM5zWtaox/Y+0EwpdANw/lQoYLUpmYVGhd1TZ9L4ro+PMdChDZ
	 2yio0eEagpG7Ub+wdgbopEMNDrRuL9s+iSPu281IYix0E//D5aDBTBR3sxw0SpwyUX
	 fzvoGlF1OiwaMVb28tDj/aVAM+9tc/bCy1/yrU5VlcuJAD/9IweGHh6r4s1z41Ipqf
	 ZFPum59RpUcAkFamlg6H2qXYWa1WZ8ogXR98LD7kkYDWxnwHW/icfHY5vWtheI9g9g
	 5QgwQqp8XwoerS9MJiVK0eaRq8f8VOCkZddLJTDK4TyBi871QupW+/6wyjpoLjkK3T
	 D2qBYAtS/73Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE0CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121619371.31993.11858311412032085522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22821dd7077f36c72e662165ae7ebb68f50aaafdec45834924edfcd556f9927
Date: Thu, 11 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781216193
