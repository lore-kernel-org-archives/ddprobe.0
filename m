Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3933AC1C
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747182594; cv=none; b=q9Q6W44IzPFwjt8nA8pThibLNBR57Sv3xlGUQZQJaoONEE8wxStySs3GEfPIqBZ9K7PMOuuk9kwo/7O2qgY2FqwBe5zKnqqJMZbE4mQBsdOr2HFPtxztQVKiuiVxZtYLqEj65xh+yoI/QudYTcTZVoWaYSveAllRP2wJ2qHLQ50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747182594; c=relaxed/simple;
	bh=6wl0QEnLKmwtzsr/phY80bBsLklSXcchNl2x+0/fvSk=;
	h=To:Subject:From:Message-Id:Date; b=GA7A3bQjxdBkXyLkTkV5eN8kaw23XjpRChxtAFe3UR68DEHzEKFMoaGu3QV7oaRzr2nYcJKT4qszUW0y18jp6LMwkJKWtas/R/LB3kR1g4FlKUiIeki8rn1EFo/ysSlJRfMoI7s80lrbHiKHaHr6T3E91COOIV5ekFIwcZXGdFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkXz6ryP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkXz6ryP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F4C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747182593;
	bh=6wl0QEnLKmwtzsr/phY80bBsLklSXcchNl2x+0/fvSk=;
	h=To:Subject:From:Date:From;
	b=LkXz6ryPA1sHipppjEaGilg6oo/aGCZqSYNpCxCffXAtvVYCuXZMvjvQ8dG5oQCZg
	 tqaF7hAAoswRQHfIaFXxcECk/N0I3O7GqShcs0SOZ49GWO/PwMaj+WiYEe7JDz0421
	 /HJeBO2MwndHa2NgWFX+YbglQN1jStT5Py+go0DSEe5bL6MmkLdW15chEbrdag1c/2
	 KoPQKJQnTqMKpoufuXlwCHbqL0SXaJmNwQ8u+IsQpuddhFr9ye1xaPYebmfBA0tSjn
	 pqqDGg2ikEJQ5CuF0EeZY364fxzA36ZDRIr2oMLdceFpYYD4N+3vCn3iVFRlhpFBFz
	 +apXI0GG3ue2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95383C3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718259357.12932.1923397057352678455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c7505025c25ffbcc98ad40675597bfa5c9e5a969fa89b092290f0cd86f8093
Date: Wed, 14 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747182593
