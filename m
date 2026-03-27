Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1973E36E477
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774582494; cv=none; b=XsZsIbiyxziD44h8OjuGcQCRNBk1NxltM9RrL4Sca7Ww7XYSEWXcCyeZ0+Fe4wa8085suPpwcTHRl5/fsaEPN0SJG9BjbEisJ8NfFSddQCmwItJ8cQDEUZgKk3UfZhs62c/3sULVhBgt6+syFn52+ddobUvXtwymQiVJOD+NcEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774582494; c=relaxed/simple;
	bh=QxgXACwBxj0QNv7i2y5yGKoAw7c75UyL+bs00wm3E7w=;
	h=To:Subject:From:Message-Id:Date; b=bM1i01JBjBK7eB1jp/1uuA+8jnQwOPl/BOP3EAkk4GlryqHOcVZaxtCAk5YHrveSNfU1MTJYygfCamggjpZJoSvmEQBxysNuU63fwdkWO3Tihg8VdQ5FYIADzGl+nZ1ElE9yL9Y6igRZ55xo6CM2NGvXbt/B/IebKuktDiDWhVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzAN0O+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzAN0O+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD2EC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774582493;
	bh=QxgXACwBxj0QNv7i2y5yGKoAw7c75UyL+bs00wm3E7w=;
	h=To:Subject:From:Date:From;
	b=nzAN0O+aopJ9tjvapUcUYVti/adw53x3oOQYAzLX6HKlMaOLt+ToaVM1MJB/4KJC0
	 cv+qrvuCEKaDRIasUu4ueCSEulPYRIkwXfd7SUqv1YtONrcBcb0fV2qpszFURpUo1g
	 PLT7yIleMfonTIYMBfvdlFrU9clmE6cHAiMfqs2IOFZIzy3RJ+x7NY3HBgyYPRgZit
	 SrS1m9aL1ugf7zXgQBlMIBli9kxHus89wf9vBJa6QfCeH/wNG508Ea4RlEI+LuJh+L
	 zLx4j9JnybGockWCqkchtva/9kPbfGwgWmuRfBWdi0LMKm3RiM2rEwRB+8nqvaNCI3
	 GRd2/4nVSW1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2110BA423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458249359.5679.7751761364179778513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f80e29333c1799fcef1d0b44877f834cde7d93d5eaeaba4e8327d4f9962dcad
Date: Fri, 27 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774582493
