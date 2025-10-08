Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C619528E579
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759957193; cv=none; b=Z7OvTMWxf7j1fTM0fgh5h7vxnmYqVh9q3HIpnfpstcw8zWYCfJmRuJ/yEdEEQOYQeoLZLGZkc5Pp3sETIsbxH2hJi9a0EWjaLjzpscw0DlHiZYMt08EMT7uOb/36L0jt1Wh/afWGJ04oTpWgRFbg/p4jdTK/PM3vk7FhP/xJ9xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759957193; c=relaxed/simple;
	bh=57X8Dg12ezlGJzdk90QMMQYdB0hzN+ZW0cLyktgtRys=;
	h=To:Subject:From:Message-Id:Date; b=YJ216MIZCpDlAMnC09+qkkfgXVCZbgnzx65kWkxfbicXrAbrkEi4pK01K8emQnMNcIZojZ+blV+yylbLjY1wPsTBJKww0kQMp7Oqfp5gE6f1mSI18ay1Q859tND86h9UArRzuRKzE0dEbnx1LjnGQcSGPME8NW1maPZMVaMz54I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyhBcm/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyhBcm/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A512FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759957193;
	bh=57X8Dg12ezlGJzdk90QMMQYdB0hzN+ZW0cLyktgtRys=;
	h=To:Subject:From:Date:From;
	b=NyhBcm/1jb6b0L7aTBM7jXOPX8RiQy/1XlCgJtdTzlYVqy4eRgDiV2bZy+FBojvJv
	 700/MdIoVhas+AmNpzp/JmQgJ5G/gFZdXzQ/OAQDwr+A+PUne/4vwx5jHPA9nffMLn
	 gUavvO7xgPt05NARmYnXPqqjCZGdZXW9hJcRKJBXCFUEXkdzTmITYjk9u6Q88+EbXh
	 y0N6KaCQtiR1ad4S7wFwu7ZssUy27Oy1vYJvlyGfJfuTVKJDjvSnBqnfBcV3Lrsvnb
	 8igcSq1XKSAIpuOOE46h7wZSpNZJrFUL7dxpPfRVt5f4JjzrfgIhmZhdonaR3lrIwn
	 X0kziLWWPnJFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96876CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995719360.15904.1156651612802114774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f620041e3b9f97af900cf95a16d036252e2e90c2ef45ca7ce8a72ed5599c152
Date: Wed, 08 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759957193
