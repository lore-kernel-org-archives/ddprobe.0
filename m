Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C61F39B954
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786524034; cv=none; b=TUzU+ZrP1LsPD8ZB6Ar0K8t6bIxf2kXEx6mWEA8g4lawk8lK1QT14XkiJNGjUawJRX4F4UsTCQenfRWlLqIwYsOh1fXJcmPEdXMSAEgP0RGQ/7Z8ghHJOuNnohADSroOzQiRqQBeFTtgnvyJ1VYTR/j9rf0uPae834gbwNvmLG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786524034; c=relaxed/simple;
	bh=JfBvJjO85srU/c7lx/NZSxvzQnWvj6Xfq0D/AJMEceM=;
	h=To:Subject:From:Message-Id:Date; b=Ip1zxLTy9hLJhuUacUqGcRdkdgdc9Vm2i5xTCbOtlZkYZsSDRS5CkYOwyAoQSc0gY7Xxx0qVUc0MQuW6N/nKCHCRdmSN6791xDlUDC/UazA21JOGUIhr9aGc6c9t/3vNuCAHS/OxxrkUZy3S4wXEELhTWh3i5DIxoW7k0Vee6WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIDPVfQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIDPVfQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF51DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786524033;
	bh=JfBvJjO85srU/c7lx/NZSxvzQnWvj6Xfq0D/AJMEceM=;
	h=To:Subject:From:Date:From;
	b=lIDPVfQrtZJ05VlZLYCrKwmCoFdvtNDa9p1rNL1NnNYEa3l4IN9xYWN7Ke71NKWW+
	 TJOkteA50qlSyD6X0spJ5KaHnmmXdBfIFkdYE1o4iRa3PD74Eyc8nDNfvLS5OLyqA9
	 qPtJVuQk3YXBOsscepSjWx1K5cYyf91+RWlKuv27rzGrCMbUUSdS7/EFQEoZ4qsgAN
	 CpTqwN6VcrAZEd/oi7cXiffopsfKtgHe8abVu49ggfGmKM4SRWlKbRth83dY8Fnuoh
	 YLOiEK7G8eMF7VZsaN81AoCxdu+R0suZo/OO8XQsZMAUWUPE2xAk8Qw7Izq5CG+Hf8
	 0U07ZhGtbtS3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88CC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652403370.7393.931056511955456810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7437d4cf53497a20db755fcef6e2caeb17af98fcefb1edceeaa5134d427774e
Date: Wed, 12 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786524033
