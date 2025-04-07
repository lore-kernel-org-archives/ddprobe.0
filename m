Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270E52253B2
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744018795; cv=none; b=iDZZofj4ZowAjbNqVwz6ov8Fm8ktyq0QCjtUzbcQlJg0dwnxjkuHg+uIADJ3y2TeyF9nhzeW+M6DX5NdPAK0o8IutKsIF+N7PWQFNulH9NNqMbrOVdVaDQTQnIRlT0i/TfRcTfqO0KzLyFlq4/E3dwIhXWrNYxY2J8uWh4ZRqbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744018795; c=relaxed/simple;
	bh=/ahVWQAd139rgF7xj+03EQWR8IF36OFcecgoDDT0TT4=;
	h=To:Subject:From:Message-Id:Date; b=tMthWv8DjLSWH6vIr/OA9SDFlqhDfryiEVTzYpt3BSEbsLk3rYfxSCtaGc4t1EzNG4HPCeavfxFhKloUJE/CKQOpLk9/+O4+YutwS7aEgpA6TgVCQT9tXZBJ9aWDt+tlqtAnmHnges0azb46Jii9h/KzpPOsMgTKNFQeFU1JDbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBA3joZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBA3joZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0FBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744018793;
	bh=/ahVWQAd139rgF7xj+03EQWR8IF36OFcecgoDDT0TT4=;
	h=To:Subject:From:Date:From;
	b=mBA3joZOMCx7Zoi2lKbB5xXtIMtE85TbuT7mCFhqXgQmwqJzHYPpy2QlWSJ2lq5BA
	 /IGd1/u6GgkElk2NAW6LJSixBPtYf5qw5uf1q9z6a6bSQIzDh+hu6uBBCLQWugvo4Q
	 l3NiHLBsY/QxLn3OUyo+v2LAgefuZVihCYuWYsH/mu3A6cKjBE6p8y5VWV0MKEILWx
	 oVUeGuIlfPL4ScK0MqqBMvow+mJ8yvLmMzhvmsOlgzWATJIfESZZa4LJCdsFv1EOrS
	 a/uItOl0J+QxCdNzRPzxVvdmLxtGBKEcTMX0+Dgkc+TjQyG+XTtmMIeu4QyIv6Rk9v
	 eykYlGhBEG8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98426C3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401879361.13856.3271210310480824676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d9184cfc0a7c0920645139c2a4282fd037e0f4129381125ef9fb162f2c6e74
Date: Mon, 07 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744018793
