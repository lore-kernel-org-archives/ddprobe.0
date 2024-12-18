Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAD11A23B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734524154; cv=none; b=ZVntMhQQLywlxSUOeYvbpVA7jnN5+65dffQdOjGafHl4j97CbLLWvSN24D8DFx3WCfkWYiVCYZ2mzUxiDz6/+uWdt1m5gQA12qoUklnXGhXeO76WcYZUqfY9eAqvsHa4rblztjozjselBo0uY3kdG3ddhLA65Gjfm+GsePex8bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734524154; c=relaxed/simple;
	bh=eH7ulIbl3/0vShZ9+SOSG/waX0/g0PnCg8Ey1A45b8w=;
	h=To:Subject:From:Message-Id:Date; b=DXyK0AjG9kiirFV3J+J23NcrPksUprIR8Z2sLVjNBEyaSwH0Z/twGEXgJsen0pEUdpkSbvw9qaGTn+6c01hu9TAz3bPaIdrEAYuyWhg8peETyXGxjG3YhcIl1xM7DEEq3knj27G2uBl7fqWs8rznsYtw2tAqubeqj6gtOTYICwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ttv+rCbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ttv+rCbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0FEC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734524153;
	bh=eH7ulIbl3/0vShZ9+SOSG/waX0/g0PnCg8Ey1A45b8w=;
	h=To:Subject:From:Date:From;
	b=Ttv+rCbM+usR7T4V13OEdppZb0vdkFwfNhvC3XHyizIqqdYW3t+nUfHXMDQrzLCwB
	 vR1kUl9G79C9jOrPF3ODpYHPEKqEqf11dJoelC1aUJoz8u6Hv8tc75LAr86pX6QpPm
	 dtm0pbGtWZ+iJAOwGr60aTk0icfsd/hQoB5u2vFqyok57ufzpkVUZM8KTv062FZFKY
	 3c7Ss+815v8kkUdkjQhf+Q+2tbfFE2rQ54xem9LK0M88Zq2R5gGqNGWdLu7Q9Peq1A
	 XruFH7UDjgmpYvkJDjHZUobK0ZNtzeoe/DCH9J41m5MKOMMZeqUGbu8avFCVwgnixp
	 A++Qlzzj8EZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96439E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452415360.1229.16459393398104235710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef0cef738018027385eb66215e2309ae35576866e2eda74a0611109cc9eb35d
Date: Wed, 18 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734524153
