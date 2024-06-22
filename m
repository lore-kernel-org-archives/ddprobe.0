Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B4F37708
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719088343; cv=none; b=vErM5Sw86gbTugbClbPyeQVfESlJJMvox276z2jk9nEbnRkwjPTfJQ13dgrlAMnPzkEbq+MeazsfA0K8Gq+cZSBeM/cPUcEBd8AI4QIfNDk0olkU7ZdLLh458tBJWy93W96OZgJcA2uFEtepwYEdUQ3MahpUvIetVoEawUom7qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719088343; c=relaxed/simple;
	bh=s1Nb8AjMC25hR46r3HiCHRr7uSkraBObXG4x4wbS8fc=;
	h=To:Subject:From:Message-Id:Date; b=PoaoJqNWKr0rMqzAtxIhZevQX4eO50z+QjzxRuthkD9sMBx7AMKchrcyWI21eP0AICurbv72UsA93Ck4NjLf7aIH6ydGtqUBVIgovuShjs7gl0gjM0odZcYEp00Kjw11AqnD+e4TudPl/SrfUo9VZoQ7FBXHGa8cJ9i5Zq26OGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8rYTObq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8rYTObq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC54BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719088342;
	bh=s1Nb8AjMC25hR46r3HiCHRr7uSkraBObXG4x4wbS8fc=;
	h=To:Subject:From:Date:From;
	b=i8rYTObqAzTnGJWZ1v4P+nXmCIhblqFT+5ULf15hIucgKEKZOj8BKzCQAAt1Axphs
	 7DbzZI2z/alRlnUiemydZ52azxATMekbHhfwcwHtgnKozX7R1eZQ9kdr+klRqenxx/
	 VAakLxHWLh2u5VDOP2hma1SbqgVph1w+9fc6X6XYbY5LgCwwdUAfPRyaXudEkwzxkw
	 UEu359xoxcTkj7Bbc6CyJF7tOjuWeBKZpXNa3MAam6LdV+2FiLujMb7DrLcYsqqX8O
	 +vVNHGlsmE1/vEntFxHhIvQ75ehTzV5yLlXX+8qO51hLBmB5zSVjyesVIOD0iTsRh+
	 5OqJkmAyDgsAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C883BC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908834279.821.9350670117767292528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d50ea6ea5591f4f9676d8aba22528ac2ee657eae595304d6daa622286559bc
Date: Sat, 22 Jun 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719088342
