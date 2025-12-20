Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1151F23C4FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766271834; cv=none; b=YRBbXv7W9hHn8iWdPg3E7uSXgMglQHqZR+oqfkZYGWs/eVOaj4KnPwh0Qx9fMyyibj40QqsorGO2hFF0IXj8lM+tHKZeZVInEs3kvNOOF9FHLlVwuwJ6IFMb6fAqortAAoyTWcnyyY0avJgc4PWhSbvlNqcm7xFMzEhx72Nd9RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766271834; c=relaxed/simple;
	bh=cWFLWISSlGlV+/qXLa9u5H7y/x7mlvzkbHdOfBxMnag=;
	h=To:Subject:From:Message-Id:Date; b=OK+gKnmETw9p3zXEYMq1vFm687se7dBjQaXpF/3WCsDrbG2sOFUlLyIG3WB8YWDZhgs0n4OBg3OHl9+LMMgn15cNEJSNzS0bbudfgQ0XzEq8ne032uwwtGE4OxAH8FUx78Lv/ZRM7THWjkwekMs/y2+Rxj0UIqfOT410RCJBUCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1kxyVCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1kxyVCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F97C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766271833;
	bh=cWFLWISSlGlV+/qXLa9u5H7y/x7mlvzkbHdOfBxMnag=;
	h=To:Subject:From:Date:From;
	b=a1kxyVClcbapn21somPDTpUP+cY7fv8KKsBbFQQGgUKOYObgt8fIpELwr0WF4gYyq
	 W/3MPWtfxGBOiwPNNbG1ftIb7OFQ7hS/kpdNW7/Y8JNm5Ax0xi3en2nQU4x9KGyoZF
	 borzTJfdi/7YjqUycnwXeEkYnDh1j3kA14qkqrrN0rQ6fti2FZvWp7UHhIcd1XD1Jw
	 bDTmaoA266TDZa40zwYw7TjfGjJRgMe+czpY0scsQ/1IVb1L3CxdMwthEE8YJiSqyD
	 yJ9Nynd7c6JbcIYY+scgS01WuwFHjXWRo9HSdsAHsI5nEMF4eu4rgmhZU2llHQGInn
	 qRNISA9O0BNNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA8E668BB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627183358.18122.10100319267178348736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad2087882358ca78e26b396a5d17358af171b1eac73bfc5c8a0626b2881cc39
Date: Sat, 20 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766271833
