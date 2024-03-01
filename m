Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92B625569
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709315297; cv=none; b=qal/At5iagQhyiqclLzVCHiPhyCdlFi76iVLNG8/50qY3mkwunJ/Ba+HFD6C31ahAy5WA/5FnTh5xrNGy/CssiKH/JkNed6bvSoEOzLJxHXro0yyVUbSmcOvgKpr1DP3D28hdzPg3PF93NczUDe7F/+c3wSTNXhh0bgUdrr8Ygc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709315297; c=relaxed/simple;
	bh=L7Hw5CrScuMQ/mdHyjZP7BFgsyGX9/6+gRfn/TlokJw=;
	h=To:Subject:From:Message-Id:Date; b=iXeh/xKR/0pPS3TpCS4cUL59NjIbmLzsZx0n/58yijanLhH8NlnOLzwB0tPjPmZgsH1H35xKJNpILjpDafxC5Br9LIWK2lreFM3lgNEdJ+jMROMEOeXiL5A64/ciiAmRJZJ2QZoriFBj0f8QwDUG7MxYUWP3f7EknpRzuV8M+NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ8MSvzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ8MSvzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3A0C433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709315296;
	bh=L7Hw5CrScuMQ/mdHyjZP7BFgsyGX9/6+gRfn/TlokJw=;
	h=To:Subject:From:Date:From;
	b=lJ8MSvzVJDwqzbTH50DZtFUipv5CMzi7cSeOdhL4n2b0LTxLBiJu1C2+4o8V7H6Cc
	 iazy6KUnBQbcumb0md7NGcKcgDf5wVhFwnPEOk7PSfMuhae0RLm0kd/faCjp853Vo2
	 WNvMpWSPK+oTifoWBZMfJrKcejWsGQbpAhhZlBgl7BmszUDx8qV61B9P9TYUrpRgxM
	 CtDl26ZUteP2zsuXvRiGe7wHHJzFn0oQ+9WXWGNW/fB3F7hovv1y7adDv/P1d1HyYL
	 j7UoPsB9nfa6Z+5tZjts84KcK9kTfJ9RI5HEhDa0wlqPTVj8GNyAuhEM9416GI4MS+
	 N5jghABk79x8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6318EC5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170931529639.12353.9607040703949573051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c997645532db0dcc6051c051afa5fc0166c4e4d7263cee2ff146095b019fab76
Date: Fri, 01 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709315296
