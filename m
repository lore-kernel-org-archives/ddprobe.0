Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BA34A1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737656754; cv=none; b=tCl0FqIuaJoicdHt8O3TIgfK2wcGdCaMv20U7uV7y3/rBaL/3Pe3qg1L08ukOYq3GuKqiq/QqR1LajUozNWTNNX3LHK8VAvuW9L4dwGEKdnYpbS8lKTJSenNvHId0lWyZL88JOUphaPrOXtumPgPyxqUTaHKsSaElGp9jtWz8UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737656754; c=relaxed/simple;
	bh=YYw3XaVYbrixGenEtMLplEuWarKZtK5uUQdZ+hbcO+I=;
	h=To:Subject:From:Message-Id:Date; b=ftt0Q2gjtpT4tCfOwlogeAmuRUfqbqHUb5/IqHD/zAOAma6WWedTxTt4kxvEo1puBjIPa19EsSiBO8MUMK9ASyzuwphUqvwNwClHgdHiMMFG9wN4xw3TnEUwtRoot2LnzQr+aj5zXZnKxpT6ztBxHo6k5333qNlCvRkKtfva5pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1UTr2C7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1UTr2C7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC33C4CEE1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737656753;
	bh=YYw3XaVYbrixGenEtMLplEuWarKZtK5uUQdZ+hbcO+I=;
	h=To:Subject:From:Date:From;
	b=p1UTr2C70he1ux/kxdJIiNVIDil9aEciQOlruhtovw5Qa18NSp/++XXReFDpSvieu
	 z1lSeYmm4BB+frbUEZAVOjlutAVxggwTZR50boIHdeZSeac1i46gj99gHQensxPbVx
	 ckOZtiUb72IxvELMDLGtzfvKhEvI+7S/6gXXLMh/L+cXDk0R6xiIykwswrxPWkrFof
	 40Xan4puzEh42i+q4Zbr4YodhQ8YeGrO9wjESg652oCyQHRUFSo2roogCanmayu/JX
	 kBGRVN8A4wsAsBBWLcnIK4/fMkTZieBUyvgrkjXCQf5mmG321MlDPQn4TLIXOlmuCY
	 EJK29NnnU3VrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AEFC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765675362.15994.17834739307999103726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f1d586315cb259f4753eeb480bad2b122842ce741c30e817655365b9f4d744
Date: Thu, 23 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737656753
