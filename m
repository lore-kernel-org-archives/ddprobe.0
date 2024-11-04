Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFAE4A08
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730737553; cv=none; b=F95dPrFASBKH5smHbrgpju4cJd/SJ15WbaiIuEc2JEjX1tSLa881lOkHApjX1gpTbvlJ2S2EpzEfXwKeTiK/cIVhxlcX2HK1DUaroQInQZVPmqbnJ9WhziDUFq/CO+Gx5szokj9F2NbwIG2jY6BRpvccpvwGI+BeM4n9RQeEFnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730737553; c=relaxed/simple;
	bh=sB9BsEqCNywZzLnw2pWw6mTJefJnmcdPK8kV+7ERP5w=;
	h=To:Subject:From:Message-Id:Date; b=c9cHHDzJx1bhNcgLrc0V/EqspMXVm7VKodQamQWen+cbJDIaZQG99WhgwhQHSxCZR6VfIAtjNEojo+3FsK/F+Vhf1tgs2yzikpli+pdBBfMcv2dQTjVDNIAsK92SwqSHeLQKK15LCmdhwkXGOYNOBSpH4E+9FEtE/J/ALlb2O/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpXGI9oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpXGI9oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8D5C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730737553;
	bh=sB9BsEqCNywZzLnw2pWw6mTJefJnmcdPK8kV+7ERP5w=;
	h=To:Subject:From:Date:From;
	b=WpXGI9oAfMMsWYbJjrK3GdEy3+h8wWPzizW/uRVw1MtiqRVoywIoAr+BzRlxCtItg
	 baJP6VbAQd3YDgIfMSuPs4hkumkqjK8cGjTdh4fggB0BchlplIAT/lIoaapbGkok0+
	 JY2rfIGvU5L0hY1hf7Ds7rAmiDjmBqS5pGVhhrhgvx0eA3vukJJBFzHVE7fw+CcCey
	 +s/nfk6yW7CKjPFXwWXZxn1u96BK1KAqEbQOov1NeyhUznTG2AtUe7N6VV+6WGaFp3
	 E7GeLKD7yTWuMS4CWOt79DEQodDbU+X4O0u6COmgJpZKImr3YGBJZrHvRdRiIuDOP4
	 TkmZpWohIWZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0A0D1BDC2
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173073755362.11488.5867724132695893384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e2863ff170bc82f3706f4accb9c7efdfbf7f5214bee73f2fbf0a7ef6f53572
Date: Mon, 04 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730737553
