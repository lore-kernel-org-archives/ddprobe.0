Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E093ECBF5
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791118234; cv=none; b=FZ4ZGXVMVxi9PnDQSM8+7vFVIjiUEH0FGbluLav3Fwi4zVyKWQlqET90wBUgeGAfH/3gE3TtGmaawTUeeOS7eWn6XLMQFI/9p9Dphamc9o6W20I852bhrSMfUQpsa5hV6GgcSrwE+bSfvL4Orxj7Cna+V/PtO5RmG6eku7ZX98A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791118234; c=relaxed/simple;
	bh=Xp5IZf0+Vk1yTpKJhZGeqmREqe6sT7LgrcpXGXsoyo8=;
	h=To:Subject:From:Message-Id:Date; b=gyPJ52Tqpa74IHyNELdh+9sRlL+G+czBbfkuOqHFmeA9HGNy1ai9fx1Wl+lPM36nUaYsszpNZSnbG6naTnQgy05amf6LD/zSOdxNbgp6jAwqvXY2nJKz3OpNxlke0LBF8eUiDFfq8IR6oMXG9e6HTCp05QgbHZrFW9NJj1a1dtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4Loo4yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4Loo4yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BB8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791118233;
	bh=Xp5IZf0+Vk1yTpKJhZGeqmREqe6sT7LgrcpXGXsoyo8=;
	h=To:Subject:From:Date:From;
	b=Z4Loo4yJCtHjnMnueq+irYJEyHDc7OQVLZEKlq8uxRPyCNdDE4XiE9emGfte1UxXU
	 jxCMMaDkhJLOEhjBD9FwhB8Tlwjzlnhz1qoc6tM8IsEQwik4ikQEazJCrXSCUSAScW
	 LjwKkwDopym4WKGFEPno6Pa/ToAZZ854pq2Y2cBoJzxbAPQXyZqe+J+XLE9xwlwwk8
	 gNaCpTyA+9i7e3OEaXWHrh+UsyLqJUyR3eH4lYW7xFxrO7f+xRrXM20Fdhj0Ep+jI7
	 UsfTxtgPHM5+NC2gOmpIUi7VjU3rW+nePACf4wNjxtEfo24ANyb7cbRRqiieTxSAgS
	 +8xeJHSYNQwdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B034BCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111823368.14869.6848894471126854496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ef30d44dd907176f619725549db17ad7eed3191a1dc6dde91143060eb3b05e
Date: Sun, 04 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791118233
