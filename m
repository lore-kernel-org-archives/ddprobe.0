Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED56E26FDAF
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745904594; cv=none; b=ci5JybLuU/e6V6UOfosY2mAYLF9d4XX7S4KEDKp363i6hljD9ckZrtyB61oTDg2TaM/nzNRqB07mVUfy7WIIOE8VyDFDo1DQrY0s+rMC72G6/OwF2bAg+lfSCBO876oUGVWxjz/XXHtWDgaEg6cWN/8EpQqBCok2NUxSW/ow7PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745904594; c=relaxed/simple;
	bh=KS4BqJt0kvGxp9hCw5RovQ/ew0E0ozps7928bvGDPZ4=;
	h=To:Subject:From:Message-Id:Date; b=VjM4Kod1boXI6RjqNLAM5JTXqQdrxjne1459l9AYyEtUAIa1NfYaD+R8PknTeNmFFxYW13naRkDszLVNtOFce/II8mqzi3BypiUZsv7IzYaigZbdIsNCI8zRSIQNexzSxPP5R3PNbpQWDCwFHhpcKpccNl1gdO5ytL2dKH0wzko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q67Cf3k1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q67Cf3k1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA001C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745904593;
	bh=KS4BqJt0kvGxp9hCw5RovQ/ew0E0ozps7928bvGDPZ4=;
	h=To:Subject:From:Date:From;
	b=Q67Cf3k1YYxmAk/fx3rEyxSEuvH3eZLtMQsIYqeXfAW8fcz359dFLZavqfwmdP4SY
	 Hde+WW8XwUVLVVYwYEsUQme1q7XXTWEj5uHBdpgX8cv+eJDOkYUwGGA9n/eioCwQjb
	 rZ2+FkE9+QCr2Y73ZHocxtjDF+1zNd+pXJ90V9UWrutEtnUylCjxl8eo3vsc4GK219
	 PbG6TF8ZuC8xrVvlvLCYUiZbStnwBK1Wau0viQXHrLT2d3cwD1qsLDUljFb42CuAeo
	 4KAu3RmNqST6imou9qarMXsy7jhHdsoHFNejKJUv6SYKHQk6J6STMfn2FnQzvP0led
	 IbU3hPX9pt9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D46C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590459359.29941.15717274464141455487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84b35f2ecbb5528928278b58c0a1140948dbc963ae258b1f225c9e325181d05
Date: Tue, 29 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745904593
