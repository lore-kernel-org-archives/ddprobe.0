Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DF01DDC28
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747058394; cv=none; b=QuTD2HnzZyVKT3fzlubrVh8q1NZZKYCg6wyjk1Tk/KLAyIAAoG8OddQR1cNr76Rferyyray4X0bcorxjdph4bzACpC2nk2StCskNh5B76f4TKf5wn6sKBp5xjFNXEwm6dAR3CLzOu1oUEhVLVs+rd4qNnH/swarUHd4MIyZrKHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747058394; c=relaxed/simple;
	bh=uoaSp77W9dFI5QKzuaeHjQ7QivV+jvBbbqMAc7zxpWQ=;
	h=To:Subject:From:Message-Id:Date; b=NTZgjvdv9aUL1Le84Bc4FGrOO7xrMAClb2kGxeL4W/0AvQXvq5zCnhc1lt8biI8qqboc6ftKCLvDc+saMoqZZRbfASVlLMPaGmvy7SiP8B5uR9m5QjLKbf9HsWjKMDkQ4K3ZqEG/PhPd9+P3RsGFmOORNKue0RjwqhR14X71Sx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQD9GziN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQD9GziN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDDDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747058393;
	bh=uoaSp77W9dFI5QKzuaeHjQ7QivV+jvBbbqMAc7zxpWQ=;
	h=To:Subject:From:Date:From;
	b=RQD9GziN9Y/feBc15v1eeSUMaqQUwdXMIgcEmDFxWzzKLsDLvOyJa17UxQ8+12hgg
	 QBIK/v+0bNRhB17CVZA5IyeWL76A/ZpbN0sGrucMasgw6XYVxraIX1l6iSu/tppzer
	 meDgp1uIaKfP0V+prQHuqKOZLhCoTINIhTW6MUbYJJQtnbn0HwzCfJKRgWo5emVihx
	 18YA2fNzbCs/9iHkNRerbEv/88samjg7Vz3D+gWbDf4TbOkDL47i2HCJEOJCcaN1Ei
	 hTZqg/BpvCnbgNTa7EguKcAZo8xUU6irk11AEAsQz1auvXXHs8e4JkyKSByQeW9caL
	 WI29lZ8XSA7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F440C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705839357.17136.13751093544736171978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a26f65f14fb04ba8721f36937008c7716f240474937a1b66ce110e782a3d6e
Date: Mon, 12 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747058393
