Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE8C2E9EAE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761706194; cv=none; b=pdVWYfvkfEbuquOPJ2qCZH/YmybW4CbpUvDnW5BM+Ia60KTBeqCqjbtwMzXkwr/n/v+FAPlqwQat0la72+Keit/xUFIDX6ODWdZVHbsbBPno0MAn9tnhAPMol+fxw4S9u0/gkRX2A+536j+CMmD8AaMaHmyRxsRQavlL6J+TeZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761706194; c=relaxed/simple;
	bh=zjIlBbkXO4M0I97FzvRK5M7jIg3vxS8NdgcYgqPGc2c=;
	h=To:Subject:From:Message-Id:Date; b=MxgzM5qTTiG9OFDtPl+21TZPGbPshhjPwwzs+unIr1YAlFrXUIq0GWEbW4sBIKSbsIYzXmXKnNTsHOLbaEcTdSDxLKTfoQh1dsQ0zLj9nxZawSADHdsayX4J5wbLuXWxRSxhaXhDX3P7X7KfHd3h2eTj2QhyNj9fL/KaYWEIl3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHrhK1IB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHrhK1IB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B47C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761706193;
	bh=zjIlBbkXO4M0I97FzvRK5M7jIg3vxS8NdgcYgqPGc2c=;
	h=To:Subject:From:Date:From;
	b=JHrhK1IB8Z9ZiTt6koRcQIrEg+DiQyJBo6ezS2DZpu4/eemAKCVy2QU4uX9Vb+jS5
	 w5HWi8oSCjzGBDdEV5MqfhwNvjrmDP7ISz8seHhJelFtsPkr75EH9Ik6k+3NhVi/vZ
	 BBs2AoGkCnPRwwWHDw3VtFbgkaUChdr+POtE5rbjIoCiX/yeESXxwtjv9MX2m1D9H4
	 I9+J3NWvwIt86vO4tTnQi2JF+r4rfSLvsysCw2Y8xVN8y2GgfDs/EVXF4PnfEFvGG9
	 nuQNIJgIp9odBmtlGHJ9d8pk0Pu+Tyk+T0ZMj9XnHcQCrT83vVxzXtiS1J6Dq2INID
	 6he9dY4e2cZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92654CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170619358.2618.5750981037093008317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eac7886bfc70bcabb9559b41b941983abd77ce3b45c3f1d8658ef63f2fb915
Date: Wed, 29 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761706193
