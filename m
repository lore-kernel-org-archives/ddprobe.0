Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC1827462
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766174034; cv=none; b=Zgyy5Mapt242Nn0TuXZ0W3RaieoGhRLXOHq34YNIpKbiBiG81TQT0yscNk9/Rf8Hg0bdzIf/4E0Aw/A+e8ldC66acc3NJzjQ/SnzFndbCXKiNyNS+q+cvCQmR60rL/iXLPfaFBf2cntRFyig2rUP6A0OtD22bX65UgIOGRyAjMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766174034; c=relaxed/simple;
	bh=LAR4jmOBRVnVVhxyD8FWETM0IR86u90KEhuXE/EsrRA=;
	h=To:Subject:From:Message-Id:Date; b=brPqB+mtlJKsJSDIUmoXHj2MFafQ7KK6uJl+igEpuy20LQgTCBRhzU6dd/0EuP1A9+oyfTx9ZGHu7SdJltvkClBQm6JKfQX+HMRW1tlqubyhrdLJJ6QWvMG57S7tfpROWKjY/gih9Ceaqjaf23r91uv9YuYHwJnRk14LzmvbPpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo3haGU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo3haGU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766174033;
	bh=LAR4jmOBRVnVVhxyD8FWETM0IR86u90KEhuXE/EsrRA=;
	h=To:Subject:From:Date:From;
	b=bo3haGU3qv9+cn7cTxnWxQmeR4eRcoWg1BWcXcviVWdq9BE9jxj/ZKxAG/DoU+672
	 lO/o5y+/I/tPpA2q+w3sLPN4pLuYMGN/9MUrPUQLt7glzQl9PhXJIgAgFec0lNmslS
	 wwg12hZ7RGhdnDh5MapuyzyylyT7Tok6P0J/HUwwh+uIPc+NnFHqPcCbDlVtnqkKSt
	 9+Yd6AEJfHEqe49/05igjnhCoXmMOXy6cPyEUGk2DJdl5ezAx7aRItP/7Ue0bDWXaN
	 bF7w2ym3Sm+JnCtXsgjGwjy0F2qVe3YjSbi6EnII4mUkovYFtK2az+yXeIOMvvttVM
	 oz73kfK470mfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B55D78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617403358.22436.13213223923135708049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb6cee4ba0e68a203eae97316ca5588dcd8c3b7b8ec03ddfa659e8b3eaecf30
Date: Fri, 19 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766174033
