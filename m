Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386C8F9FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728130554; cv=none; b=fai33coG60Y2cb+Ot00GJuAMoZ+yCT2l7+Au6kfxdv/r+PaBXdi0vunX3R05/tzUqrX/bGfoOumOEMe213Qeb3sbHi68pqy3gQWPAV/Tfg/vNC3bU/26oAFJ43QTwm3yTEZp5cX6bT7WQuNdoTWPIWs1ww+vU/eFrTd0AQi1kL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728130554; c=relaxed/simple;
	bh=u+u00aOnR0ucgGvjgdvVKFZ/GoykioeT8cyG9s96S5o=;
	h=To:Subject:From:Message-Id:Date; b=I8K6A4waJYVUE15WuWxyoJ+UkXNFOK4AHCDksYOgZLtOaGd1UbsmkeYmLLXfaYPB4aqDAAJORxX03HY508Bv/vFVNcOdjABHIu1JEnD2cs7k6RdD8Yum8hJkQZfd9LGT4VMPvPG0wqX/e1SEG5qZIkoKzdbwxYo/gxdE95+ybhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvU0q85o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvU0q85o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8262C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728130553;
	bh=u+u00aOnR0ucgGvjgdvVKFZ/GoykioeT8cyG9s96S5o=;
	h=To:Subject:From:Date:From;
	b=kvU0q85o4IfDcQkIxnKvrXMRj9dce3oysu47fdYP/kgkHUT92Uo/5Q50NYNlEal43
	 A0ndaQx96OsjatLZgfNOf3uIPmxd6pcBLYFwFET/daYjthbgSpcLxtTX7vz8ZMNKOb
	 Q2Y6luai6gPsgaE5AQ46u82kvWmjYNGAiZIC8x6buaQZWPR+TswRWXZ43H+z2HCkBa
	 fI7fDGKoagerri5hbdlLjj454B3PJCBQZK7PkmC3AaRfVT75YSCKHDZdMmXBGis3BW
	 YJE9Un0LZDxKXX3mElckuGpn1NNYFbJVo6kYn3uYuBqhyKn9X0AJXuCszQ6aW9vuBF
	 SfQoAgy1a1khw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E85CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813055364.11091.12391412325219739776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f301bb01532e75c7a8eed6c8533065128acc9abc6a7c28061a3c85eaaf5e824
Date: Sat, 05 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728130553
