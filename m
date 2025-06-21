Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA2230E848
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750466394; cv=none; b=HOMRwhIhqOuxsAho0boEM9dwlqOLfKcZYW7ivewXaUebvV39abohNPRhUvWRDsxPPzxg+9i//FzGhACdW89lY8aUIxJfu6EUeZis3ExHKecBXVZEwEYN5/K/Y1HoxxQbmVN982Qfkw7AVavTSmxsM6WP1dbcj4y44NNb6AQupJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750466394; c=relaxed/simple;
	bh=6O1bzcE1N9UMUGf/AclgBeswnmDmyG5NOTSsI1xSBm4=;
	h=To:Subject:From:Message-Id:Date; b=lmDBacy/yrohFyldUTV2GPyFuc1Z1T56bsNl1ej8rVM+QRZGc/gKKUZCmwgvgHFdnANNu0YzL578SMxURR3rLXX+OTVhDNgbRCT7MiRfdcUnpzHrdzP/UUG1XnASGq857a5jqfwASL5qNgcSS9FBY4KQSkiLlDxHt/pRImNGuMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofN5FH1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofN5FH1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA552C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750466393;
	bh=6O1bzcE1N9UMUGf/AclgBeswnmDmyG5NOTSsI1xSBm4=;
	h=To:Subject:From:Date:From;
	b=ofN5FH1M/4K8uTHRhSTVGx9/AjKJtWmHhj1XbKhpcP/6zlaXpulVGZmvG6zhT6lUy
	 iYaNRKk0jwyWCNfZZwRAUJa2IuUXd8G+33Bo8hQK8EJ0xEg/rn2TUGoe2BWTVIyhFM
	 A2hQh67UOzcIpdQmvl3MIuFZgIw65dp0Kro6dVi4CrqdjqhSpTTdq+ReHd6FZe2Kkr
	 SucMswtkZ0nUGgwG6YT/nrMGY7Ra7x7ILPRY1p0ZiKzkQaLwNYjUMM64lZKgAZc4F2
	 xhLJboUSXT+nCX2Qy/EqfW4vEOzz49+1by83utcO4PkB+/mctdIYBR8So5cVwblGpO
	 Z84bp3FK7rqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868EC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046639359.1153.4682558834258550586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05333750cbb3385c9cf52a645b8fe0ac9e5f9939a8fbd714dfdbabc44091357d
Date: Sat, 21 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750466393
