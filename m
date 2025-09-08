Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276CF30EF8F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757353194; cv=none; b=jzzmysMhgb4W+Bd5aDvux7W01qYqq9rkPkLYxAGgIQTonv6qnO30f5VKhDYH/AeWElnTeja7b1q6QGVOtQsFSH38Uu/h31tq+zgOWbEQsYVGya6vIoOAMQ39jOCtMgnTnK4tFjdVCCzbXySjN0t/9YmsSgyekVaDBjGNBooPjWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757353194; c=relaxed/simple;
	bh=rAjIPofzBV+y+Aj96c+SykVcU+Eue7lyJnErnWHYTHs=;
	h=To:Subject:From:Message-Id:Date; b=WWB8TsyDVnnGvV7+yMaZI5xXxeKiImLSpsg4yEHU4/YW0AEnZjUtPw22A02I8sx2XckDdiXfzho+is+2W16Bhc5HLnmu+hNE1rQDhBwapWv4PP6VqesaH+Ft/4d3Q+7dujL7zwc1bApQxItc66vgHuwuq/kXJKkkEmZTRBMnmnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zza8otfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zza8otfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757353193;
	bh=rAjIPofzBV+y+Aj96c+SykVcU+Eue7lyJnErnWHYTHs=;
	h=To:Subject:From:Date:From;
	b=Zza8otfTviMPqTW4s6I+wePJJS0Rm8u7WrxCVTCj1j0Npdmu0Nq8CKLCY8kUPmnSk
	 LpNaTALzNcofvu2ZkopAOw0P7yGWA0gjXcgz75JT+OLmjjUNAISIVmYriYT37AaNiu
	 /SERMLzDhD/3uMs5Q4/vn2NzwIl4PFTL1wRbSVLlfh4PJgmWSeAPa9tlnlgf7PL2Mh
	 U7q1IDuW4/BeAUtSg411kZ59uaZDyBxVG+WuqOnr6/qrxpGHH69N+CT6w9Y2kjCRAq
	 JtE5AQ8je7e3Pvc2ObfCt9hLLcFfLNoB3D3hq/B9dH9YqY9jE61iLulqZIej/hSYpv
	 YwGNPiE/LVW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F826CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735319357.2887.10881711294202576939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a3fda38738fe0056b2aa227297583c9de097bbb634952d9875a514d59f4a85
Date: Mon, 08 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757353193
