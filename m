Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A841850BC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718523503; cv=none; b=d3wHR/FC/jPiIxnaLH77ERtcoVN/QhPrJe4ZJglYGhX/u1ttkuXMdzxvm2uTm42taESxhUeC4i14NCn/l/4NcmKHoiGEgBpPoTg8Em31jz6w0Al+WePTOO+e1mJ6MklZov9BcQ7GG9kPm1PbnNmXALcqyQjbQ36CRn+2z5eT+XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718523503; c=relaxed/simple;
	bh=aDR4hoMZ+LqHVm4IqfLYgsv3TDQpFNyxBKvLCypq5ps=;
	h=To:Subject:From:Message-Id:Date; b=Pb15fQI+DKHFPxjZCxUF7hcYWY5NH+wh/on8db4Dj1F7XA04lEMq94Cgx92sTUzObrud+EMqKqW9xfMLaMyThzwPs3nG5MMNnLHIboU3/lv7oAyNNT4kOqBMxsINxyZSa0Mjs/daXgmoKJnpO1vFRJUdOMCvKCnSA+TJES7v7mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWYrYhio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWYrYhio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D184DC4AF1C
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718523502;
	bh=aDR4hoMZ+LqHVm4IqfLYgsv3TDQpFNyxBKvLCypq5ps=;
	h=To:Subject:From:Date:From;
	b=NWYrYhioGCCXvuYctFgqV7dZW7psaF+hhMSmxO/fQyeMvJSpGmAIJmPF0CXNzrB0G
	 1FSRl/Jv+5xrrJlUaqIcWDKFpBW04V4iDgSgdI3myraqEsHwEYoRltfjo9jtfravbx
	 qGLVePCLIYhOqtvlcp3goxTOZ7YKh8OTPe+9FrygjbkBWbQy0gMZN6Cz+3Kv/b0eVv
	 BFv/hTiz6eEHhnLI/BYn0UbNKACGu/pUsPZ6zQNYBE4TI9FJvyMN0yYz+ruHeypVRD
	 8oLgj93ptelr2DAJzeMVYLkxRRKNa7/zjGe1dBKY7JPQmzxFvdeMUbUOObeV4BWImy
	 r+HLCCk78E3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16A1C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852350278.9965.9859705713941646937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9864641055e88d36b892cf8898357f28b89b3102ab09cbb050ae1d558aee761
Date: Sun, 16 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718523502
