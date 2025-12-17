Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD02321442
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765992234; cv=none; b=l1ku6F9GKVReYEgMr7++OVs3tQ5enrNbrHmtrWImbVwhVMjcm3rbUFojHUDKNYMCfAiVXeTKkURXrCvyHQFzUdKzZgs8K5pUa7gTqXIx5cPvcGwOsnn2tTdmJnH+M0toFdbaohDluhuYlD4YTmNpG0+riuWy3b4YF4okiAbZAuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765992234; c=relaxed/simple;
	bh=AyTHmP/PAIBpbDNGeN3UPsCOeXCVVBmvlqpq6lhkY0o=;
	h=To:Subject:From:Message-Id:Date; b=cXR15/wgeob1h8xdTpG7bu5afXUjDNeAvkXVIinVjFKf2hiaG4+agBOCBMJtBqxZ0iUu4CWgVmCPjG3nob/3dIf7AcGka5gy/DpVBfl9OGRuwbm6ESl3vEEmW7oSDLc9D/kCcMBx0pwv6ztVk/wC+Fu825Uhmdbglt0Pl43JVuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8ogtglw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8ogtglw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB8C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765992233;
	bh=AyTHmP/PAIBpbDNGeN3UPsCOeXCVVBmvlqpq6lhkY0o=;
	h=To:Subject:From:Date:From;
	b=s8ogtglweNfDB7f3XgHNHvwZqnaCu4d18EZor5XsxEN20WeLemhW7n/HXx4jRZmHT
	 jyun3EGAzlzp+5ZurAP3RYwRjPKkF8rNHXyZZ0E/UTS0gERuCcwxsNjizvUF8VLHda
	 OwBvyncA7qgSrUn0eYQHBsUNzjqQ2arSGwZgnJy3SJ/tJvuUTSOb2eWmbBd7imP5cv
	 xRYfC73QrvZlPfIcCSDEoStvsp/dk3KssulTWXtma9uA3yurLI51uWkWkzUymvbJVo
	 +wfMGfLYc6DZ7kRytXNUTJHnsGEfbQmFc65PNUD8zyir34fevi3jAIH+0q8wcXWqQx
	 f/hGuyewVM2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E41D65C7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599223360.22936.6467838545790679447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a89487dd639e661674b48fcfb5d7dd83afad4ed704353f4091f318fad7dce7
Date: Wed, 17 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765992233
