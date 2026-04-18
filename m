Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C22DF138
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776541054; cv=none; b=hhNtJgwN45SCXHp0DyFdOjBjFFgvEuXB0lw8NYhHIJKmIwlUYBVGYhQq+bJLuw6mxZPy/34HKbxC14v0KrJX/d3GsuBqUbJXfsCuStoBlNEebohsainJgQ0JUJ35v+1x64cynx5d5FTXi7TwvkjmHDa+TlhIvrnfsWa/1uaTYx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776541054; c=relaxed/simple;
	bh=gdX2gGTfus/4npnVFJ7uY7A0gbTm3oGi28WL6msh3lg=;
	h=To:Subject:From:Message-Id:Date; b=PgIhv5aHd9ppWH1z/8b/rmGaTJXYwG/5JQ1OFuohsISjBbPx6Yp6jKLnEHseVVN4b7PI9YRDOuYkKZZial81+CQaPdLcDnX04DwnvPOm+X1scP23PLJPmrPsqMHtZ0ZtJDw1f05at+safhNRnHg6Rq5cb8+ewwerXSZ02EBeXpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/GwzwmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/GwzwmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF02C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776541053;
	bh=gdX2gGTfus/4npnVFJ7uY7A0gbTm3oGi28WL6msh3lg=;
	h=To:Subject:From:Date:From;
	b=t/GwzwmOPVt6de4uDYV5LVsPtNYP+zLCLhWb5l/zb8uGC06M9BhuSDhD4HRvKVLWc
	 YCYpeN2wIPay1IEu+q6Hjd9IOqwBz/keasuJRLnHpb2TINDNEyCWLBkyp3PcNjYQyB
	 eqL6DJRcgcN8wKvpNZ8fuvZVSwgXEi3RLDbuuAPKyWqlSDicNlbOSCW3RWuSEwd69C
	 F14/ivuAYDXI35EtzUuDuIHN4TNsBBbCFecYFRKadU4MryHKhxpU/LigpDo6RQ0Co4
	 D1pGF6OqOxuUf5C2llNaWevn8xZPuHaqqlqPE2GO7zkDtNSsCDJ8B6Zmv8No5OdeM6
	 lM4B6mNR7+Rsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA895F99C81
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654105368.13737.11019876297331853072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88773f24730373a3dd3889b000b06353c5bdcc2b8bfca94f799b7d376150e94c
Date: Sat, 18 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776541053
