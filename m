Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D4A16D327
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716905663; cv=none; b=Rq1DHmCydeLvmctJdffa3vswStuggHVnMcatwoobUlYb+V1SDrs0sP6aV1migngBrdgoZj/mAtIClgsoHMLSgXJkz5q+c0Cl5qhBmG0s1TZ8rshy2324R/7mkoK2m/EzRmMTbkHW5pq8R268vaVVW9E5pdIKX6GqNhNoHk1ayDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716905663; c=relaxed/simple;
	bh=jPif6eyMGIvQjkQ0qdR3dZe8uDHrSvko94N7ecNpShg=;
	h=To:Subject:From:Message-Id:Date; b=sbRh65uTAABN6goBqtGIWjOXv0F6oQUk4QJCkK9qH6eUntMekLQpF735/74Fwi2lsyCmxunqFrGh3NUs0Puk7HjZc2si59ykslnOgnzQZEKB7zOTcPtu0R8FeBhvZGTw38LGbaxf575ru1hTFRLKLYhdcbQKh2MKtg0ncswVtyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc5Tfpxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc5Tfpxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4711C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716905662;
	bh=jPif6eyMGIvQjkQ0qdR3dZe8uDHrSvko94N7ecNpShg=;
	h=To:Subject:From:Date:From;
	b=Pc5TfpxeTYxWwPUR8a4GEawqSW6OaoS5O+H9Ui4nL1nfSCStyC0qViMiixnEKE0Ma
	 IrFKnEg26dZunDOmjdlgh2o5x4KObcL19jzNtqdAot5dZoEG6jK8LkMCdF0J/h/yBZ
	 ICXnI0X9jxR9tJUN/qKJbOR/t4WwNwhkGgVxKKe7h3R5uVJ5WfYa3eEJfuYeDoqIpF
	 SQdXUeNts0UQimv+0Qx1e+I+djVnQEZPRbqhD6iDXytY4/jqwOwx7+KdUKOUtLQ4Rq
	 8Q0PDV+IZmATjH8g574ZhCW9AqdxmdhIihMh79RHI+wZX47l40uNQf0qZJmQp7oBnO
	 V2Sr4OtZaLQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3436C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690566278.22531.13524087704565749935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfb8dcc7776aa00e7a49dd1b1445e0450f6d20142a7ccae59082fba6d4a27fd
Date: Tue, 28 May 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716905662
