Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F941A680C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775941654; cv=none; b=gP9oQppT9iFoiLLHHmwA3TaAIKIwwtXJCb0LeOpARXYdnuHuhwU1zONrOEGdugM2Ngaq2uLaA/ge/uUr+n5IYsPmsegXfaxhXluAHFOjAnp7JXFX2PR5BSqUJk06ubbDUtS8lTyfPN0BoLYBfAH4HcRYzxqFY/WSVmEnKtcr6ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775941654; c=relaxed/simple;
	bh=KeQlz0h8vbYLvCuzBhpI2+eydgNn0stzYj2uaRUitrs=;
	h=To:Subject:From:Message-Id:Date; b=G/tkb4chsL3vIemdRg5pKUbq14cA54qaddyctVdgu1PhvaM3kikG1iNlcn7iNloSeD5MdcfTty50VJNMi0GpuQAjt4kmeT6vqjzOeOlERdKP69yitis0Rt+eyTQLL2qivtZPiAz/mXpmVrS3W5XZhUkUE0Z5wR4SUoJk4nmB8vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkAu3vBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkAu3vBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1136C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775941653;
	bh=KeQlz0h8vbYLvCuzBhpI2+eydgNn0stzYj2uaRUitrs=;
	h=To:Subject:From:Date:From;
	b=MkAu3vBsAU3eXQJ4xn5DY/QtP9Ag2yjtfA/NMraF0FB2lb2jqtkK8veWMfedMwUa7
	 PvBu9n67SMx6An1gAlNRIZPfrITHi4XKYrlaY8R2wrGyg8fEOeJxRfinDUx8uCQjP2
	 lyMWdyr83d3vlnTfv78WPpfFwnRzBRnKN4EXPFfiQCKHHtxpaiNDeDPuKMXA28w4/S
	 dcg1uVZYLU5fZ4DC8tUlzHlZIS9FAatjoUtITppkVFdY+lF0RcDaVXZL6oLcd2sODT
	 DBc/zJRMLnKsNk3436qN83qzEkV92hsg1IO7UMTQpfSZyjwKj4Fp/7zmrXNoRkYy9q
	 AIEiY3W4NKmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF506F3ED66
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594165368.23660.10246703467799913191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efe9d5a330d26f9abeb57c357a268bd9c8c9e79dcd495dd83e7b3389370e961
Date: Sat, 11 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775941653
