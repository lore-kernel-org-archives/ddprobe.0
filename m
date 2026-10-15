Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA123C415E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792081834; cv=none; b=Kq6OA4sVJ6duQdV7Ld6ARPAHrGMquy1f0gsd8HtPgGwM+P2WhI/HxIOJASXXk9Fs/DM5YtV3cS6KkBSEkUEq4qfbZ3tQEqVVbDEok4E4JS2/FyUyasSmMBtl90Fl5RWhG4mQJJiY6QXoDUqMSRl2Wsvg98/zCEEJutfKbIjYPJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792081834; c=relaxed/simple;
	bh=LdYjX7NLcgWesPg/Npy9I7vGDkevTF2r5D1vafVk7Mg=;
	h=To:Subject:From:Message-Id:Date; b=qjf6Nd5bKAghXptwqsTvBhXitopoIjUAQ7wlT+aJEhXRwDjgmg/mmmDSMdxubSzIKK/23F2lBRoriMc0BylYLGlLl2slGkrAR+e2FLtR6g3toJJsJIbtdaD55z7kgCMjGCJRwJz8g9LkVYjemrM3mgYJa2mF+Yjr+1NoF/AVRoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc3+M98Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc3+M98Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9F1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792081833;
	bh=LdYjX7NLcgWesPg/Npy9I7vGDkevTF2r5D1vafVk7Mg=;
	h=To:Subject:From:Date:From;
	b=Tc3+M98YeGDju6Uo1i9gyculi6T25fI+YYid6cPdSB4kB2BvnVfrMV0UrN194l9RT
	 n3LRaCsfbsLlSSmVGNHVvVf3teewd282YBggEbuvielWIa5TmMiCxSNV8HCGr0m1P9
	 hJHEyIuvC+WTXM7qhfFtrRIdG+S8izPp43X5tsYZ0VgZ8uPwEmuy6SJ6bQbUH6D7mZ
	 2JXeKB5vmndzddIrxi4bFlpaYAaWvp0Q0DwrJNVOCb5UiFdBw6lo0FEeEusWbWJ0Ge
	 NqQ4FeNfT0Ew1VuCT18cyVTJlSCeCIwCW+zwtkqddTz9JJN7mFBlkCiFEb6Jw79+H1
	 1MJ1XyUsfjj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC232CC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208183369.23979.17818907113671199091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b4d3a2ed65fef5febdef31002b6a0dc87a89afb86f801d6388ffca34ee4665
Date: Thu, 15 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792081833
