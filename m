Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426512BE02C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783102114; cv=none; b=q12bkRRJqPbcYxsHvr4wmo2i9m5EnlN0mK4ceqv3ucGC0vS1dio96kv0nQuXO+0SQBhXGN8eZm1kIs6lO1zZIlRLifizRtzOHG/gdtK2B832UfwxivA9nMcJ3FB1j+DApFiwquGCSPDcL7ezOERJBfPklp3ZEdMq1EKkjYkLE6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783102114; c=relaxed/simple;
	bh=jvF8P5P0GaNjxGcZ5P2xkzDB0d8HytzzDOzuHj4SCs0=;
	h=To:Subject:From:Message-Id:Date; b=tKQLRIaOgoln/vpw3gqpYbwGikX0vCJMSPOfazCNEmjpYow5q+y+5isuExjRZvJiWA50sQ9G5GfS83DBV0Eui3Fzcf/Q9Vawh915MNFwi4I6SqByWxqEg7Gf+yNRu4mpAAKVcDQWrdZN5N6kmjC+c4AoWpr0vP1epONTqCbBZO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdPoUDXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdPoUDXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB97C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783102113;
	bh=jvF8P5P0GaNjxGcZ5P2xkzDB0d8HytzzDOzuHj4SCs0=;
	h=To:Subject:From:Date:From;
	b=KdPoUDXexYq2oQ0Mf/L7BE28JmrM8YSHmB+xGRPJLUTTL94gS2qZnFKUUsLlcOqz8
	 EplKRshNDfmxyNITdoauZGcwByqlZi+sUAo0JSYS7GooJJxK/MnM0s5QSzCU7MN43r
	 Bhrr7TWQdFfLz7JsNaPBzwtA+tgX53w9J5dDvxwGTXPUSZMXqxp1emQdtvD+EqDVla
	 9i6LNJ0t08xDgnwUIwL5MBUKylSk6FtveBf25rWCY89h/VIcQdOYVzBDLnhPW3QbQY
	 6D2yxyX4oFMIGe56efdlcJLUi8968+YeL7mQe6zHab6PKXw/bqJLdKugqeilpKcUzx
	 lDEYtblDZ15GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DAC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310211368.4087.5947575303429157612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cf691ade123a8ed60971e44c5ac4eb25ee6a64237a1049dcc4ab874c672744
Date: Fri, 03 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783102113
