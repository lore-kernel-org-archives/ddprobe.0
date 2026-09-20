Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55883388E58
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789890034; cv=none; b=bh8380kHpDLTlPyV08eca3TIRoYPWy0MOZUQeHVuOZDBEbil7x1ciI8XoWpld/92kaK0ZYIQ6GUXAyjxkwGGEQrehz4zPHOPUl9aRPr4dAJynGKP4Lijwa8KG/BGFxdqcq3ZScYsK++c2L1gIrDxTZnF2N0RuWKIMRzfknxHOlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789890034; c=relaxed/simple;
	bh=64rCkX8IvNTv1p9aooAi6jBU4mauC9XgGqPjxRdVcDo=;
	h=To:Subject:From:Message-Id:Date; b=Ip88YzR6XxjoOtmKhey3CbcxmDapAyELlUOOXL+W8fIqepqh6CMO6fpm30YcHcDFfjUHyta0krfSad6vgUArHJ5NRf9jrXHh6AckmED2F919qZg7x3hX0/PM6EyvmArUtS2ctxt8RpLAQUi83YFJMEAXsSMX+72e9uj75VK0ErU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdfpEe5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdfpEe5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C45C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789890033;
	bh=64rCkX8IvNTv1p9aooAi6jBU4mauC9XgGqPjxRdVcDo=;
	h=To:Subject:From:Date:From;
	b=jdfpEe5Rr2xVdthrgZvwJezc6Wz/g0QzC/rVkb7k71fM3uJniuktCTTe3T01uuO3b
	 qJbhemgrbSz7dSjtQp3ZF0iBZ+uBrxb/aC8o0frJs898W+bZhGc0PHabLcJxlJrXa5
	 GR11rUji2307fKi1mob6RkB0B50qKq85jZrGy1fZv20jz/vvVaGdXaSqz4m+W3cQgD
	 KU32vvmF8EF9yZEdNX7Z/X3cyBBiWYyA9/Rqpo4mZbH6OjO6mOyNVqME4448vhd/AD
	 Qf58Pep/6jWd8Zv3lz3WIon083HJKigTCkVZdh2dlRLlu1dviIj+HOnbRgrt6kreEP
	 rmwQkLh3/+TzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA99C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989003368.6483.3723597874020941253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ce96315947ad1c2e9e76b5fda929c4c935131e4c2854a34ccd1239919ea5b3
Date: Sun, 20 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789890033
