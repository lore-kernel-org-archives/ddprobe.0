Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014961F2B8D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769567034; cv=none; b=JeZ3NqQwcKQk++xEYhg8vUEYeMRSR7t6+w5jepIDLHth4Ji7nKvhLUh1Yz9BoxasfcKjBJYp/fLlHd80tFC4ptqdvWFRAHqrU8cUat4OhvBSzLyY/yvI83oXPxxGTWaZUSrRmsfUkNiRjL5nDyikXqzOMpQrsZ7pvvZ1/iTM0bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769567034; c=relaxed/simple;
	bh=DGfTqJoWoTeoLd7HSE3q24KMiRC5fLcTF1cBr3e4sYA=;
	h=To:Subject:From:Message-Id:Date; b=bg9W8Pya+JqkWwTQitjufrFOKiZMwN5nd97U3uW+BYNfMJ65N1RmYlVaMJNDTOY7VQO+bkwUf4wmLpDIl3RNC4GAHWgKb9UaJVrjir5VxjJsV3aRCMZdMviY5ViTf/oAFmtUkkJ7S/ngMfd3PjNgl/cy0QAC6YT6LRikue71dZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Zm18Wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Zm18Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A95C116D0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769567033;
	bh=DGfTqJoWoTeoLd7HSE3q24KMiRC5fLcTF1cBr3e4sYA=;
	h=To:Subject:From:Date:From;
	b=h8Zm18WjOc+EAJ9UgE62PWi7nVYmms3zOq76LO1wDobc/oFMqAg+6u13oiTCwQXEU
	 9oGQB4VJj2eQbFr7QzaXExhB561mMsjxF6lMLhy6Dlv1ffa3tpGrNY6xKWDnEs+k0r
	 kX2N/wfvMk7szmw2jJcGjX7COzNWQkcY+Swb2jnldrFC/wSLU2kZvNORIoZPhu7N9L
	 +jSREKSoA4a2txBcFzmF91lGgPL2fPtnIvrK9p1/9SRHaG9RUYxAr8jqXlwZYxQfqP
	 WLtvSSKt3pJ5D5C3SduHPZugJcKv2O1zEoHJgC2f3yKEkUBRvBGaKq72ZWdrcJpFbo
	 WHkkud3ZoF2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9569AD35668
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956703359.3419.3983311987092470366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921dc82c11b5514843682aa8944abb2299a813adb22af3d3329fce916b80c72a
Date: Wed, 28 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769567033
