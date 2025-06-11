Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE38C281358
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749648593; cv=none; b=n28R6f7tfOXOrCbSEXT5dmszwLgTx308dP99JSPsSWjU2fgeqcYfVStoxMekF/joqSCvh4sk6FmVJ64KOLseLckw9I536koz20tkM5ZSyWJb45VD2leApMDYlQ3FjjrpmPNXg83L/7pET1iZf4JQ2vDVWHHRUsQJfoNdHDaHr3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749648593; c=relaxed/simple;
	bh=oWlo3TTdvgtK/UEp9EFCVrhmpUGkN0EGyLCzeTnJ7Ws=;
	h=To:Subject:From:Message-Id:Date; b=tD1psL+9FCQ9YTb/OaCV7Jq23bblntb9tzQeTcOI1k+3CnOIJ7ya74X9I3hZzrfgCFLiimTf/17iGLymGQLs6KB68Rr9U7bOudwy7EjEMJQZmdBMLnlxte5Rl2zRcMUkJNt52r7htL7qB5QMXxmNBeaYjY4ucorMqWFpvclmaR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7eSR5MM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7eSR5MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C12C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749648593;
	bh=oWlo3TTdvgtK/UEp9EFCVrhmpUGkN0EGyLCzeTnJ7Ws=;
	h=To:Subject:From:Date:From;
	b=h7eSR5MMJ5Ib+iYEVa0svTcyJZg6omouGFDaLm9gzMjo0IN677xYZ3XzXwv70M1w0
	 3HUMmORcjN6QEtRcCHnpooJyVB+aqD8s/2lk0AWAOIrHyp95smMveJuv9catHIwKVN
	 1ieiV8M9KdqMBibhviZjYcEpP4JHaLzIcf4q6+ynr8pOAbH8Oxx9JjNvURNhaakjwF
	 668WxXyWHibPwHafo+2nfzI1t1y4RtXH/b3mAEh3YmXDM0uT8An5M7S15qJZKqf1+j
	 sr1xfFpVzi83s7KZ7NCDWTGrVtRrUsKlBuFjIUvMpKnoqudT7K1XNfH2mu8EwrS7b4
	 GjgSKRDwjliGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE5C678DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964859359.28720.62441632970382726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d8f373109192d7a8456dbd1fa071e75c70f7eacd16e7c8ba920db74fccdd88
Date: Wed, 11 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749648593
