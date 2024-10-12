Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E22D17579
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728755754; cv=none; b=gKhbeC+vmeHrh8M2CjLg6ZucagYzhCmDZ+uzdArFIhJ9icIijm5kAprKoEeZP+5N8TeUVdqCC84CD+1HryexLxXIlRlNvE+995qHxOK1MN5QwJCz+FK3V77j+ToxODYAfOF2AeWEx0Q64RMVoWUGp638CI+uQuO0Nkc00jyuAW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728755754; c=relaxed/simple;
	bh=8mvNde/2eQT/SXy+SYKuqLThbn87BQu4kD7vTSipyaY=;
	h=To:Subject:From:Message-Id:Date; b=WCSVgwZ2rOs4JfgqC8p/Z1JG3jn0K2Gd2v81GU2t+OJs71B17OLkQYPprpDJ6L+8l7kFjCQq5VV9rG2RhH44/p0CHu4LeugSnXYbSOiykzzqsPnPKkiEcErAJqxMk35WGr3/TUOXDRBEOJ8TiNak8/qWHx7iHFC9J8W7jHdQzik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQLBA5DG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQLBA5DG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF38C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728755753;
	bh=8mvNde/2eQT/SXy+SYKuqLThbn87BQu4kD7vTSipyaY=;
	h=To:Subject:From:Date:From;
	b=tQLBA5DGpOEpX3N1N79gjR14h+LBkjv0mJAKfOnAfGp7TclTIOw4ybASbtMXZ0dq6
	 WVTzdG1mKYG7pfZtgVo9+tRPUNDm2u6+QUr6/L84piUUvAHe0v9CUyCrLO3qgOsSap
	 ol3BW2pUPYSZhKftHBimpKZKA4JUrQAgKT2wKn0LgHrFvTo8NZSd54pQdprHwcCC3u
	 6alo3/DKk0NwiF0Ldhrr0wLQQinaV9bCDmqFWJuBX2wsr/OL4ljzVxEdyQkXPfhUN2
	 GoqfSR6e7CeRAeDSUo+6NAW7LG2ldge+dhBU1cZlQhSS7ewkZ2xvSjrfqEXkvFSAia
	 IyoXh7AL6CVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA90CF2572
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875575359.27849.5682701594863109199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7316aacc8cd64fe1f6fe47f6d95363694ec9b75521af73fa5a7921d98cf7629
Date: Sat, 12 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728755753
