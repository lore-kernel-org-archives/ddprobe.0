Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CFBA55
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718827763; cv=none; b=evQR1GbsBB11ekZklyetu6NuI/fx+rffmfS2I7Vj6jA3m1AkV2uCGm1221rxixz0FKbNk88Jg5x6MbT+GSb1XiVW+jz0zNEDuTbc03cG6KZdh9E5olF1dCguz2u+xUN3pVAceltXkwvA0mzG2w5QBUYbR3SF5Ua8VDe5Q7NayRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718827763; c=relaxed/simple;
	bh=MvlIJtTxaY/zmmKjY6ZXANRTSFeyXENIZHYaiMXNrgY=;
	h=To:Subject:From:Message-Id:Date; b=KpWgEkjYINhDxRJLw2IJHTl9cS5n2Fdf1SnPuCW+6ofNztai0JT/PLSwYJ3Hcwg/FjnbV0TG4xSSU6fFTrVQUk6KkKh9xPJmrrzynHNu3c4zlVYl2lXXG2VZSOa7IYZzasPxL8M5Mjj0dsE7DzNi9kHJdF1qKdCNCImjRhIDx0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR7J711m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aR7J711m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40C7C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718827762;
	bh=MvlIJtTxaY/zmmKjY6ZXANRTSFeyXENIZHYaiMXNrgY=;
	h=To:Subject:From:Date:From;
	b=aR7J711m9SdiIXe3VL6CkfhM7irix6ZBAQ5VgPrGTAHs1RxortCIqsUu0NMk5vAvg
	 5Bz05GLI9JaRrtS38GmMckwloyfU5NrW5uH10wIgMq+iVsclvlqKauj+9pVreGFVtE
	 uPtvN0FrjNokDmDbpo/u87946xtx2go48GoDTZU2UFLSUWwVwDLIV5dGQQQewstbVQ
	 6JnC5Z+G0mpjaL5ODxmr9dkSxUokDTo72rCxgJpo6dXIas2t7v7xn3RSyO1gubKFM3
	 oOw9jxj82EMEprswkCJd9/z3dilwPQDlZHby1KQq11mGb9yS/LgaCFaxPNIR4p5X7f
	 ayxgQYb7ar+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2ACC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882776283.11106.1741193243878621626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53300e729db26895ef042be689ce6822de4784dac9d66d627229e199b49305b
Date: Wed, 19 Jun 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718827762
