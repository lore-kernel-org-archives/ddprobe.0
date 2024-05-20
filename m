Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FB2168B7
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716184343; cv=none; b=rt9z0Pw5aUT+jLjKcS913I9OI4Px/kj7BVR02dNNGzPuEIAJyQvB3Py1nzkPdtd3sNojMaqeaaBMug6tnvaxhz6u0ypWEXEbgNUm53FpUnNljBVEzXu/zPzPOfRyEnn7NwLbjufZBZhlwu0uNbwaUdHbZXiJEku9ABgE8m5JuHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716184343; c=relaxed/simple;
	bh=1JxndAmHG8aLJ/vQkKB+ppJqvWWIWsVFz+7NN250Q5A=;
	h=To:Subject:From:Message-Id:Date; b=g6gzGHQUpg0aXVYKVfGvDrZ3HGWeLXWKBuyA9fuGthlxfHfjF778Ah1HEH24qoxxBXiUJ5kF+6l9TDxtO/ffq15ytf/dC9kdMXpnVTotRrkJ66Wxm0iC24UIRZRSOB1eHJgOOIo8OnW1Vb7OCNNy1QM3XkG9eQgFiiBnnD3S13E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F06Eg1cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F06Eg1cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E994BC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716184342;
	bh=1JxndAmHG8aLJ/vQkKB+ppJqvWWIWsVFz+7NN250Q5A=;
	h=To:Subject:From:Date:From;
	b=F06Eg1cSU96GuXT31Sd9gzNbLGzRyAww8tHl0BQ1cbKxPaGJTu52nI4i5f0LQjE9l
	 jVoVBLpU2wZ4LCcu3qm1znFUQfd0pTVKCsuNDV57Dyxir1SCOnGb5vjWOnqiF7mX03
	 l/CwY+0XbKItR/NnZDHtduxHblEJRpieN8FI9aCamfRqSSfQADc6s3dApxKxtWRaR3
	 CtADzVKubtQpQiSgLMlDW3B8XqutuHx1TOcfHBoHobItjUUl5tLjs3T2jiHx0r2GuK
	 p8gJQJlaGYFALRvb8AUVpuuqxZ5HdJkWNl2Pg78+cEioRmjqIuBfJ+hvkitvTkG9TW
	 jfHhTmVxGlrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1ECEC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171618434284.31861.1599169663451902985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8615e66124fe99586788738125f061daa9bee105f7aab8089be7bbedcd4e71ef
Date: Mon, 20 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716184342
