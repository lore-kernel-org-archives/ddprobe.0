Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B5939EF1C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774558494; cv=none; b=t4eI1cUuOXdL8dC+CcXw5/fgAJJWX7ZmSZsBir/JfMukgQYk0pVNxQIj3DqwGaHNz0FsMXxNVkXvC/0MehOxcYupmW6j/kiNEJvk5oQm4T9TF2Fb+UQJ/5J39/eEJ79Ap3lH3k9NQWGBHbTMFKDhLfiy5aPAPQ3ZZr1uPUdNZR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774558494; c=relaxed/simple;
	bh=jZHUHkhxvXGX0oMVbwEGFkTIdIZ4VESxf27LDHIC/HQ=;
	h=To:Subject:From:Message-Id:Date; b=k49dzEBWv7Kz7hQ6yRkFdDhWLzbHAFKLNjSnTkJPzsIml24qYSYAhdtgMnSqtESmDGmcshL+AoixTLLxtw23g4IzmUoMU5CzZJ4cfR3NEAkZ3hg7d8gs92yqX9oTVk4URuCsmdyqTA2R6+j0JdTSXAhPE8HG000AwWOnqeSe/Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUKIezEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUKIezEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7904C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774558493;
	bh=jZHUHkhxvXGX0oMVbwEGFkTIdIZ4VESxf27LDHIC/HQ=;
	h=To:Subject:From:Date:From;
	b=oUKIezEGlAbkSn6CNf8kfjzSgJG+uvvjuUHomes2tPLO4+Tz+61vn3qdXFKi2hhHr
	 iF3qFqQDy7QQFI2VuPhGWn3Y33bbBEOz6pzqcDVh+ByPa8ONfZ7BOgGDU+W74o3wSZ
	 JsiNacFDHJhx+FFICSs8Qxh6IZX36M/DG/1lcj+5uLVmDVlcgAZB9JkgLeubHvVP0l
	 MHpqcUVEdU/xpBfv0QA/pISD6ZdLPDoHE9pmuX8BK34f421Krr9Gh9y1Ok987zxc1H
	 oEdA2XwmxJUBjD+NaM9udA7eesmiad9LXYIOR6p67VW9zp0vec3ATjFh/jz161pYJG
	 /BPZUtkc1giIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794A10AB822
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455849361.21157.10842281220430174576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851bef8038f749cf0dd05eb43dbba2ce222f859cba6de7f744b6374bd1ff2d90
Date: Thu, 26 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774558493
