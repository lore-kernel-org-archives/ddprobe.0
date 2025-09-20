Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A832D7BF
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758331194; cv=none; b=ShdlmQu5tYDeVZWjXkUeBZm2KFtE4a28h6dkgyq+rCG1P9fbuhypVDRWlo9xvwx2wEXZIGn0chL0tur93TamdmswJoUmC0fzFucdAgxEy/otOYI8OzqaO5WcwPKIUSoZQm0kxJvODFFDb913reYBuU1pkAB74l4qaCkvICFNisY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758331194; c=relaxed/simple;
	bh=bIrcvGeyegFNv3u99j0lv79bLgmdApVXkX5Uuaol2Zg=;
	h=To:Subject:From:Message-Id:Date; b=QvRsegUhurWRAzGRMyaIKe/f+DrBaaSCK0wjiPhfyN5v4X0NqEurvYpX07EoNEkWEans/m847hkedBdnRv+eTlwrTHZvy8M12mLrYjugSUnyBRv0bxLrCjo8DmN0ocqMIhID/cmoQkLLWZ9/i1JJGIudz6SCOhKksR0JNMVp4d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHySejpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHySejpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A3C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758331193;
	bh=bIrcvGeyegFNv3u99j0lv79bLgmdApVXkX5Uuaol2Zg=;
	h=To:Subject:From:Date:From;
	b=GHySejpbcbxM0xLREbD+MCv9QLfHW25fnMIOuvAPP1+dInxtgXZhuootpyTQXYEY3
	 0hlhWFtpX5Jy4/7EJq6jEpkiHQkTXMlkWGj2Vka0nTfL1SW+125XxAGm7UpVTKXw24
	 JPmmoFGbNOE+LaIEdtdCK7F2zskC5gHFDCchF9DltxRykZVaTiIPske1bVrUpJRl4q
	 rXdkwgIpRnwHjnk9LS/50ELh51QeaOIeQ3BWES8rI7yhGbcMRHfONVFfrlCFiS0sW9
	 IosunO+cft4cD/4kzSXVwLfdNaOl42bitlpIuXEI1tYfrWyrMTlPe4uCSCke443W2V
	 zw3Gusbahdhuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233BCAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833119357.20373.6141021712464060413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22c5d6dba2eb0489dd3cb20620a6c750ddc1997d2a779951e89e49a831a3d5d
Date: Sat, 20 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758331193
