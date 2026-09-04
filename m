Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C06E2F5A12
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788561034; cv=none; b=sp9oJ3/R/852YQ/t9etVMaVKkPbNrTnPi2Aiht0Q7gvSjmly8SKZfI7V/lX8SxsB8fXOac3oz1ATrgIb8hcFVlEtP/qQW6nwaVH58TzBZZvi3sKPA02N9UC8Mr3ISzFMgk+ZwZwrpCupKuVor2157wUtas219E8XNdiEFus6dxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788561034; c=relaxed/simple;
	bh=ItPvMhgrKsZMMsH78O0yrlQCF/3Y7obapuHxi5GccX8=;
	h=To:Subject:From:Message-Id:Date; b=gsHZQNUfe2jcQMwLB0NCukv8i3z9MqkplfxdaAv0AQG17178ewrROVjx5QYaqeznl5wlDbK2jWHB83LVfdLSjSBqqtNt4Qi5dbKnzXcdTKjhUqdkbmdH5BAvtolO3E5SDJuB8fM8Pyfm7pI12SMGQw23v5d9usggGKioBoS+2QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mo2RbQY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mo2RbQY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58F5C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788561033;
	bh=ItPvMhgrKsZMMsH78O0yrlQCF/3Y7obapuHxi5GccX8=;
	h=To:Subject:From:Date:From;
	b=Mo2RbQY68knpRjsHUqT6R51br4qJudkUo6lwCE2/3i1VQbYoeCsu1wFohmSfFKTwe
	 A32xsot0P85sbwe96N8TJOu/ZT77K5ISgancNCMwMzoZgynRCAwR0pOGZxzfIv7r0X
	 NnOsQr2afP7k/7zKPGVKcCYpyReWHVQAQxjrfy8BRrhf7SEtiEq6gyAkLqFiAQ7aKh
	 qJdhlwU08g6oMBFMnzh5wwdEfpCGgKC71ZZOQw5DpD/1BD9tjvfQJmRCAqIb8HweiO
	 XINsNCo8BunhY2DXTb8ONSp4jAKuI1ELzAbhvLcLD9nVLTIettNkD3t4lKk42tNnFA
	 bovFJ9gAGLGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C2FC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856103371.30471.6972623408139478296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885cfb9e127bfea003ddfb698f18529f1b2f2ea23cde5b79460922b218a221cb
Date: Fri, 04 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788561033
