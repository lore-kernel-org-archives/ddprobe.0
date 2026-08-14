Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703D52E8DEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786669234; cv=none; b=gt24Y6J0+0jl+0wey/pCIio5+YBy1CzWFbLkvX6rgRpz5VpYOINNhpy129PBbvhyn4KAU5pw7GwkZkLBnjMsctLN/n61Ur0vXOWQNHjUImbMs8VUhqF4RaHv6q3ER426Q0Kxpjmw1NbFWEAACMZsKIP+UZY2PyhSO0h5hvz3BkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786669234; c=relaxed/simple;
	bh=sWfvR5hKnHfFLM6zlXgiVJCwJgeyxJIPKR7Qtc0p1VU=;
	h=To:Subject:From:Message-Id:Date; b=eL9ZzpYnRjqC8oUHepGUVidISWxUXDzxI+z2S5IXmO+eBkm1iZtv+uIgIiSxK0TOyBH8UDIQzFKiRzZDwNcxkrx4UJVeMG2e6BMSSHaEluuY2Tjoli0DVdVtVothkwkkHA7Kv+o9UZvNe74fCNOvGDQOqbAYI9RHFJqd2hEyoHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YI0jpJJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YI0jpJJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D85C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786669233;
	bh=sWfvR5hKnHfFLM6zlXgiVJCwJgeyxJIPKR7Qtc0p1VU=;
	h=To:Subject:From:Date:From;
	b=YI0jpJJ9JuWp5B61sRDHn5X9ozro/87F7V7E+GzrNKjYuyFav4rGWEK8pHMFV2BEN
	 NBdtxUQ5lB1WBT2Cz8tIAletdoNyGGrONwgl3WYtv0kCmBslumhoq0QPfb/++MchB6
	 BFHK4BSH8ot9ov7xX7kPAnhwAU0/Vf9+q/OZO4yHPzOhzRY3DU+aoYqKbCALXc6Dcx
	 fl5nmxnOLeK2o5lb3O6otywQ0WU06jhAUguchVTKojwBAywMM6I39eq2gaPmCBgRdZ
	 IVMucXeryUT8QjpGYMaDzEJ46/k+9EznUDFbngVUbs467cGnpW9QfkSlc50njVD5tU
	 uylYti3PqwNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB0CC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666923373.10843.1785802790610138413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f678854619f57f9e96b19ee55c241f5aa7b450d9493ad55f3072427dda56ef61
Date: Fri, 14 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786669233
