Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C383EF675
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781691394; cv=none; b=Y7Ajgsou4WGWRMQmjyQTXWvnzSdb0ibaUTzzaIUWneabL8heMuT0uV7PgR1frxYF3+hGjccTHuVHWOYu74cJ5/p7oIpLrS6lvdlS2kGCczXdCRbGv33N8zXq4BgiW17F3s9BhQxemsih4StOxAtCBIoe1Jretip5eo2FnZ25c2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781691394; c=relaxed/simple;
	bh=+FiHbbv67DX/bg0O/UQOJ01xMpLP3nmpb31o9QYqkmM=;
	h=To:Subject:From:Message-Id:Date; b=oGsZFozloAJRO5IRiSJ1yfEEFkzocfT4AxYCfHprWgY6Uhn1Sa0UbT/pOIjCOvcvebNc/JEt/9nnPCM+F3S+lAUcO7qA/kfVEogHwFrjjeNcKNxodQcuGKBM6qZj4Zay8T4br79kyJs1fOWjEoovw4ZK1+QMuSbLRMzd4MQMe34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWjzySB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWjzySB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16D1BC4AF10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781691394;
	bh=+FiHbbv67DX/bg0O/UQOJ01xMpLP3nmpb31o9QYqkmM=;
	h=To:Subject:From:Date:From;
	b=lWjzySB47KlMiKd+tvCq1WH7CGzbyt1GgMKvkNNaz2YlQ3g7/NRL9R2NNdIsuaCU6
	 TGnxKqZv20UPS7HTG3ln/8nc7Ja992V79bWKyzm5btESbpIm5qSCnkrdQiuPQ8dOOU
	 OAxD8NIwZofJBDD8evKBIQNLzAqqMWD6VUQvR+PD5wdF7/Wa2dr76kcwsJO7NdzJm8
	 MNze0BhO6q3u6WVpKU1AJ6aZwtq2m0nl+N4yL1AvMWF76bvKjJYHk9lUzbTh+mOCFd
	 tb6zox8hZTSawM+qKgUZzuGFf1bDskGUZ0MBeYxDhzu6A6rxv0LsER1oQbHnEz0Dob
	 IzTL9b17jeNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8785CD98F6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169139384.17458.6428092418371754851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38c8746b3354df1fe6351cd640aac485299ec84805bf622d1da823d98d69ea8
Date: Wed, 17 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781691393
