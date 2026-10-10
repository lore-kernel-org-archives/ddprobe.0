Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5059817B50F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791612034; cv=none; b=MqT9KQlTbwaKeBX3JnNer0Zuvji6F5l2KJZ50AEfYgX52qStq8AeRaJKTxrmrGHKMGglcgDn0ad4g5Kpxyj1akqZYfSjlKi7KK/ickW6GqMNf2769rutOqIHXRHk6q7XVd46SPsYKta9b7UTN+yK1QqnNU/e1XDVDayfC5zzIj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791612034; c=relaxed/simple;
	bh=dt1TrYhWlUUQnzfKOviDj0I4GGaIvzIGd57siGg8St0=;
	h=To:Subject:From:Message-Id:Date; b=sPJd4QAS38qO2ByCMkjdWN8GgF+KU812BSd1yg2THIRzTK/LQoOnFG5xMVwCiPaMRrKX7vNnVWD5o0D1Yg6O3EiKjinWNUP8+GxnfSCz/m+2W5tuCK7dj3yPf6VtuhqxIEY/7KSgq8vv+yjc3yJqkp6otIQPpAabiF/PyZZBLhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLUmb/nN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLUmb/nN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2054C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791612033;
	bh=dt1TrYhWlUUQnzfKOviDj0I4GGaIvzIGd57siGg8St0=;
	h=To:Subject:From:Date:From;
	b=XLUmb/nNUFvgiplRQtIY2locEPM5xam8qDk4Tm8+JiL1KJNVysuBX0yf5CwnqUGHd
	 Y5pnrCsa3WVTqKyrN/aXHpR6knrfVSj1Y93Wun+45lxSgkNxxupA8GjqS5QdSdFyXh
	 I/b5CswR27vREbQrFqZzbrzVm6ifzVgBwNwe/GM7YqvpLnjyAdPYEE7OztG8/75XYd
	 Kfzx4CMSnaFTXf2FvjpCwG/20wyNliXyckIuK8dTIKcE9VWVs1PX5c+o4t5hxDOELW
	 bAZ/YZZjoVkDBfSWkqaFvWn+ZfpAMucs0oMG/ljEj0hH4SBj1B/Xo53eeahyhFp92x
	 wSRgpQ3GLzZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA1FCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161203368.20526.6562182369834841613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f736248c1bc1c9ab249be64f1c1805e309d9a920a49606909c5004a9bb1fd01
Date: Sat, 10 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791612033
