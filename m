Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE4C18C31
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737309954; cv=none; b=I4vfxJtP24st85UIn0sbFU32nhM5O3Q9HoL0k9kCEKQxQC0YkDioS+2fi0MusHhnelAvEXucz5K7Z0ZDg0yAlp+dMRuLS1VPqkXWJ7kR7DnMkTLSv5V0N1uryCrs9ZjyHaPh74POkOgJObx0ZRV7ve4g3ukm0MqistItxPlnF7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737309954; c=relaxed/simple;
	bh=kSBrHEkYPpFAbSJXaOcurWZOko4HuwBsoD47AjeFeGE=;
	h=To:Subject:From:Message-Id:Date; b=sziByecwJLoTIWZ671fwLJE0/RRUuw3J4Sy8woWmDE34m82h/jDVowFTD47UCa9LK4XExUp0m8CAuCQPeGAv0gpPY7sDaB/7X0vt+zAwQPhClG6tJc4m+oRWz35+J2hJdoeMMa3tUNLzeTPDxti5FMTauUhe73pHL8xK2yJ+6fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJe3ycyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJe3ycyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCD4C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737309953;
	bh=kSBrHEkYPpFAbSJXaOcurWZOko4HuwBsoD47AjeFeGE=;
	h=To:Subject:From:Date:From;
	b=gJe3ycyLWqn4XDP2dcGQ9IHYH9p+AVVomu+SnjmCDTZ/uX6cXZ8hcSMC4QF9YyJ5Z
	 7+mZcSaVi6VxlM58rcNVQ00D4INDSd3cGzffik0HgB415bOjxTE6W/UNaSIBrNswcY
	 xN1dl6cmfsutfGnBeRUDfK9Wnt/wjFVfLwGR8bnNuYA1Ro5w/AZmjTw9pI7fmeiWpf
	 H6lmjq/FsdP+YRG88XhBcVj347iwpgRfm4+RtMpbGa3MiHP4gA6nbiNw5czSNYz/+2
	 TZ2fc+sVdzKkFV5ke39ew7r4rvkLnmwyg69P6oFXNn6kVTOzCgME234I6baAmvcSJQ
	 QdMkaA7LwAPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A73C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730995361.13838.10932288229195913645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98614cc0c852d1ecaf861733a28fd95a5e4b6dc0b2c0ab56ef0ec787673c1c89
Date: Sun, 19 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737309953
