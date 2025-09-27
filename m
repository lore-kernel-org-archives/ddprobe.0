Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3128A226D14
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758985194; cv=none; b=BIgHqUuJ5gXV9urWuMzSizPeL46cmV3BvViUkrj0+32c9+Rgb4wp2mzEiG3eg0LZUptDew+h8DgnY+MtoK52Sw9NmU76crf97//VUwNggvfhsjqbMY6uqEy/lEQpiWgFyC67gN4h02H9nwJzAKwYgynYqmrbPPgxIZbfdjO3tXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758985194; c=relaxed/simple;
	bh=n0GRdutUzzQi5N3wdLkbmvDDZf4/ov5lsoW0eiGACV4=;
	h=To:Subject:From:Message-Id:Date; b=p/5znRQPRPHOfw621kViQ0btxcWtKvZ1fN+1qJHV0ocJ4QwHxH8qfyFSbZLdQpEf6JdPNZE90MsQprJFQzSSAN0dh1caS/FHGqYvv72GNVpRPTMupkQ2IO9zTs5ZalypgR99a/QHc9ChbijYXAEymR5qBAjVBMKYSS6qe5ncoMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqagpiWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqagpiWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A821BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758985193;
	bh=n0GRdutUzzQi5N3wdLkbmvDDZf4/ov5lsoW0eiGACV4=;
	h=To:Subject:From:Date:From;
	b=gqagpiWPh+L2FIHS9tpWW0EElIsNtsehSlY4XGrbsaBXCV2AIPfjjlquoqZbz6PdP
	 VBwIWsr42D9cdkQBMcQxexj3CQ9tARflFkSJPoax2x9nDdzBQJHXN3Ik1I2bnStJQU
	 pYrXTWgzpEsw75V5lqrvHzDIPSondyfVeIx3Tkkev1IEPt+kCxnDAVo80DUX3kuFC3
	 gS3O3qNjbT2BQohJEKcrGz1KADbs+DZxYK7HJQTkUhnwvl0qQ/8hR1lJEvTMzPy1QP
	 cfYLC7GrRi2BlVFLXx+WsAsenqF+I40tiMrRrlao3PWOc+anp+RFzo6ukob+JO8zPM
	 YaXvSzXEssQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B3CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898519358.10924.5108154803317394945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89b35112219a49f8a0bc12c7f6be5cc8bd16e8c6f698b4bfd077d9a0ecd3abd
Date: Sat, 27 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758985193
