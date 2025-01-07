Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380941F758A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736284554; cv=none; b=ulxftHcNHHEeJiNQPdFoN/i1H5NzIcPaWGHP1BkoYGG1c4ncJG7dNz2x1lZt2JOW3qnTiFSOdiRArKYkJnDH0kuKB1Wcbmt6WBNK7HahIRNING9F48aLae48ulzNE+jTqKd0KcLWnCkDQNnEG0nS3BClkhy9nXWkPil9symcvcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736284554; c=relaxed/simple;
	bh=4AVC0ZvN2Hn3x9EhGbWa1U6ipZGd5hoxMiB89ycO1bs=;
	h=To:Subject:From:Message-Id:Date; b=eaIXcIIpJrT2MoTZrMDh/kzfuUQnMeuFBY1i9x07reA9E9oc0fIrrVEEtQ5o08+bxrxxV5DyFb6ykDEaLTAYG2E4ag9nqJ6OFmUAO+rXhKcadu60gJtxuwc6shwp5ltjd558VaAzqFRcf+ZkRB+hEcG2/vbE1Bn9A8a5bHgPBnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIAXWi15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIAXWi15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF836C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736284553;
	bh=4AVC0ZvN2Hn3x9EhGbWa1U6ipZGd5hoxMiB89ycO1bs=;
	h=To:Subject:From:Date:From;
	b=HIAXWi15QvaNkKB9noLKyrxHvD3WNNXXhAb4IWW4V/G8H+fBb1kIq6TEiyIdJC+/V
	 b0pFelpDPaXb/Rv9St80lIccUI0mnd2ofPv2ElPLLZdMJb4h/RC7LAjraEzhHOY4zU
	 BZ2OQ0JrIXm8VykSbUVU03ge57VOVs3cbO6XGOq20CDe+VmQ/Bg7fyG+Tvcz4mGZvX
	 4/q6zS5r35zzt1zRs/afATMOEIVRNzkY+/tVDhACKCALC+a4AVXz5hESbZ7EUTsAHB
	 ePrpIzdZtK71RyXj76yEDjjV4i6PdNxcVZ4NxnwZVzv6T67CXxhKi1odrZNcD8bFEh
	 37zH31rmRIWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D6E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628455362.13655.5856411328542339092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d850cf82332327151fb2a4d669857cdf19691d0e2e67b9b0b6ff3e823eda82e
Date: Tue, 07 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736284553
