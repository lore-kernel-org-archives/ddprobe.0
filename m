Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596ED489876
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789403434; cv=none; b=RvojF7nnX7K1ps6sw5S/gKD6lGWbj+i0EzeEzYAya8jeGFmOnMvCZqBia4fVZOtBXgxxOKx4CmnI/t+MJ2RokJ/CoJHl8gbaZB3WfoRlgNvn/T3Bpy8/eG082W/xlAf/6BxqxEKPtjt6kuBZTu8MPOB45JEaEHiEPWyS/HV/yFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789403434; c=relaxed/simple;
	bh=dwJBH8DH4AB+wbqgRZv9AAftwnt7Le/Zx1kCxNqKiwA=;
	h=To:Subject:From:Message-Id:Date; b=rzNUilzKc2RkA8O4H7Tv/CCILqQwyHfwIRVVKDVy8NYij7tRCB1PPgVokuUad4fT3U+Kamm+6vzkl2+qqiurd1IF12o4yyq6Yi0HzVp2MVyLgrnobkLO10aRxwUkMpmqT55Kk08tx+0VQJSCHYVxTUmPk96VW0fdl5LUcgzSr6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXJflcMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXJflcMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E68C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789403433;
	bh=dwJBH8DH4AB+wbqgRZv9AAftwnt7Le/Zx1kCxNqKiwA=;
	h=To:Subject:From:Date:From;
	b=iXJflcMuQstE1YJzHA+IEvRcAi1zfzzdifaDK4oSrabhrDo/kXd9RmNYPSXU355U4
	 v1wFl7eu2wE++enddvrUFodHrKcksh9UVcWf14PqgMOfLZlQwS59gfyNmu4yjZkLZv
	 P50qvx5pwnh1T4ApdEqYU4tJ7eL3im1mwPzfRabh9sRQOWGj9sx3LUkgDZyyDUEOg4
	 HWH7AlXLwe1XgHH3XCck6afMnssEN0AddJK0Mo74ngIOY5uIDQXjezS5ahJbWz7UPm
	 yqub0T9XZCk8LDHTrSGE4I9YUyKQSkx9ukTHecAsCJQtJ6ahxVnQ6I8WgKSVMGz7pY
	 XtBMYTr1fOFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD742C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940343370.21305.14575420854916600137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea408ea2d74f96f76be422f834146e7fc623c071fa7458d94b4ae7e533d6c7d6
Date: Mon, 14 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789403433
