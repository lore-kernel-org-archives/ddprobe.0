Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B51C22A80D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782640714; cv=none; b=X7+v/EEbI94PeZeq2ewNMC88yq5tga9F3qy8NKwKIwzq3VAPge05sW1I9/+dGZ18O5dhSXQPrrJRNs+7kv7MNUrlveqg1TeI/rYVab/Cxjbw1TIST/dcQ+XMgu4BDGwsSmwQDSgsStagOu6iFkvcYz2SdaGfAqNagohQGh2+uyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782640714; c=relaxed/simple;
	bh=1bFIlO3FR0PtvpKTL0Gqf80MjqJFGe6f0/I/0kdMYAs=;
	h=To:Subject:From:Message-Id:Date; b=e1gS8oDd9kjAKoPXccyDZp2s3V4uH1gdHl5hevyjsZzfqpVMqqnEqJdQyElQ/p86ONzX04X1rVhkJXZMf/uaWJxAi4Iffz0vciLvcNdA7QWEgVHvZCtRcecV1Oc0jqINmGbybd0d7B4RjVSKfy6kaPjKhM37Vtaur0lF4R/zgUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqqa/YJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqqa/YJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAADC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782640713;
	bh=1bFIlO3FR0PtvpKTL0Gqf80MjqJFGe6f0/I/0kdMYAs=;
	h=To:Subject:From:Date:From;
	b=bqqa/YJiPbuNEKtzmuEnHn/QNRowygaNrlUm4OZKQ2AsU1deUe4gcMXI9nFxH4MbX
	 bkv67epvhn18yAUxwZjO3xnVMqTvnUqV8EFlLyKfdQyiydg42zgsth1+ucA663eVDj
	 TD7CPMMgUk2DzAIH+W0WRDMtAp0JiQze9RiLqN3YVo3y8fyU7/HlJ2NCP2yOl2gUHW
	 kJB/ClOBAQmFxcYl+jC7sU/mMR8EINFi97tK3BJ+17rc5p0Bgvv3nXw51Ei4gDl+Iw
	 Twm9YscEPVQjBDWrKndWeDaX91PDQt4dz7Ji4iZ8+dtQrd1z1hMRwAyiSb28s6dXX+
	 fJsxqe3Iv1/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C0C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264071370.21179.1543538019591061297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f9ea1269b414f4f2db28dfa404673bc68d586d53e2b40c446be747d8b369fd
Date: Sun, 28 Jun 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782640713
