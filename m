Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC77248891
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759737594; cv=none; b=Afg1u37f26bKvTp3M47XcEtPMfIAFC/FBsBLpu3zGmlMFrEBF0p5bNA3pJWyPxbx2TbqKW7shh0+WyrRmWuWIAnBM/JLLp0nBR3bFRizdrHLn2vrDy9OadoIX/c/k0QA86Y0S/v9f5lIHbmOBjH1TbL7mxZt9o/N0P1cet7dCDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759737594; c=relaxed/simple;
	bh=xyCcxWXvySNtW5cj6krArE+eKH6SRvsEEeii6eQvJVI=;
	h=To:Subject:From:Message-Id:Date; b=RrBqVlmLMVPjPhaAx1YvrUpBFrFL3lNlkerfe6dOhH8sCqF1KcWjY8bOSm2/l25TCYNRhwvcliIEx9LG4ntdz5iMaRByNcpnYtIjRbjTTb+s/giSOpUGDR0OAxrV+Ac3V3bZGvux6kvLneVSU7J0grhm0e3dOUXqCbJaF+ZHfNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTJkl3qZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTJkl3qZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D873C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759737593;
	bh=xyCcxWXvySNtW5cj6krArE+eKH6SRvsEEeii6eQvJVI=;
	h=To:Subject:From:Date:From;
	b=MTJkl3qZO9wjED9HlPJwhJjILllWPFj0ecJYNu19go5TcttVTUVT7WslnM8BlKCxa
	 sO2VEtH0sEuH35Uvwqnu+vQVmUa53cXC0Z5hRvvYBGWjOT19uxHbqS064vrnc6Bjp3
	 tcHjBjVG8WVtWaQDzOmkZtP+uhbjjeHhBPafTTMNqdVkR6WGvpg5YYIw9YyXYUvv0/
	 F1QbBGDZNYAfBeSBy0C9BfE5Ye91MGU9Cb6WjliQqipxhyuQvkB+cVgG5wRMa5kdbj
	 eN0PGjiYOh7I4IG9qcrdqb6awOG5VNdOmrkqNlfMjiiqqDXbi3Rc4gbxFWelA7eOOi
	 r0xRuqlz0VOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E598CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973759357.9957.7762638878572368322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2df53f431659128141d01a3513950fb5d09758cd57f455c3a217b8f69be3ae4
Date: Mon, 06 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759737593
