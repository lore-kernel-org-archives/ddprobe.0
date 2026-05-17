Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B0E303A07
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778982034; cv=none; b=Ud552aLfLI1myl0bSUe1vO4zoPt0ybKeoOWEn1XrbYtJbUw/L8Y6gN6wjjhT/HsoeLTlNmC/eZTxs5m7iLFNwVfExhoSgfKdGz4NgX5NS/F9R7MaE+k1aAVD+bvxOCKmRc22vRMuUdyknJgT+Xlp+Jot+hr7bynpcZPontaZzfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778982034; c=relaxed/simple;
	bh=dT5k6ZH+cOWnThj2aiFa75ocBopxWQ3F+XQO+pljN9c=;
	h=To:Subject:From:Message-Id:Date; b=HwAjgo6R6YqHgSkPgfojP3EoblB6RYbxy/Qce4Lj09FcFwKX6XOYgdQugXvxpQ+m5npCj8J04HCKc4yo3v192flOZ+LH0+sfaczqxPcKC2SDt7c4lOyjeSDmDG5hxfyXrmc0V0zTN3L9BNL+TfbtgdVufwosaRVg7cPcmcJ+Vp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOZK+Zjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOZK+Zjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB749C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778982033;
	bh=dT5k6ZH+cOWnThj2aiFa75ocBopxWQ3F+XQO+pljN9c=;
	h=To:Subject:From:Date:From;
	b=rOZK+ZjlQV1Z9EjfaWQXA0ZlQuS64m2Add32GwvxcTB0w7+J7wQF9v9qDcpe8I6y/
	 nm+HKiXuSiaZxmwZYxfMq4OKIMh8wTHth5uumKz+FYE6ea6i2h21pzYVNqdx3K79yR
	 MlE7ZwlSrFwv7GV4XcI3yJXIQxirz/IjKqQcvoFRtRkC0IKYbr95QHwhkDoApvJSOX
	 ItkUjuornFLmWT3jCcDGS++kJqV7jYW6MvZKC0f0zkczsLpp7J8Gly5h8SH1rZtqCn
	 Pql9Ge6LywXQ2+ieGofokwtVk7rRF5pRVpdU/p+zS/356HQuBhzEkxT8G9pGRXCHuA
	 vmhmVfHLjZA0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92DCD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898203368.21355.7200730697131012184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4d567ccc4619826b0bd2e73682858185d049c3112fcce205e47cd20c01da2c
Date: Sun, 17 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778982033
