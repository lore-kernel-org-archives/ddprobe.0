Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEE535DA6A
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785750034; cv=none; b=cpUzbSlOKx/cvipN6XTJmvacrCj+xGj7s/7hDGpKi+NfiBeBHkaJ5MtKBjPC4G57szj5Ndy676uHavJSrLjJyW9H+p5ItUTZmLhewPb+SSSoviFld9n5t8WBmA1FEC9aAw/Qp/y7eSyJjOLQKobvsxVU4fembsuqRWNxnNyxURE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785750034; c=relaxed/simple;
	bh=7UDHmED33Qn0hCsLzF+7RT4MKkIM8WGPK075rp1+ci0=;
	h=To:Subject:From:Message-Id:Date; b=K+WXEcEUPGD563aeutDLSN3WLPpONHPvN7FJEvKrRQh9zu8AMhGwGVrMEQGX9ZLZlakb8/v0VshS54fFmN755THLJb8KfEG4l0vvSH71WgWIy2b6AMK3RDjB1OoM9rs1BLzD1G+oLQZEYAml67n9BPYxhLPBiPuvjVHyIP6sRDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oA222SnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oA222SnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE45C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785750033;
	bh=7UDHmED33Qn0hCsLzF+7RT4MKkIM8WGPK075rp1+ci0=;
	h=To:Subject:From:Date:From;
	b=oA222SnZVuL3lQxFgMZxecXsLQ1mfRRb9Ib3fULaPaI42FrNi00lO9dNp4+sD3gYD
	 2KdYhSDfZtzbFGit+pPMEl/+amR19xzHnVZjsE6jjH+Zk2Nsiq6IAm32Lyw3/Oqk4U
	 4NbTi4rf56/oSn6jlEqly2DBNdJ6ikJAkxOYWyUL9mrghb5JhNKNRseRvM/prtYJlI
	 u4cNpRnrTpUUQ6G3gnEnkffMNsz0Mu+G5yiwdCOucXx/nx+MenlZQQNmMzp591vikS
	 jbNIwXUlvuBWJIYyQbEsgPNvmCMZHNDiK2zFgvOzYiiRGiFXu6HHEdmT5Hc7eyWBCM
	 UrkBQ4PCjxqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EDC55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575003368.18270.7266554377915057432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54a2d3dffaa43d7719bbdfc435c50658463d7caad34e5e6a5121b8b82329803
Date: Mon, 03 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785750033
