Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5676E2DB78C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784072314; cv=none; b=sDKvPTbwlKF3pBmgZH1rBL2DCnLoP+XaRUfYOUAVlG0QxbY/TER30Z5rjaExzZezyvC6PZk84bZpq/JmJePqoB3GS5J03/nsah+0EFwFs64iHneNwwjbz4mzqcHPZW4Mxb0DLFnmgwat15w/p1gNkzfvQyDMRizXUf37bZ4j2lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784072314; c=relaxed/simple;
	bh=DKCGeX82jI5n2EVb5UCNs6CVenQcPWtIx1lmpM1rOPk=;
	h=To:Subject:From:Message-Id:Date; b=CME5Vs3RITTZXcd/Om5WsXlb0iZZX8q8pX6wulUsvf6PX7rhpq3Oy9URgmBnWnvwFJdbpPj/z3Cwtm6XACoCwbfliFFk+qIovZByPMrIvVxlVzjTR4y+pP5FCqEYxNdUO/fyoOEzOk75x0qkzSO9xdOxG+GdGwIunfIkO8shX/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLvLT3+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLvLT3+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7921C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784072313;
	bh=DKCGeX82jI5n2EVb5UCNs6CVenQcPWtIx1lmpM1rOPk=;
	h=To:Subject:From:Date:From;
	b=FLvLT3+UKAAEY4w2bkafwM6+lvh99R4thQXvgL3OGL18qInZIO5DKSvn47bGPipNt
	 m7BIEDT3L3Nad1psNXYnP/BIR+5Jmi027gEgBy2dx9D6dfMTONlGa/tOZvpprXZhA3
	 WEwgo9v7inUggoSSEw/67rjKNtrH0MH9WP3awl03TY4yAV2s2/dV4DJbVFdI0qqGNV
	 l1QGqS5hYXqClP+Y9GCtB7lKK0dlr31jmGzHa49/pXHm5giqepMUjtfnJqzAx/8yNB
	 /LFX7t2idFnGrgrTW813WjxoXsZ28qv6GHXtbDuuQQVmy8JMiVLEASqQpumIivwM02
	 kMpbv1WwANC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B67C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407231370.6956.14668925253193717548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d33d0b35d92aeebf4959a5482e399798152e4571f14334d0bd47c5dc82db7ea
Date: Tue, 14 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784072313
