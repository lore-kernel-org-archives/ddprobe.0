Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC92A59
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736294754; cv=none; b=GU8bfjlzzHmdelrixHs+ydjfjhIWO4O31s71jdXkwe5Pqw5W5P+WmRP+o3a4tq2Gh3eXBOT5hg6AhYZWFEsDRniua0HsM1AqvmwlZOBBSyzX2YEQi3/oAEc1lGGvOyo37eVbpmPIchoEyEDi1IC+uZuuKwTafXkSyLT2Q569DM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736294754; c=relaxed/simple;
	bh=U/6+tntjYNJ23/9KrhRA6Wjm5lQAS5iscNSa0rmGNRg=;
	h=To:Subject:From:Message-Id:Date; b=OgsKTEGvgC2Imtas7Sxy1eQfzZ60laWTyusA5nPxP6+ojJ16i5J87Yo7aTSCcLp22a8PPumzu4P4dpR3XwXk+4/7R9qaTdYpOI3kyAl5utiWvUcB85I1YA2Fv1lS+ce/Q9HwdponJz1WS3XClopCyyacrNp4kZXhhLsEUUqLh8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbTpAEkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbTpAEkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD73C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736294753;
	bh=U/6+tntjYNJ23/9KrhRA6Wjm5lQAS5iscNSa0rmGNRg=;
	h=To:Subject:From:Date:From;
	b=ZbTpAEkcXytUMaZFDVGtGg/GDH7FQK3fmI9wf8VwBk3953fNwFDA4z6cu3eVuiGS5
	 Vu9CYhrmLfW+OkDV4G737DkuS77fZr6iARMpbokzLeKILXnoAwUDYcktYPwZhQuhxP
	 r9TVFRqQfd8OxKyzdNxCrIIWecVH1qxwBzxXIx+Z3PriV8vZWKJzqVe6MJh9rvPzR+
	 +zp8vOQebHQ6BM2dq7oFfJ195SahCPzgFu+bHYev4Qiv8mhOBzWZXqhSdh5zuPrwIj
	 7uJVl1RLXvXM4+xpjyxlilKweO4mfYp/M2FH97bwrlSFaSwXqmFK7fV6VoDtnTmhej
	 tx3/iAkZ/bzhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E9EE77198
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629475361.24366.3506406387381013415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46c62935a1a8e766e6518b3d9f49c8c15d515a953b2dde422c882b9e37d8977
Date: Wed, 08 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736294753
