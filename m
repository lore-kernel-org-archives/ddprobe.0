Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338CF225DA
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729823754; cv=none; b=jFgwHnPbx3hOlm81fhdSntm0sfWZxfoNuEmsSsaV0VovS94gtHA0yQYq7xxaW5QryJMUQx7vXP5wtn0bs70VUNiefuYUVA3S0Wh2DJKdv+J+9nHUz62vjbHzBa0Ua/iaBGigvT47Ff/J5gq5vRCmcfcNxdlXDPnzLyzwzR9wUOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729823754; c=relaxed/simple;
	bh=gUMTgLx/bCcQhoDp0gHawC7CU+NzIzwNMUXxnU3HVF4=;
	h=To:Subject:From:Message-Id:Date; b=S9KqI7XUu8zgYK7wnKg5tYElviEreYrEOmzhcjtNfzjPYJ4oqBb5aQM53ofLAOwJUuQiSTjo4Ga47VvWgKTFJM8lzbHb5OS6GvZjr71pvFmqxUdlAN444PA1jMrEK+l/nuAEzWwVlbctSURlg8ZTdnxtckDwzXI5e4rFVMzJbKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OybAZyO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OybAZyO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9355C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729823753;
	bh=gUMTgLx/bCcQhoDp0gHawC7CU+NzIzwNMUXxnU3HVF4=;
	h=To:Subject:From:Date:From;
	b=OybAZyO5sIjXwS9k6B13VTrQ5V6/Jc0PmU/sVsnkBjVOuv9yG35bAJc7PojAJmRWT
	 VMdlwc4o6oIF3ITAgft8/O09csJ+KtCog4ZoTfkDmdoQvP08WWIptwe4+FwRSAC7RR
	 4CIwsRf77QBKOhuMisLHDhAXeTvU6sdE+NAx2/S+NDvLZd1SCRgJfvYNjvlf3YyApX
	 jLK5pHtXWTdRJ+0fOEHgUX4t1i3Y86f975IBV1T868yokwuDgxh2JSKyuH0ng/u8H+
	 dNHpOl69rFjNc3BGxAEMUNnWRElpuEYNiNcWiBTIvZKQ8Zw9yK5/DgnokjLrdXQXd/
	 ESJW+YU/CzQ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99119D1039E
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172982375359.6400.4345366653621537573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09abcfa4c36979f7fc2f33e7eded338658e4bbb265fd7b09b3ae451e12a17fbf
Date: Fri, 25 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729823753
