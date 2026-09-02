Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EF24ADD8D
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788378034; cv=none; b=gPacLo/TwpNW5y5KtsTLwqoim1fgzByIRTg/EfXIQ+2U7HeD+Tjhj/ke4IBncGR4Qy47KpAuTbA779BHB9Z+KCp+RGO4JnmZOpi3uwA7N6bx+B4ndZr4r1nmQXOJn27WgA/65OmRazmCkKQPpTBpgmKK/BTT/JVD34WOUsbQQFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788378034; c=relaxed/simple;
	bh=Edk1KaGYS4drnhuhl7N0i9owRzJJAjr+5pFfWgsmN3M=;
	h=To:Subject:From:Message-Id:Date; b=ZxUkPT+x6pUzo8TnluYfmmwFzfZUugW+JTmsyI0CXkRTfmy34N0pdWaFmuFxSa6QtqkGcu79NK//gdcykTK4xiI0EIl1MiAM0UN0txJVeZf5J27XidXpTjydDvRaJl2nqXDZBHaT2RUCl4qTGxxcp9YV/Oyt092g5aLCKvZOygg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaDP7qaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaDP7qaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE442C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788378033;
	bh=Edk1KaGYS4drnhuhl7N0i9owRzJJAjr+5pFfWgsmN3M=;
	h=To:Subject:From:Date:From;
	b=DaDP7qaqIQgDYl6nQ+T3R12fkJXQyjEia4fbOa3D4m/Quwn9QB7f7rJetCgVTP7wq
	 7QkhK34L+oahot9TBVppLjnWC9bUWZQHasLf0bWhHFWC8oOeOnf7odWiAg/Bh2HMha
	 6enDjmXDl7gHvQhLZHjzbUvc4tldlu34+t87dxeMUzBNtFl7QLVfAX/+KH64sQ5phS
	 am6GIuYjsr0O+wpkt+W+nE62pVq/CPpbVBSJ+Z1KeBE2VPEYeSvP8AGfBszlJR6a+9
	 9wZ5b4atdwW46FDy1W2XnhK8v03pQ9yVgbYQT0E+NLT/YVaFgNXqL6apYhbeVptpoq
	 VunwRZjSc+Prw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC657C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837803369.11553.6329253350291950443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a662a71619f280e970ea403c17d252b0c01a13a2178fc544521a5bdef7ed1543
Date: Wed, 02 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788378033
