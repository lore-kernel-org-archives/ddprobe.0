Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAFB1E1DE9
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771382094; cv=none; b=Tpl4R2DBn4tqsIkQbWioSogTEgMc/Kzvjuo58rgEu/szSVjRl4gadNWRTTtKZStNQgSgx5452hRUNfeEhR4hoogFt4LcM74obA0CQPop6tzONDlUCyCLolTh0nCZix6rQZqq4eUNgsZO0PuCjF3i5DNX9NJEYINvi7HBY8QQ6XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771382094; c=relaxed/simple;
	bh=fbebC3YgmOgWpduaEboDqKEkHr79c1yjfo1peZJSCYY=;
	h=To:Subject:From:Message-Id:Date; b=ZWLBR2+CC+gPJ2hHL4ps3e2Mv46iQMsVZASfiNHjnH6R9WNyTZg7a2zVC3InAcyK2A5pb+hMj0G5Tvm4lQx4eu5rYpmarx3DjMjn93G6oit7QOatie20ruVOgU6lBdr8LsTnfTqepnx0ERbSFZ8TnrvV5WvVzAzeTPax9JIXnJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nbu/JsHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nbu/JsHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7457C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771382093;
	bh=fbebC3YgmOgWpduaEboDqKEkHr79c1yjfo1peZJSCYY=;
	h=To:Subject:From:Date:From;
	b=Nbu/JsHh/Z5CpTQV0y7+PPxPvUkI7YAek6k4Hwl9ShhTqKAhTnFxtnnMyQT9uJXjl
	 1J/ZXzU96xfm2/R5NZZ81KU8uA1zjeOhLpKv0TClVoK46ylB4X42fbFUlpwXnZcFN0
	 elVzUNQ4yUKVF6G1/ZuEBvFy2f6yL1MQvvv0+oUXUWyXtNohMOupfz5T+4fcwnMsbv
	 Pc6JlYU/XnUKUD9WfPcfm8SOphljkOh/tQWQrQ+KyBvmNGgluIu54Kt448VGNw+MO+
	 KxwB8Erd/Bd33t5uxr2J6IgW3/I//EmnfMfznjlVssTolOQN5bhiZ1RLX/2X31OHVR
	 EmZuyfz/tZOMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1142E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138209364.32690.14427742740157569372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532d5cf21ba2721e0f1353cb5a82f88465a978700cc6bb7e80e51a30731bc67d
Date: Wed, 18 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771382093
