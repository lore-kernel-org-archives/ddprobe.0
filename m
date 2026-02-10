Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F3731DD98
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770725034; cv=none; b=afsQ6vLYSnPd8V3EoNNt9SYdDU82OZZ5yrHLS19w8+eBgcudcjt2KMrFnRu8ZXwJEqKFNDY57IiwfK5DX7yUJncNP+B8wijAApjhLv12W0c2fnRtf3iHWOwPbxoE7v07mfmqgRNTQthBgBunmknRjoyR8lY6dxl3CYBAQTHg8OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770725034; c=relaxed/simple;
	bh=St9dnEv4SG7cNVyMvRYnkDG2/ZiuO1iFqoFa2Hb9qjQ=;
	h=To:Subject:From:Message-Id:Date; b=sbuXaqNF2yieXCQ3YTUMZfNpumUlMK/xFm9qITU4HNXcRQCJptIUZrWnhWjAwFGsyk06daUEd6LSh/XXXz8WHw3H8DI1fc6H1Cd1FgjG1dpKUhAsKiEjHABpk8Uu+zt2HR6ZoGuBg9JwCDWOjPwF5LAyw7U+qwjaQxva4v/QqCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQXmF+Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQXmF+Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C51C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770725033;
	bh=St9dnEv4SG7cNVyMvRYnkDG2/ZiuO1iFqoFa2Hb9qjQ=;
	h=To:Subject:From:Date:From;
	b=RQXmF+Q13hx751Rtx4p+tL4322XT9wtM7VTrjj1FXTgmz/XKmwrTzUyI7ez6iMSIj
	 bG+5KbupUy2g5mcnDbbE7joynmkAAbqi1iPE/E9nDnPyuWWPgFrWsfWwK+VF/+idiS
	 4EDvp2j3ywpSokATdmaby2URaxbT1nlk2eCC68yrH3sQeFZfVRlf1yew/vfdiCQwM7
	 n81tSayykaYUo67JMRDuqaZ9btkFxAw7Ri0uDjR8jvOyjmkD/rAXZVfK/fCp3ZzTKl
	 /V9fVValP+9nowLycFmbHrH3LsLvltew2RM/I3PAyUmDab9tJzINLaNKa6jrK32y1p
	 CZV+Tp7TXzQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB68EA8106
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072503362.30840.13418812383549380313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e5a3c810fd3ffc36fe586af360324ffc1142f47d3dd417370747eb8643829c
Date: Tue, 10 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770725033
