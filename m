Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B5329E112
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753948794; cv=none; b=bviqtlJReQI0ZJieIf5kVPUhhdrwz/UDG44U4yWcp+bngD+aZ6N3t8oWS4TGsO0MnXQAbujWPRv4Rzl3o6jtY7jxUhc2E1IH4A8U/YGQt/K0yFRhJUxeYCwsy9YKrW7QLHgZ2PKxWLcRXZkPY3X75hcKe5sw9BiqNkejWGvMW0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753948794; c=relaxed/simple;
	bh=Pfi3rds3ZcV0pAg+APrO3JLo4zLyZ6Himo/ElXP+ChM=;
	h=To:Subject:From:Message-Id:Date; b=eUQo5dPdsKPR0V1Hxu8PCySVSemTPbIElP8+WqVhK06Ll6j6EYoA4sbhnibiklllv6M6l0gH6tsM8tpoPMBUZtL6JJjLsnq29PNAFjgSESmulpLye6VUYX9HvbZJskpCujDTXOd3GauRNggofOcn3HJn2/HQkI4LzSEkITu/Qa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ighr41Bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ighr41Bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D927C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753948793;
	bh=Pfi3rds3ZcV0pAg+APrO3JLo4zLyZ6Himo/ElXP+ChM=;
	h=To:Subject:From:Date:From;
	b=Ighr41BifWcwckYnxhvUHYQ/pc4xj47BiWBZflwEqPpLLQZTTeeeWCpm/bQ+Pn3Re
	 tLWvSCFB4hq0GRGA2n5WFkNhRlQzGSKB0JA3AYLSJgYvuRfnXV6XYzd/RoAwFqqesv
	 72w7DK6eXyOwqjXTwot6JgkTCtQp0MVtWLxgUfN7JEArxs0JHtaZkaVTH3yxDMLf8b
	 OkVmdaWFvenLAYCbG9lFXdSX8MwXbHiG6LGC7Bg4HYt4Xv/kWVvHxuApGqndaB8J3n
	 ++2Nik1fJuQCBDYcO9sy9Z+0TbztAfPYI1eLL8vw9elxfjiokyhaLhZfmt89i+yK4R
	 IzV+DJcIoA0wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE0C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394879357.18848.252275804766278707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71263db76f680027389da7396cdc1b64b6c38c01cc9682c4a2ce822e04d4c4f4
Date: Thu, 31 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753948793
