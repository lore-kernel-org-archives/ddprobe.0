Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E334028D
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779528154; cv=none; b=OVmckViUSm4V66medFONWPNd0QgUVOPtdZbfqLwImd3vcnclzLrt1qhxGq2Sv/gyKK9eOL6luInffSE408FyF/Tn6MjdBJdarWBAFomvAEter5Idm3IY+EFnZOYfhrEs3wm9m7N5/y8Sa2qqXc9RR1X5p3q9j8ugV/oDI0pLCg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779528154; c=relaxed/simple;
	bh=xWKytkuCkmNEQe9yRX+ZHntuT5nCaP1lme2guMHGoh4=;
	h=To:Subject:From:Message-Id:Date; b=MOBkqZmTDJJqHfqUp0WIQpP2Ms7ZMZaOQolbPrkAIcnjDx2BpRkNJKjGqC+AWWLCTueOAw6xK93vZqtP1pG2rDwyzGnBUndnQaIDkVp8ynEhpiEx90Dlk7tKY8lAaEGn/3KwuZhO5nLIi4hTfn1uxlE52mJ5OkHcK2GbVJWqlzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfLLHukE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfLLHukE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9002C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779528153;
	bh=xWKytkuCkmNEQe9yRX+ZHntuT5nCaP1lme2guMHGoh4=;
	h=To:Subject:From:Date:From;
	b=NfLLHukE3voZ99hT9lK+E9bJJuD9+o8+A2azm1scOP6L6GcDQ6n7m1ZZS0MgSIaJz
	 gRYo+Ldl6ZFrCNSscVkRTAA0Wt+Tel9KRZ5Ls/ewoCthwcZNqLJ6no9+oTzpBlIwoW
	 rzVJhUAbVUUgs6ubPaQaLpCHzVhNI7KAohgPqwdji8CBv03kdEu7cquqM/Jc4s0NH+
	 G3HNZtZJ22YC1twJq/ZBsmwO9ahhix/qq70jwQU0H1oQIFfJchyVhsqgihIqFr7mn0
	 FLRMt97dNEaPmxxJCaCdC9hJzHxYXX2xY8UdZdGxmW35aTvuxgiKSHuoRrGsWhH2B4
	 1kq7MZf7g+1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF709CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952815370.29310.8095040370834339969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5767c6801ffd6a1caf453ef33639de9f6dbb9ff2bc97895f627f7686bec7bd
Date: Sat, 23 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779528153
