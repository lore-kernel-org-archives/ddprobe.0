Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFE0335BBB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780290874; cv=none; b=Ln4FlolYc092F0l888ekCn7niy5R66FOKiUI1WP0WFMJz7vl+5MqzW2AImAjFSff/OTR49QEwUknM2rMqoAkbMy1WYQmNtIvw29LE2dIgnWRkWWjkU9q0ApkYJ94RFp10odeUIlyrufMyQ5RTKTJBEog1JRi3A+MMYNaR7ax+rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780290874; c=relaxed/simple;
	bh=CxL9eCp4RHy9EwJWAzDJdsjUm8eXoq4wPlo6j+Bwmc8=;
	h=To:Subject:From:Message-Id:Date; b=Oy+9XrKzh3FT0+zPJ0C6jeqcGiOUy+QcVt1Gi1O2oXQnTeXxc54NAnLMtaEiNtbf7myKgwVD67g1sz7Yqb2JJmslzx5B9DXuvU6gE4ZsKMh3ACuK9mD6FmJ02QTsmsUfvWJ5uNHLXIeC9OuXQ2BL5egKagZeFN+5JeZnFYJ/wlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWLSHHiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWLSHHiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F20C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780290873;
	bh=CxL9eCp4RHy9EwJWAzDJdsjUm8eXoq4wPlo6j+Bwmc8=;
	h=To:Subject:From:Date:From;
	b=EWLSHHiBJPrWaXI1sOJ5EjIOkGWYzO7jFgxcYqqToZxewZsl5NQZK+h4WLg7c8J6H
	 Uu/ooUS72TKv/v9QbfWdJbeZ8R2gpQQTcl72z4tFP3krkFZVMuWb7U9Np3993TdjwQ
	 icuViKVhfz/DuJrhfj0qwZguYvZ93cbsdZzNRy1I5THD5oK/ct6M1zrY0xurdTHNOE
	 khvZuytMpP1E+0oAuOuIaUb0D0MT6iz+vzyEZEwFqM7a5PfsKs1IeIftCkb53Ioy5i
	 Z6M2/QD3jxe7bzicXaad9KqBwvaZ5cGYOcoxud8yL9PSIwo7bap2xJxTfSUSlKpLpG
	 kA/eQC5ElJhmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93C8CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029087374.29242.12827608745309396851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c315e5bba04fe257b296fb948ae3b618d48d34bbc178d9145f9a519f1cc3e8
Date: Mon, 01 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780290873
