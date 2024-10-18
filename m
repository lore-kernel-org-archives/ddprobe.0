Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1072F2746B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729265154; cv=none; b=gD4gvCkU0XluDAWkl/nkMuQUbuKQG1OHygk6+nIewivu/xLkH/avsetSaODhH/M6MRYC1OxWg9lJTh4iZDLLC04LC0EywKlAQ0Fa3RbgkiNwY42XLVnvDcP6sZgdnsoFxoWPqqrotSzCNjUTm+0c7yQktaW2U2rmRRH99SnAA34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729265154; c=relaxed/simple;
	bh=ehsxBTDDTKwN/Y8jo75+/zoByOIUUqAHqvtYo3masCk=;
	h=To:Subject:From:Message-Id:Date; b=MxoSGnKs4GcPWrc3tMaIpLa9Uc84zILppIT852qZcJpo/iuuTyFJm5duRmaFtD2MUsEnqhWJ0/hQj1LABjKlXyyYi5EH0dPt9qbvAdPph8yJpIalSEKo5IZN6GAx3OUkh/HXeDjOFmdkzOmw5CQ2GeTzR2ADKkF1lKdOmP7iBlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVQWYwWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVQWYwWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E46C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729265153;
	bh=ehsxBTDDTKwN/Y8jo75+/zoByOIUUqAHqvtYo3masCk=;
	h=To:Subject:From:Date:From;
	b=JVQWYwWV3l+xbuFq8t9jVzjKI2M8q6myihLwA1n6DXVEl+e/JR9qwQjQQG9fJu5Hc
	 KEwSLJiQzHIRkaAmjASw13HXwVHyfSc2b+DXjD3N6ze4Gbaplta7X3Qw2uKp6bFVLU
	 FtgN7mCVtWYjfeMwrtNfSJQkczZWNfXwuY3U3/yEUM2oTUjggv0fMWRpWzLENv3h8x
	 WHhhzj5VCLTJMpEJ9599djWuWf4LjLZbIy7wSAXN2Mq//rhlSc6nkvSk7jCjtJns8/
	 UAca8Sxyh8Op4++q3LGzXEfy+H652YwC4kPRSR/SzbwdT2V4ULKENKMXJ8DpKwd9qX
	 K52MbSmasxNPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED03D30016
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926515357.16608.14244148921188034504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4c7d5405014e9a2da9dabc4ac6c33d1c8e704146b151ad663cbbfeca795498
Date: Fri, 18 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729265153
