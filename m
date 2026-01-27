Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7292DB785
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769528034; cv=none; b=lhauO7i4+b34Pjm/852M9DqqJ4RTgZ3By+Meuzb1qDuSGEXdq32C4gea4BQPR6GrrZ+0Z0glf7emcoslgtk4Xb8dFBXvKq+8DTcyW9oht+2BGyqiQt7XiwuNWSOupKdo+VmTQEeAnSpdw1j5yjFioqUATPfUc2ihYc6DGocl3Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769528034; c=relaxed/simple;
	bh=Wdqglh61q7T4Vdz2vsYwM0riq56XBhyAEy0+YAQnhNg=;
	h=To:Subject:From:Message-Id:Date; b=FFKOApZQu5LETkZ7coS4IHlQ+cYzvjZ/jtzZ4p2HjmWjfF+ko4ouWcXZdhDLTlFZkfjQcWMxmcPMwSC7CvU/QYmeZSdKDeVaaiyEaCydf/I69gA3MthqtTpy18V5nq21RymIteC1mQLoMNoPpfBNyCWqjK/7VNT7N8sZHzDQuuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZRtQiAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZRtQiAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E15C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769528033;
	bh=Wdqglh61q7T4Vdz2vsYwM0riq56XBhyAEy0+YAQnhNg=;
	h=To:Subject:From:Date:From;
	b=OZRtQiAwcNmvS52vtRuarmNGeEaZSlqVU86SRj06eYs+aYWsrAfh8X5emNxakp1XJ
	 zvASEZv0E4pUxuzzq2MJVEs/zHjqPIu7jlv1lr3FAYV3+4m3A/a2h95D9fT4GJ+9xE
	 wJOVTduaSk6RgXtZ+3dENgL2RBVyyul5AO9Bd6SCg+B/ItAtehlPDsIW1OD3HEaVjx
	 yUxPn08gAaGBOg+H7yh02xDGKVQg2ZoIkUM7/EzUPD3uuuLvfbpcscZAha1yIsfW/d
	 lPYmuOeXmBxc4bxF/4IWCOnx6nkv/37zu4bhnApdRi9HovqfvFgJ5nlDx5q22irpjz
	 tG9Utsx5USSKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208FD34088
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952803358.18662.7002542387489302520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c654836d62967114acb5a53d6c231671ae31f6b5bfa80fa1cbebbc5f3a597c0
Date: Tue, 27 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769528033
