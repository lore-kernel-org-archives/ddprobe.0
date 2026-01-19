Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4203382F6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768809234; cv=none; b=Mg1TrT2PziuRqP5318aknUqoTqGRnsjlryCKnjBmr9dd7BfjLvwz+tFHES8yapIFfkS8MkUCa+WDm4Gi2yYk/VkEvkbbVrney3OZqtxGaAg+MH/juJNTFr9U8WEdB/tw32UbmxEE9LVCPVQ7GX0pjEIS4VOq5mYNGRZvIE1YUoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768809234; c=relaxed/simple;
	bh=zlFHO1TEk3JquVx4sazXe8O0Yjd2auaESiiy2Te26/U=;
	h=To:Subject:From:Message-Id:Date; b=IDcEBDE+MrY9lEX4fUlmRhOetGF+NbIcx3GUSJcxcu9v5M8A52SStNZSy5Ofrr3VTGQfssIY0UnLbEl/IbP8OVq8rGYpx+gy8fbfah9atxam9zs393N35yNonGJEg+OJxJw4HujYHRk5enT2robXy6Pwn8s5/VB4l9ggmLGIFLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXOAYkkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXOAYkkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1FCC19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768809233;
	bh=zlFHO1TEk3JquVx4sazXe8O0Yjd2auaESiiy2Te26/U=;
	h=To:Subject:From:Date:From;
	b=IXOAYkkVXvg43c4wpB/sBeu9NaUx+iffVYlQ37Q1jqYuI0X3AkoBuT1gippBr0bQg
	 N0A92K1ZnEvtXSKiijPhdA9XjqxKZNlIW/RQidb7Kz51sWawEWFlY7Nl8rqjCV+h6P
	 Gf/1OYpWyNBw9UR9Vi7KAqsXSIYaSHH4mU51UPMoqDJbQfK+u0Au/wgISe4dZJWrie
	 F09qHmCsza1HNA0wKO4vQ3x8MRz5ibUZIwbwH8UPUZvkX4w+qzHJTfJzPZeb1nN3Eh
	 6fSTupXRbqaCnsb70P9l1qvppCa1LF+uczo2ArVCxZybFdAc0HI1T4GEcktnvKRLKd
	 kJ9eKdBn3o2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD7CA5FFB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880923358.20090.13850562345670226085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e771d3b6b69a2ad723087cac17e7a1adf71a745f6ce72a03264f1d246950f8
Date: Mon, 19 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768809233
