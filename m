Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D1518EB0
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727652354; cv=none; b=co0Zkh15czqNgwXn8sm09yBx9ItzLxDbw5t2i4awn1v7W9ZGfvIvyA6vWdonWvXVk9fH3xenbYRok02xU0K+cpxQBw5rz14TzhqINgaFJl1E4vGCwwphj3QnlPuJZTrKuqkveqFFUcigCYfdNdZApYTDhH8ks9eSCYX2JvQDxxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727652354; c=relaxed/simple;
	bh=Acw7zjyHu8p559i/BdH7zUnpdyhEZxtLXlhC6MfT5R4=;
	h=To:Subject:From:Message-Id:Date; b=kVi2hRkX3a3j2LjY0wItmfR2qPYiLht25/FsN1RNdxSeD8JIZ2kUlp73xHxcD1cevM99seetSLtrJArypYMTPxNF3p0IcIAvWRt5zqy91k0/id4aMHAPIr7qc8Niw1Uuenb4CSQScJNuCBGGvTKy02Ha9MF/rp5FoWnRciYaut4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJjSfV3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJjSfV3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AF0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727652353;
	bh=Acw7zjyHu8p559i/BdH7zUnpdyhEZxtLXlhC6MfT5R4=;
	h=To:Subject:From:Date:From;
	b=dJjSfV3yCOp0rGNplBv0LpUAqyl/Ahjw6fjvjlmpcnH0IUiwHI6jF7cb/+QhmcKoH
	 ra6GjgVUq5GTL+TjAMvvPGUIShHkYbcyikhe7eWDSoKwzQXoxVteVhz0EP2VNmT9+y
	 VQDjt7m5R7cGKycO6vuymp/E3bJI00D9BACcPR8TS3mgV9aX+LW8jFFh59cn8gvvhA
	 1INGK2qPbqpB+sRMTlNAX5o6ir8Trj61aWStet+IYncRf2SNrU9PxdPJQOmz8zeZqw
	 zBb0evUNzM82t98oCYsItu9Zm2g4P+VW08euI8A+8OXGpWET2qU55ZUS4NghPv6pNZ
	 b7KVPAOkcB1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E037CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765235360.10827.9987780619996589855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f053ba0c604f3f23c85103662bca4c217ae71cb292879db8b70fe78a015daa3b
Date: Sun, 29 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727652353
