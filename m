Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E701D552
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705436297; cv=none; b=YJjBDTPMD/uIZ2JvHFPs2gMSSMHiSzjRQN7njpjyYnN3YEprQKT0UCmZC21b3y676qlExbivi5zY7A43NSJ1WiiFjAAXHAFIqXYgTDvfz40vG3v0ZrP9H6Kb2/eca1TmZmEU30PBQe1kkhn1wOL9PUbd6cguvLQdz3fvcHapeB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705436297; c=relaxed/simple;
	bh=+4an5q1Rs4lVNxOT1iSQdAwggLhXzznRJM7M1uLCE/w=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=mUCUghXv+zQoco2SZuYit8CfntE5COubylEQgUdJE4Bo3K3StmZz24+IW9jyHxukblEqNcN5OEZA7MToShxmE6lMv63dQrp8X2C9c9/J95mRebqKYnRaQvyJ9h5T9seT8D1uOorVP0PN4qPR+ziVtt197byL71qbu/bd3F6tP44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke0a4YXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke0a4YXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF9DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705436296;
	bh=+4an5q1Rs4lVNxOT1iSQdAwggLhXzznRJM7M1uLCE/w=;
	h=To:Subject:From:Date:From;
	b=ke0a4YXVlfXkGgE+v++gUZWkEn8W46bSh/X2g+hzRDr8CcrJk1JbwC9aKDBFIriOt
	 EwKBeXzxUOChTHlVw6HoKPW2gH+7W/Iifok5Bie+7ghgQtm+tWtm+4hbkjXNydDX/o
	 x4kbYMrF8RxCNVUMFdgGA28RprF9ytz4Sb2DMfIcRoLgiO0alXvPqC+p/Bt2GIb50w
	 RboClxzd47MJRwQzvKHaZ73mPBQ6r00CwpOotsGTua5ycLdz6dMSXI2e7HbmeeKoAl
	 hGSp2JjRGTmzSKTZetW/OxGRitzg7dElLgPxmheDEO30pi5YFtP9t0NR4simJePwuz
	 d5EDMW5WPFfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC97C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543629637.29311.11879814139411557467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9c8edba854b5fbaf60b14bb5834be72edb034f0924cdb470c1eaa618fae48d
Date: Tue, 16 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705436296
