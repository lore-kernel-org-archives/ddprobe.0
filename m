Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133F82576F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719765263; cv=none; b=Egm/kqkHYPieuVNwLnmwB1eunmDUsWER6NxYuanSHOI4jJaKC+XaEbu+QfeSM2w6BPb2MCkJPFMeQPVTX+cPmLNwPXK8sew7O18NcK3mNYY6nXsj0efckEWeEsv+lgvERYxQzopZqVIV+MDOYhrW8SK185gEiqpxBKWJGRzsIYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719765263; c=relaxed/simple;
	bh=rareQfXLBWu7jMBjSWOiSVcq/xMxrK3dRX0SqBqAFF0=;
	h=To:Subject:From:Message-Id:Date; b=ExrNyTf5cBly6lQvnemzf+A7SCvWulsa2T9IaXJxLQercK11NIsGDwcVdH2hujcFl/lNNIp9e70EMpNEsIX5tWhof+sINhq/5K+RmXoF+PJ2c5xI6G4jmYW4sHugNaqYEVwFi6p4+H+5ih9AgIv1RVRezG7LYX9gSZYaNloxAwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToCQbwiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToCQbwiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62AAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719765262;
	bh=rareQfXLBWu7jMBjSWOiSVcq/xMxrK3dRX0SqBqAFF0=;
	h=To:Subject:From:Date:From;
	b=ToCQbwiwUVgB8AXrubi1vb7bOfb9pIYYaSB5TC8U+wEPAuRK8COOVJppTmOzZQiUY
	 Wis0Pf2zbRrBMxzjEGpWA8xX1djCdSYVGvXdkMdoAJSZ/wHnWQLSUEzDNn2dxuPNo9
	 2AkgM5GYCrysQHDeV7tWnweMA0Qk79aksvtexV6zd43ejLcGSFlb0XfSlMx82A5CAr
	 5BZnGeC+OEEjJYBKpdNoZP3RUHf20G8yk630oN0HCJQVJk3KwIIihYdHBk0leWdeS8
	 H+sXi8UltNuMHK+zP9pPv7ob1sIaPC4TPvc0jtErt3YvDj7ea5tXLvL92kNQ9p+N42
	 0lirR3/PnqS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D5AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976526278.25749.838629774853180904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96eca0f71c8daeb38522f0523db5ca6c6423b31b162b692d08ca07694f188c8
Date: Sun, 30 Jun 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719765262
