Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE021CA13
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787705434; cv=none; b=q5iT6Oa0ZTBnWQ8MfOW3XVq6EVkBOSzgC5ZHrxbD9Nzj5hiPDRtP9TQBuvEHP0zNBRyhAnRSKT6Ef8urEg6ZOScT2Svqs4oTb2E4+rqWDEDdpSbCQecmNb9wjxVFzjdeFli0DvgFVfmN+2bmlvCj2orZjmG81Fj12Pzv+sRF5IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787705434; c=relaxed/simple;
	bh=cHUzQCh9VkVtPXMAmZgBae40IKZb81KBwbAmPEJJYLY=;
	h=To:Subject:From:Message-Id:Date; b=CMM0FqNZcE3e12+v4B8N+pOLOT+HgE+ofIoLJXMeKdI9PcJZPBukPeizFKxuA07kXvKXlIxWSargZD6OgUHt8HCIdkQNqj1W/EsB4ddIDmaRQaJDNYx3NraafuY9FUkZ2Dbl2DQE2QFOYfEGAfQ3lEueHHpFhjbFrRwUJifVTF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5BXgxOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5BXgxOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A7BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787705433;
	bh=cHUzQCh9VkVtPXMAmZgBae40IKZb81KBwbAmPEJJYLY=;
	h=To:Subject:From:Date:From;
	b=E5BXgxOeISmuxniCC88UOo4y9OCM9Fg3+rhKlX/x1znyJ2AKYreCoQKFvpG12GOle
	 XjMW/WsYkT8Imd96vQszjdbUXTKd5+gLDoLDczQWlSXK9FYufPhKCAf5kUMpcM/Xjf
	 bJ4dyw4v1rPvQwwupHI9/9TByTIGs+fIqiXrafSQqtRHR/Mob4ZE6Qy2FKIgvKbfkw
	 hfz+Z7VaH5Do4tE4edHTjzce6y7y57Bq2tqBdix6p/0b8O+st4JzHQeSvCf2mFPIUm
	 hBR33GL4e4a7jJZpbyXdbqYSmrYJ6pycnzc6/PjR0TtnMB8VgMc+5IEHeWmehAyz8f
	 UUN+aq6AYV0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19E5C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770543369.12084.5153704221913790081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e441a4c5ce0dc736162a6846655c11b1ea538c70d39eec1172daaaec83caa6
Date: Wed, 26 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787705433
