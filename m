Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A89C365A00
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788370234; cv=none; b=T8kg6YpuvWARuA47oAhOMT+WFuJilxa4Wq2nJ2XGorLMVxXppg4sz7ModNhSIVxX7B2ku2RhmgIPAxk3YwqKIBNLtbCep58LggEcO+UWkJhFGHhurE4dsmglZCxfAHzEH27XL0qBjEJTZg3cHpuA86P3ysq3dZksdeyGerLVPVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788370234; c=relaxed/simple;
	bh=Of5W+eblwL0BZND3YFDGr7/w/cx01dVjgM2/q7Tb3hY=;
	h=To:Subject:From:Message-Id:Date; b=QzZVzoSn3y5NrsTVhuOwVgs8TYSNRJe4I9a3WiVCSe3lnfMJ4jBE5f5Qyy658+Q1LJ36yCo/CRvK0MyLcsdEiCuiWplyYSaAEAj6K22Uh8iIa9GDa8siKdp8Mtf09YE0peeI5E2QCpG7W8I1MKPsCnhiciZFUGZcQ7f50tnIgTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sozpSpdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sozpSpdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEB3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788370233;
	bh=Of5W+eblwL0BZND3YFDGr7/w/cx01dVjgM2/q7Tb3hY=;
	h=To:Subject:From:Date:From;
	b=sozpSpdQa6uUN8LbU+F2Y+lrmdVVXO09MI6rQv9GewS0dG+ft3rEnqeBV6a0NERs+
	 QjGmxuF3bfWD4GFpF1RNqwoEfYscMFpfhL5MzJDLS8D7C4USwv/FfKGbMJzLoWkWGx
	 X8ved57Gk8jxBwjfW4MQRFjijBnyPZfOXVcseAaMVVz9rqPzwyU++pUu6GFGouPztZ
	 0V9DkzstDAnw749oHWHZ6F+J7pX95IGhUZfkmVj9diKWSBkfr3goGtvN2T2GVlxbO6
	 6hk33auxYiLjGy0a6qqTGMIDWGYQD6Mpn+NJw82UZUDzcqFwrp++Is5OjgoxxHWqxZ
	 qsBTDuLGO7reg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C0C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837023369.7785.3864506122890593511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c064d87fc0088e0b30a4624d67140f42dce8614f43e07058b4a21b7cc6a4445c
Date: Wed, 02 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788370233
