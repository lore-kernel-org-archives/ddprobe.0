Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2953D38A28F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775115934; cv=none; b=l7aakHJLtYFQBRxEn86gQtIY700sUuzA2eDYR9ySseNnlXJKQoJd/vZ/qYOJQ/bpMuXXWWgbyx6GTBQHZhzg7fAs2nID0Ne/e4d+HASFUygeVyZl5HNNwcXNqQ57U/IXwHVXGBtf5j/KvWNObP5w5c6Rk9ndYStfsVVT1G9e/M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775115934; c=relaxed/simple;
	bh=e7a7VVoGl8zXoLZSlX257xuBHHloWJ25JpplrpMzDW8=;
	h=To:Subject:From:Message-Id:Date; b=F6QxrhGyh/7an6lFmGFQA3wpXkNok4Ts8oAju1kHDDK1HTFyBtZQG5sLPopIi8QyvUcCdXNuDV5egO7XX0kjOr8lCDwkKPvWtrMB4Ti7s272EWrQK8SaxTEun7jV8Jb+hPUfzYN8j+FsP/sIN/hwh5wm51AJeshRAHH01GE8/0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQaa6Myl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQaa6Myl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA005C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775115933;
	bh=e7a7VVoGl8zXoLZSlX257xuBHHloWJ25JpplrpMzDW8=;
	h=To:Subject:From:Date:From;
	b=VQaa6MylpeXuEddMEjeVwn1bfOZ8BVNIoar1CPPuXOEh53ABZvCL44cYPQvhq3g6C
	 V5M6Iqq8e8kN1M1iHKY7WhXkZqHHtRiL8RYL2yV5T9VZl399bDKeXmqixBEBG0KrCE
	 3U3eEz2QW3GUdXb3BTcODhsQV2yky8Y3i67XNkIxxtlOTOi+1BSKWiJChkbg2ru2Wd
	 DRE8pMeJRn8iNy7VmLqyhb5zFAzMjw5nWMRlqldyKmHwhnyzlphMXS1AswIG6iZcMR
	 GrbEcWGhCMI7RV+4YaiH3OUhkrZe061HHUXO5dr3aafz5fQD9jT9mRYVk6ImdMO/+R
	 I4scj235uXKPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8DDCC6B1B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511593369.10240.11541285330238999055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00708cfd51ca252c49de86e0c6d9410c8392893bccc75aca7d2001cc4473c0a
Date: Thu, 02 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775115933
