Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F08F19D8A8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782265594; cv=none; b=a03lJSUN5b7Vyw8CAF2zOrp504QsojkFGyJtH5qocEydvweip/66XfzU1/6bYBNYV7j3gSP+0g3w+DXfjqpvi6UOyv6SsoNP2Mj/LTfQJWif0ro4aRBv9ZTTsXzmbNRXvdG/4J7I/4NSpdO74G1lmHivd0kl+nKPEJF03ygY9DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782265594; c=relaxed/simple;
	bh=yJ4uqZZWWt1oV8tGgWeJlQ4WqniSq2rYiTJ3L5gmOC4=;
	h=To:Subject:From:Message-Id:Date; b=hNpyymzNomnBC9UhuTS/MxF/QEZTq7wwvPhQSiYVSlkW4XauhNsB+bD08u2CkIOVwB1u5YQluoPpMqNnOgWAximdbRBY9zYxXFHic0uNBf0OM7Va6WgUutJYs3I6xeF76Z28EaTp/N6g5uBT0RzqXwKLIfnRP4gJabFK5MqB9bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMbIr4F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMbIr4F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7B7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782265593;
	bh=yJ4uqZZWWt1oV8tGgWeJlQ4WqniSq2rYiTJ3L5gmOC4=;
	h=To:Subject:From:Date:From;
	b=bMbIr4F5QWPF6Htepppzp41gkvbFyPo3HrNavxTeQz/aaxeKSgt6hXBrk7HaQdAQW
	 UWU3n5fCg0hg6gbHLAgl8e//MC8zYscd0rqsiam5Q4ZpmLWVI0XcP+tDi70vpTV0m/
	 M5rYaSaaSFb3tgvN0qCCGjGkCUYenXCJGqquM0mE+V+KVd7LfLyVTKElf38C3GWwne
	 sb+ooGQAEu7oDI5RmnagXjxZ+NXX2GJE5HYoPlJ8oPdU8bjm7aJqIArwC4a3gZbfRX
	 f0Al+THTzIgvKBI5W3xrY5saZJKbGR+RV4CBG0ohnTfONHVuwZwbDC01fJY208bI3B
	 wjZ+9ZWNcXzeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1D2CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226559369.2485.12720673477993322533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44568d145467e729cb8a4581e89d98a8db0422e50fac2afa3f8dbeab2ce1a67
Date: Wed, 24 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782265593
