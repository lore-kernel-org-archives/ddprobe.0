Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D06C86340
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761026994; cv=none; b=ekwxEXykdn+nbW+ABOMTw11zPPUyImrXDioqvrZlmNMJNqqmNwJAk5qOE+gGQBSd1MmauxM8vvY1YUs3WFgAphbgeB4k35+T2sKBOBu+Y45F2qp727AkDsVulNRi3nI+2MKoKvDzrKOdG8tWQL08u3MOdnbjmuq8YzuoTjkqIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761026994; c=relaxed/simple;
	bh=V40PcZIh7oxSBo5T+ktnJCuQXOjHq2J9XkfxyEhE5Es=;
	h=To:Subject:From:Message-Id:Date; b=UDGEzzHcOaEpc6d8+xcDw18RE7Fu0duXLC+yWGHxfHi86ZL0WMcGv0p7QnpBNlDkux3isfxKE/y1UKlIeuVHNyjOidJp7m+VRIPabSJArq8twIw+pgYlMBuGfuDrIUA3CUJLR4sf0DpQ3BZsNWete6+Y4j2NpXgXbjx/k9usXpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLHmHRxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLHmHRxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABDEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761026993;
	bh=V40PcZIh7oxSBo5T+ktnJCuQXOjHq2J9XkfxyEhE5Es=;
	h=To:Subject:From:Date:From;
	b=KLHmHRxZMqVKl2F8gEjZj47wDVvFSOJ/2+RBL39KIBLo3PcfEuXj6LokPbZLCwdYu
	 Kv2viH7Nant2a3sXsIDlywAKsM01fPbAzTmw4LSqOreCu10PZrXH8T/DipdY0no8z4
	 CyNKlDF9q5RLNah5khKf9MK/lmeEKrqorPSSHkjBh7/zB//b2rcevKV6oYSDQ1STvw
	 YsqYUSoLU+3TW1HusIqyirMViSTNbqwfgiT/CO02r9a3j3+Pz53/eEzqyLHesoNfgq
	 RH0QYGZxykrUuUhXA295pTC0Bd/bh5fN2jTAj8I7C4dwbH/frhD6AT+Sbf7Bf3h3Jn
	 qvxqS94Lxkh9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F02CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102699360.25532.9383370813292716587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1493779b56a9a5d4b01e8fa376db8c8e60f37e56480235a79a8fef1aad73f14
Date: Tue, 21 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761026993
