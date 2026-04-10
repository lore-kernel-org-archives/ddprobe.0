Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2752B3E1D1F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775845654; cv=none; b=T+VFXcLkbcKA8UWSJ11fenvhmlORKiq7+xjQ2gtjwQ0gOPT9bDkRvzU/dicr5M4RsqJLvsmtQd/txPEiiO1G0HNvl4lFaT0wHjBV4ROGrI90UQmKuKeJzUTXhjGJ8AkMA5hKX58fNQBEBk/0zC0FqLAyXu5o4wvMnf7BiZfnChQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775845654; c=relaxed/simple;
	bh=NyoWgmKzwf2gxhICowkSqlRH1U/tqT/v7vhKyxY2i1M=;
	h=To:Subject:From:Message-Id:Date; b=VsWxSdXjc3PiL9phGRVxO2Bu1cHRrzac6uPdhNCpeDvK9RLLAdsEty6CvBmazpRszR1PO5Hr7E0JtYNLH5Mr4iQiQh8DREpYXa2Tg9tTxHtxFQ7NDaZwz6rCMQShIyLBJNIHXSfNemmsV78cnUZvMMTyfGU92n2TialeRsu8hLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHRu3lfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHRu3lfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B97C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775845653;
	bh=NyoWgmKzwf2gxhICowkSqlRH1U/tqT/v7vhKyxY2i1M=;
	h=To:Subject:From:Date:From;
	b=kHRu3lfLL1lY3s7eJiVfJi1D4QB1RRHJ0VULRuYaLhtzDPtgk5HRC1FnBjZvX1Xy1
	 XvgjXgdx7A+xp3TJ3XtBFd8cX7ucDF623Ag6eZfhNT0XJRRKHfos171qzTk09nUM6j
	 q60NhaAOvLy6d1O1rbRhXiwTlNYj+p2PSaorYrJjXLqmIG7H2EQdvHSvDp0UhF25UE
	 qgh8zaJzAIg09FMwdaZXYwhsJ+OQLv1ZUOkda2apYxG6FEgP3TVPUjbJ540wQBgvBL
	 15okacDx/EwAYfBiuL/kivmFAu0iOsmJ0rjTcJXht2Gb1fFb1ZWt1LGYb5c+KKGJsK
	 cSQH0P++Gaq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD42BF45A08
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584565368.25146.14722532428170152630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f331243fd5e34a6a49cb7606f42ed197607b9ad330b1b1694a2a3534480180d
Date: Fri, 10 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775845653
