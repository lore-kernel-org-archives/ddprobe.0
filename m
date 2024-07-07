Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478422914
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720345583; cv=none; b=m80TmO8+zswdkap/7VxQGJD6aNp7MO2Wuo5xBsxkQvb5gzioSuF3l0yufz+j0/P094U26Hr4ws0NMCop/yJ14NS133hIHO6KSVqgvXja+UdfwnTzm4duhMG0TYz2TpioJM7Qi91QyOYaB5cX66JtS8cZa0MP/bsrtGjpkhcG3VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720345583; c=relaxed/simple;
	bh=8ebgj9hXjM4sf2MNxZ4IHHLbLB1TT/ttzpV8uSE5nP0=;
	h=To:Subject:From:Message-Id:Date; b=jufwwhuDVK5r46QV3LiEfaD4RxEfj8XggS2UrBcL3mZIfqU8pGhuenZPQRklh/IU1x/TlYjtNFZIMNMjWhW71CARZlr12OUW2houRzCWYamyGcZOp061CYUoee0380e9eIzAJy7OWWxVn8q3owOQ5WkkEEIogrEb2aDjS3jLA28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg0242FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg0242FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA377C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720345582;
	bh=8ebgj9hXjM4sf2MNxZ4IHHLbLB1TT/ttzpV8uSE5nP0=;
	h=To:Subject:From:Date:From;
	b=lg0242FMeUSZyw+EqA3Id7oKPO553psx0ZbBPMdPY3MsQnmmclKghImMuLi8Sc5T0
	 zmlx2EK2rvuhVCNFJxly3UFw5e11bxpX3SF4w1h7JJKWHJmYuk4EQiz8zM1kHHz9RU
	 qNLdd/qDwY1zKhyeJPUL2TrESrJXAFqJ0ntRNDBhiDXaCWenTTTYlaewImMoc41yI7
	 RnedCDSX6/zoQSs3uhNYwcZxiFfmR1+AFefWe3kEsUXnKtdigbO5hH1bMHLPbhFY2V
	 2VeIXLiu85216E9Ip1iuz+3q7FNumDCky0LGxcr3Ro7ruLmZ0pSphUl3NWbx5kQfuV
	 IuZJm/2/83VJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47D8C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034558277.31824.4183943172035558590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3576c1909ad00b268f322b4dceabd7e7fe590d8901d3314a32c4bc1c754aabc8
Date: Sun, 07 Jul 2024 09:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720345582
