Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449D38656D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782897514; cv=none; b=pgYpVnVxaGDUO0jAQXgJN7OeRa46pv+8qhCBwuuVxpLQHQ/+76EaNYE6Z/boyWobXUz01ujGQW5FvOz7+Bsu5appYQuCkSc0lUygApOPOxzYtiWJTiNlcIZ2nTgs50XYgTCLuq9ZygQcPmjnDy1ZuXf7C+4XVjzfPHZr/NTVqiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782897514; c=relaxed/simple;
	bh=Un3Bg4YjPyuE0U49xk2Q6ZM1qLC1coVrAbvrfwDy9N4=;
	h=To:Subject:From:Message-Id:Date; b=awgoQVL2aXJ6D7y9g9MykaAFLr6nC4EBARAd9C0pxuU1gyarPPT2L3PCSW+I6KaJQvw8OJcTejZ+nCBHXShHoHW65oFkAUxKLfvmD/un+FpwQnMs1FSOCQHluGD/x6bE61s8pBd8NGk8O9tm9389TFdGoBmA46MdWRXM1E2KmAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T829hZZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T829hZZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B8EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782897513;
	bh=Un3Bg4YjPyuE0U49xk2Q6ZM1qLC1coVrAbvrfwDy9N4=;
	h=To:Subject:From:Date:From;
	b=T829hZZPOZ3cOtrz7+OcIjF6ghL2AVJCjsPuwrbz6VHMQYy+tLih1GJpUXK4sMyAN
	 iqhEVdLUp3kkEmbcbUSzdRTS7FM6i2RHaDVTHxuQ0nY6HXuCx70lVn4PcmhsCWbIBC
	 /dhau7pIa0xv9y8WIFqySEpFEmxCbJE3SCpo/CR0ST1uxajxenNl8CKBXsulA+9voC
	 HJxGRr8eKehZyvHzxk4guXWR3QbpH2v+CAAtqDu/NV2CsMPTIplM4AnOu8kCGr36oV
	 gurcTSYeZ3eHszzNT/jaBbPTw7FHd46GXlJVz+JjnhCh5rAHlIuK2keE0vvck3Ce0b
	 nucBXVliOPh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B02C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289751368.12092.3375857794486367294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c931e157ab508a8610b79f9efb5972cc85956c993eb8754ab8f073917239cb
Date: Wed, 01 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782897513
