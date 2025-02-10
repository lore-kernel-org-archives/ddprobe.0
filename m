Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F68E253325
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739226954; cv=none; b=t6o/B2pUXEI/jDHRjBMlZnWLp0AQs0svDjee1Qffdb53FdlwldX/yq9yIDTIl/oUan7F7xvPx52CfTENzdBcubEZZJHAeXZtQmvyWmJ0Iwh85a/o2SDQb4VTby631y5WP01U1W3/HPPRM1cyZ9/HCdPgBtMfiKDjc/qZWSNhsk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739226954; c=relaxed/simple;
	bh=hTO77+cE2T8xRSXnXWT46ES2ZThEokAssbVrCub2DSw=;
	h=To:Subject:From:Message-Id:Date; b=cFuqqUxxkGOik2sw8t0WrNGpsd3wD6+yTYzBEEK4Z5Aq4Dy1mXAyKqip2+/ie3RUs7n1SoV3mgwCNls0GTktYbukbMdkhtTiSTWuiLZvDL2Y87rJwqZYqgbEjPJiIISvzFTdssit342zj8Na0t6QBFDM7vShNCBio6EC9b8HZQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikQ0G826; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikQ0G826"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59AEC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739226953;
	bh=hTO77+cE2T8xRSXnXWT46ES2ZThEokAssbVrCub2DSw=;
	h=To:Subject:From:Date:From;
	b=ikQ0G826Ll09ZuviYUp0o3Ec/gibLiZdPDFa195d6wU7NwiKnv06pnO5GvT0FTk5Q
	 2vzjBy0eqjlhY529ORy6kK9CvRwmWqgfvUrRuTJGLDsU+bNKvnPB+QH6Q3UvEmpgja
	 hWmzz4DsQnJ9ZHrjZKioRqsXa5amX+/fiOoKCg8DQ+l0i6QBO2eMXwwnnx2K8m46nS
	 bJ/A1lkzDiYjAh20k3LsR5asMRujAvSDnjnaH99zp3UAfoUClSXEnHxwLTDaYSZVk/
	 jBz7wVbOK5op8dXGK1vNOx0ZVDMCreApdZKxDJnGQBcFEZfAg+M2BOT1RxK3U6LtIU
	 E16CfarOel7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3C4C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173922695360.5186.18100385664785497793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6e577e3638147f80342bdaf7f34faa79164bbe6f4abd83c527ce87381cf27a
Date: Mon, 10 Feb 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739226953
