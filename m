Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9964B04AF
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786925434; cv=none; b=gSgxa3uXyem3tFCr+Q+RNbZGrqypJ0vi/0Siify0/A+QLv6+RBMIIUqQ7FZNYJBQcuAUSSD4bznZ7tQFkwxJDc60ZcFjeCy1VfbHswkDEkoFLCOYlbhXBR67QUFwdBKib245k418x3VlEGKJXCyKuOYqEGCyUWQLXXD8GMRUj/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786925434; c=relaxed/simple;
	bh=zYYpu//9Ku5MjvCAOUoCwE0wHuq99TGG75JVLXA1VZE=;
	h=To:Subject:From:Message-Id:Date; b=oGHTlVWxiSNsiurKGTZWa1Rk60WfHQQ+IpRyD1zk6LX8NZAeXZ9MNkVUovOoiPvuQ+hqThZ5kQCxJkk+LKsF7ykwgsBay4ohbsRPUYqyh4HUeyZbGN1iawpe+lyPu3TbXKWkkFPyjmm5sVGG5lkdVOYqSUSZfks+kNeGXJXeSno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfDfmji7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfDfmji7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAED0C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786925433;
	bh=zYYpu//9Ku5MjvCAOUoCwE0wHuq99TGG75JVLXA1VZE=;
	h=To:Subject:From:Date:From;
	b=DfDfmji7SVBpbj7nAEK+4+o+g9kKndeEbuKZiw2GpdoWmTvP0azwsUdzI+gPbYhyS
	 f7+X83bqMmiyl5sCTzerLmiUGMVgAW3fiKhBrzms/oD6RFlIGGtzZKWlNMg1OcFr4r
	 oQH5IqP5yAthxAqZM3V263YYznaFPZrn+tU6wKR2VuaVTNADP3EcKexNEvfrGw+Q7w
	 UHin+wihldySOrAa+q+/VLFOo3pFA3M5uc6e/SSwpOpXadIQQsecHIAWbZ9yjT06Um
	 1SYtHwm+ABlD9a61djFd7DcXls+j53P3e7OcOOoNyTja/54NZGPfaj52C5934ly8O/
	 2dssv/CT9LBFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C4C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692543368.6961.16385856632119657941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f4178f34cfee206986fa6d78c44e6c0ba72a84c723c6e2d586a2ced14a7f92
Date: Mon, 17 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786925433
