Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5835614AA9
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743221994; cv=none; b=HIHVmJXgF18HcIrtOCtZTASB8w2ASA2UiJakKRrxSlcgBxxaRu5DY2eVOIa2Xv1MjvUjWEAepcSAAYFnYg2TQbY6Zg7ZQlWwxRmYzKll29Fx/6btggL0EvRl4k0LW3M4lzArhvbfRtxmoEE8yz7meA8Rd44f9HPPzRvewqAsxdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743221994; c=relaxed/simple;
	bh=k5ZmhjaLs9AFukaE4wAY8bmEJwZ65Aap4WI3pfCJy7s=;
	h=To:Subject:From:Message-Id:Date; b=KyZ96NEXEWg/wJOO0aJLgk/PZrtKFKTrjGsgiSc46Me/SyH0hJqs9KeOx16PdxvQUDg7puA2Oh6rlAirs2FmdE9d2mmYXkbnwnCAb70xTpHtlMND7CoDAHzehqVrSfAlo8vLPSefyEfCW1Bg4v6cL5gLKyvftn8ycSHMLEvifhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbZ8ABui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbZ8ABui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A2CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743221993;
	bh=k5ZmhjaLs9AFukaE4wAY8bmEJwZ65Aap4WI3pfCJy7s=;
	h=To:Subject:From:Date:From;
	b=fbZ8ABuiyX+uHHJoX0E9lwFhPj2vP5aBISM7XAX3Hsayo6S59Lwk00u+Snv8rXH2e
	 wSd+Z8oNoMF+fU/M6UMb1IJAERQpgYpL9qT2iJoVZVxuRIgX8RV5V+J9UGd40vE0LW
	 xG0HgFmYejUylTViOnjtvZsZd7VekBv20kg2weept0VA0vYacJvS3i00YMIILcN4sO
	 P6OzOBBjyGI9WFbpw+rzzHHcbpYPA12zCzh1XEMuqQaJ+Yi7fW8oxaRAjr8CklNnyu
	 J5tHBA/gbAIBBPszsondrqNxmhCWwKUqLSaklxq+SXtIcdRcSJrAz4Gfpx0BeMCfzZ
	 mCSgOwbU1hRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D692C36017
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322199363.30373.1261986015271196842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c9e349fc7dcceb3202f43642329b8552316a57f09cad4f935f8eded4099a8a
Date: Sat, 29 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743221993
