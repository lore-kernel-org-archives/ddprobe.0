Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067D92745E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766189634; cv=none; b=F9ZXCKKrUCUPazBNtvMBI48xKenzUWQ23VunGMRjYZGQy53atIhGXNDNEBY7J+w2xfhBwVYlWJSsKAAPK0spjUt9MzXZQDG8skPM84eW3SxUzbUymhT8XHf9LpKuvswVpddaZeeF4KUdRCGpdQhJtelzcWrTOi9LpZdhY3ZuNuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766189634; c=relaxed/simple;
	bh=hhlcgP3jWrsc0s2KSPi8hsyHqaDCsxyijOX6/eD+nZg=;
	h=To:Subject:From:Message-Id:Date; b=pdDWe8/kmsYqLHy4WIE8ki6Ft1H/X25kTKMlIo+ub1xdEpRqg6An8o056MiJZY8TexkqB4Tici/WA4HHhi/217YgapvY8ginrbrvfm+78XNLORcx93Dj2XH1yTkt3OFRaUcxvosjqvVwEOrWdGe/S666Hj8QiIJmUjIP4SqfkWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXeBlb5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXeBlb5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F25C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766189633;
	bh=hhlcgP3jWrsc0s2KSPi8hsyHqaDCsxyijOX6/eD+nZg=;
	h=To:Subject:From:Date:From;
	b=nXeBlb5em3P49e9A3Iuqos40NK6ZOgrtFVqxCw5RYtss3lsqeP0ofvt1fAyvWj8O2
	 I7KKAaaqLMRpWACGRdePUElO8tyHHAl7HxbnqWAmPjRJrERyGBNt3JrfTP/o3Urj9s
	 F/CicVxbk2UgTfk6oMo3MXpx3F8JNg1gdrEZC4ob1zQy99XVHfzm0kaCao/nHGzbBG
	 opvbU2FZHTgdgWdVes6GAByzldK+SlkCXUpM4EGc2MtwfyJNGJsEH2HEb9Ce+CgcOD
	 XgRtQQ0IaCyqO5C4HUidA9Jxu5LUBi+xWC0QQC0B4zHWuOt+yC9yHpAUCYEjR9WVen
	 oNrNwS9rItUYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927CAE668A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618963359.20731.2586385125315760129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29aeea6ccd064e47967903cde8964513bdd9819536d4393d41036bb848d8c550
Date: Sat, 20 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766189633
