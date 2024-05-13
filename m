Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B759155320
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715616143; cv=none; b=btBlnunSxz1bXZARdCrqsY5kWPgwjBdpg5ThiKSBIrQVyK61fg9fxkvegWzLHtip0865s/QnI1JfrRnaKDVOWwrHCfXZVmgfN/Ab5A68uyLdHGwJtX5iF/gmjQRtS9JjswYEONCVHLWHlqrVn3SwUyPjlDRrRkHX24tDL/Ofs2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715616143; c=relaxed/simple;
	bh=hBC70kQNA6jGNakOlHy1U/zB3oU3TD1oMT9M8paxyw0=;
	h=To:Subject:From:Message-Id:Date; b=TwGle88k5TzlVxXlQGcATpVuhIODN/B3u2U9n3q571XOkt3h6AdDLtTDDlsMOYrZ9rm8Uj1JVukXCNFE6TzpY0vLGa4WohaTZbyNDqx7Bapa3aPiDUOvEvBH6C4IS9AJJyqkCsoaQx3wNMRdU9ydzNuvIecN77of0ecjEy1zFo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKg7FQHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKg7FQHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41AAC32782
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715616142;
	bh=hBC70kQNA6jGNakOlHy1U/zB3oU3TD1oMT9M8paxyw0=;
	h=To:Subject:From:Date:From;
	b=SKg7FQHLLGZTbJF9gvgSn+tUZhnav4eKAC+aa7LRFEsun5pdNblTmWD4wyVXnYtZb
	 3qOnCvUZUxMRzrfZfAihqtdPfhMbe9lxDqlbguk6YvyU39sIUAz4Nd1Y3rsbE5NEBS
	 IMJI1j5pm2UisIku6B/lKe6L8ygUmdQyqQnfdj1JppTZJTXU4LlpLekUNNJ1N3IkKy
	 0rYhp2OOZSkopwSydyNvYOIkxLJRzVZnShEXquBB7/updcN5FHZRTGkGjhVS491+rP
	 3oWQzwTxsWJrRxkbDYMaAwUSZEkQZBi2x/PPkx6q8vHKB/VeRsYrN24T+wzBQZR1/k
	 p3VKyXVQoSeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BB6C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561614278.4904.2189338479868090388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2901955c24c639822a4dba197c8cb76a627d5c0509ce3c13b7d549a07e9ff552
Date: Mon, 13 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715616142
