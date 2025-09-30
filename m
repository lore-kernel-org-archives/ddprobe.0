Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D2D18A93F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759241395; cv=none; b=EbQzX6j4jPM8wq9kcM0ejXtFBSmVxValjk1njtrVnQS0GLEX34fOkiPG5lz3XKM6B0xvSg0g9Hg+g4zX8gwLaqF/p31WD/Ts5jm7IHAQ8Iwy1iToX6V2C+/GfAu81EA+oN1u1bmL7wooTZiwkqnZj2TnyIBXU8qm9S7VwdmRQn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759241395; c=relaxed/simple;
	bh=A+K6oJAN2CdN3XXPQSD4HTs3wClFo79WP2orukpbZrE=;
	h=To:Subject:From:Message-Id:Date; b=V4tUz699YSQjq/Nwvnc7hj1RpViU6RdfdIFhmjl4LtS9Wi/CIfyHRreneWT5II1c3GckZirILMsVY/4yT8qeZ2/M7qUqKUqUGGLXBt9Z3cnDZcmj4Dbw9gReyI+51tG0kWlPtIq2dPxqE2ZuFmdrIXI/v55fuGUqLtNfp0JhVIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BluxA1dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BluxA1dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C93C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759241393;
	bh=A+K6oJAN2CdN3XXPQSD4HTs3wClFo79WP2orukpbZrE=;
	h=To:Subject:From:Date:From;
	b=BluxA1dN14nuxp5cMEIUXfQvrIt/NFbGmZQ+WBnMAQQmxZORvTpJb2HBGIa0wOOe2
	 ZgOLjSHsDJjiMckrgHIZ4o/Myd/0jzQDVlk8UtLH2Zy5qPAas5FXZ8O8QcmsuBwD3L
	 oJAaQfvdYKAUyWXEyTewSEth2DFW6LlhT6Ax2EyMudkU8SUfsC/uF/A+w/nKbUs9MO
	 it50j0mkd99kY0tVNYUWEAWU0fKC/ZAvKDzA4N8rXXLg2ZUPMErrRLXcW8NupvRh+y
	 9lKympDaDm80ZUSRksSMoT2xNG5IEqZDVn1PDe8C2Il3DHCgHqzjy1nFec+ggZOy05
	 AfboKljKeTlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A81CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924139358.26945.4547813768312874889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999c314c74bf49f4e1bae92dd6891a806cd6c7cae2fb72014e96b878ee8c9674
Date: Tue, 30 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759241393
