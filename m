Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E200286D5D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790379034; cv=none; b=BateCacxpE/ZMncct3f/tYKdNWrfG63jMhdqm1VrBksaZ2m8NBgf6fPyQjmccr02OYAEBaFa68g99KGtcIJoe3exMTYhaaqdbV+Ik9rs9w4noL5PQPs2tbKU7jLzaAuPb3ZAYQZhRKk/HMDx1a0bwscOPXCphRZuqyA+zz6gpLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790379034; c=relaxed/simple;
	bh=zywk2vd78LVJYYF4O378OBgSHv4i9hEGUveaLfo7TNU=;
	h=To:Subject:From:Message-Id:Date; b=F71zSxhPZT361KdVCfN+cIZKcIsdCv48fl+kbG67wDZ5gBymFyW/ZYEGrehgUPC5RKLTjjIT6A86gLDHJiGMSRiB6vjEDx8u1l/J5RyDx/eEfNZ2T6k75GnqwDkcvZbazxAXFld+Z/xKsMmi86rI79fh2ektl75sreGgFTKPSEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg05Rspu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg05Rspu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81BEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790379033;
	bh=zywk2vd78LVJYYF4O378OBgSHv4i9hEGUveaLfo7TNU=;
	h=To:Subject:From:Date:From;
	b=Lg05RspuCH7tR+F48kA0dT1F49oy1AJOiuGmboTn6opKLVr+aA7N1XPlyC9MYMOtN
	 3OUQsrljWiWCinUUHHbyB4VpG6Fzff/w+L7IORUCfxKUScweCklKlplTXEzk08vSv9
	 V8heB0GEBSvMcJjW2632A6bQbfiePk9yWSfVtcyOyyZj57nZxZ2k5GK+O5Y7Md/jlV
	 sVRaiq8QNnBzh64Q0zJkKeS8slW2gsy66eRd+UFwqksXF3DZ3EPnTLHk45nBUFX6CH
	 ROirbMI6Nv3vwlg77ZXNccI6Zwg1gbYD2z89UYsSCj9r2dthjk1lvqqyCPof9mk7Nl
	 zE3Jtd9E1i5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4495C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037903370.8934.3207753871384417681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2bcc25bfdf5d34c0a2b3684b1a8ef3a8875eaf33d6d973263613be51bab30f
Date: Fri, 25 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790379033
