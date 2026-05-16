Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A151A681E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778902234; cv=none; b=gdEnV3DBU9gkWoMOm7gnOKdXsVnhZyhJEnOS1c9yC1V4J8BD7Uw/XOHmvw+N8aGDy6PSLifI8zsoX8zxKLUPaBkH4W1FHxu5JwZ71efYJpg73kVSs0loCBp9mn6dFX5hmV+RsrfgU3m3noTXV00+xMAszE3vUOZFiUBtPXTfbcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778902234; c=relaxed/simple;
	bh=De3JcRYVMpfIH1cbBs2xity9V705dIWwFYvBTmBKRpI=;
	h=To:Subject:From:Message-Id:Date; b=kjAKi8BxTTb114F+w4LIyrpBe9/nD3Xr0dkDwBz224xdzgqlaUevnGL/UsNXDLkibNckCptjgP12NEGYGWOcEsJwrr+FjaV8/NX6E/G8vph+aInVrnuaO2UykT0ccVzqie1vY37cIHrgqT6BwRZs14iKZGMmzSKsHB8KoAVtYLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp3C3u+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp3C3u+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4119C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778902233;
	bh=De3JcRYVMpfIH1cbBs2xity9V705dIWwFYvBTmBKRpI=;
	h=To:Subject:From:Date:From;
	b=gp3C3u+5Yq7gbf4qJEBdLu0nUfgcrzzO+U6fCYT1kgsByF6omugHukF7sE5Uizs9t
	 mipQXY58pmonwrwN3xvxI8NKHl59lk0vluB1AKRyJJ6cTIvY2kGNC0SnDi09JxI+7J
	 /QTzNxQzEbM/3qIhNWFnqwJSeuBGuvwBnzF4ojMyPeZRyJ6hA9vAqhGB2qgykTSag9
	 zgnqByluqhu4FCbmypZl29AZaCk7xhBYFqZTYrBctZE47x627hhzF3R/F0VSl6Icyx
	 dJb4x/egHpdG0IhT1e5qimmO/qujDhziLeiyTJei7CKswRwePmNUAP4HrD1//c/56/
	 sDwwE/KSAnI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE48ACD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890223369.14481.400298070341069801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303a124d30eeafd5306f319ad30b6e1b5eddc8b69da51c7ca5f2bb4a5182b970
Date: Sat, 16 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778902233
