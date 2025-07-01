Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242472192F4
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751413794; cv=none; b=pfcOc4UefG75yc7gHbHk8i3BRtiZPWefvHiw316wCWlbAyoURMEZ/nUgiC/elJDhyx70gaqENPk8wTAgsQULVS1HpUwtZooam+YmgUeY9u56sXa9ur86kJuIWm+/g3jzKixOYaeCT31fXXQDqHgRzIc8RTGGaOWvQkBL6OR6xwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751413794; c=relaxed/simple;
	bh=67iaBDZ5CwAWAjQEu02cc12mVKVoKrMOMcPntmHWT1M=;
	h=To:Subject:From:Message-Id:Date; b=Ut+E5cyA/JAYl7jWfW9yhQfhkli/xlIWdWJ7/ztkDqvszLpbn6x8OTRPlrHPlJyod/JVHIn5Cn1NZTRrMaa6vns5Or54oM5z+nJBz0YL9103ZYdsyWogd28uW5nuA2balgnzxXwyoUE/lGqqGLH6YfkryevrX8NWCXTJGeBR4y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIF8GGp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIF8GGp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751413793;
	bh=67iaBDZ5CwAWAjQEu02cc12mVKVoKrMOMcPntmHWT1M=;
	h=To:Subject:From:Date:From;
	b=lIF8GGp5c1AXc0cbSOuShuE194yuiKZJck0V0PicNL68QqcDDoqdqW1tV3Z236bdT
	 ruXljv9apgy3aUFxgOr+X/mYWA8uyeT1nApWp0dkHZV4JtltxiqPgIdH0OBwV3B40R
	 4k7H0VDYL7Z36pREf6uHqdo0YYNoPklPVgSFCJdTzkJvVxjg5Vo/LlX2yjzNPaIzEu
	 PhXj8/UGzGGC2nk/6St82XGI7KXmtq6/BLyumWjS0uX1dEGdjtRMu3nNAji9bTn8Rc
	 Lw0fyzAVIACub/TRL+w5LvmMLR0TrT7qwH03rWf+HF5OFkZuZn/zbtLjEsgOcrk1Qx
	 4cvKsfuTnBeZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109FC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141379357.16604.2042330915744530964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45040033314443bd4a56cce67d5fc750c058746ab1fa2e40eaab5d9c9cc1b60
Date: Tue, 01 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751413793
