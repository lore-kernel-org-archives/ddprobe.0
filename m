Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5866A35C6A0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788975634; cv=none; b=ulzr5x1QHNon6tnQgA5QTZFkGftmt39bcKIaAvy1S2GK2wifVZ8Ww7eV7ComwOa+9J3n4nzu4xaxYjA11O7RNCIJncHwa+9qm1QSXEYKtACdga9WyRJgqB8MNXto0wcGIsBZCFBzMGkt7cYGcxo6dI3cMYy8SqatVfmG/+K3xLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788975634; c=relaxed/simple;
	bh=lUJ0boUCddqr9R3pipqkoLOLPrb1fddJQ4rTqj9CZZU=;
	h=To:Subject:From:Message-Id:Date; b=ec0nY98srlIN0QsgHGT0/L2acmbi0kW4AuGQtPI2UNQDT0h2oMmLrqzTFWuoc7y1FXmO4TvBym4dox7VjwB25lMnY22FM8ys+3j7Ss8wmcpbNl9thLKDrmjU2LGT7zVhFs2DQ9d4xNANeB5lEOvRPTdNOKeGl6eL8Xtkak8w1/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMkIcWqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMkIcWqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E279AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788975633;
	bh=lUJ0boUCddqr9R3pipqkoLOLPrb1fddJQ4rTqj9CZZU=;
	h=To:Subject:From:Date:From;
	b=IMkIcWqcSQLo8yFA8krD+U4YOMUANSwqt7QMWKW82fv4/kOa+TN+VikVpwvnkiJ+h
	 Dv2g47K7uL99FxP//6HXh0ClRvsBYi+azRKju7TTMWa5NduwOV7PHoUXjs2zmHs8j0
	 umXe5zypamANZsOTgkQ1Q0joqDdRwIFygkKEZZLKdeLnmJBGlQzl7qaOhZpxKLXqJC
	 +EzxgNdMUx4t9X3S5/7YI5K7/h8D94zNFyNaABr/XwZ8zbUHAOF0IrZm7Y1TCQOg6G
	 3duIrhzpHm4QJnN2drxGqmDkRacnaIoNyZXLdHNeYAFZrQRndC2sF0h1YN7evmBP0D
	 JxsZPUg8lij4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C9AC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897563372.11297.2516989718655978808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c542041a54a0707312554e1953db15fa22577fbbffd04e03a630c6a4317012c
Date: Wed, 09 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788975633
