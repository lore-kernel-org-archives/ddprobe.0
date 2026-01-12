Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9101FFC59
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768194234; cv=none; b=eRO7Ni+CZlcbWa4iTieCKYCQh7flV3yZxqVlRuBmGV3SLO8ZuyNpUTgCyyZQ/KHo6VrwaBaWY3XYgiPf2kYOKuPexwYBuHOTfnLGjhGN9246pCR6c1KkMzoFwXZKMCZqWfIuXJSETDRcalPPYkj+Zvc81juK1dtCzQs7QdOThl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768194234; c=relaxed/simple;
	bh=0byB1oFz0j+uwkRbT+qgkMEe3fIvzA2hW1YnY6mVtwY=;
	h=To:Subject:From:Message-Id:Date; b=eU7D7787RmhQP5XjBlG9uXuCwBj6Ovo0hvhMvc9SCm3WX3qrAfS3D7BmFlgKas7YnR5u6aytQosbeJpwsFRlQCJoVRT7Sa9HaneNDQyVfLKeyrwEwoWuNNxKd6hTxPp54fpj0dQydpo7Gaclz95lMwfJh3h8lAzebc+Rjm6XTxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzperq/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzperq/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D76FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768194233;
	bh=0byB1oFz0j+uwkRbT+qgkMEe3fIvzA2hW1YnY6mVtwY=;
	h=To:Subject:From:Date:From;
	b=kzperq/TxrvJtFJl+hCuZ2vgpkkWSz4glpzu+Yh2r4d0i8q1F8IPYG3VMw6REEQhk
	 bHsN5MD2uw4Bt2qWXhfjwxkgkd9jvAfDlZEHrcPZ9lSXVX5V5pHZIgxHHfaymARVFr
	 KU6hqgCvooCW7sMEUbH8EhwKl4zh+KR6z1hCJUWJXNF7CoKzONOmr0027DtZE3Kt1O
	 nvNVS6NImUxD7Gi1OhvTUOLDS5ThlqDmr9q7sgoVk06UeCh4efVErrgCN+TC2N28es
	 /bfj4oex6gBvuDW+kC3klZgJkNraQ2jzemImcLSPl4k0UAnXzn48bWf4sDUFHCdQpM
	 Bw40LIyAT0+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBCD2502F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819423357.18329.18158695352547170781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a949a85a11c044ee25ec10701f642dca4e5093bb5a6f50f8b6ae843458449a05
Date: Mon, 12 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768194233
