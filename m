Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3349913DB90
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724714154; cv=none; b=QoSzvcKiMnE8szoFAcKpYTXu952tUVF4m1PvjURSt7SfhdywFVILfjl+WT7bB0N6zUrW71W+5wPKQK3W6up6uK3e3RyDRBY6sZR7cgV3D2wruOT5geQi2yDmN6tbDrtUz+o8CGDjUzfegVRIkjNhOE5TZtsZPvHMgFfwBtF+q2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724714154; c=relaxed/simple;
	bh=1bQzvpMRKlaoOsuDq/ue2zV+crCPu3xJ9ILzu3jBJlo=;
	h=To:Subject:From:Message-Id:Date; b=kgvvtMA16ckmibqCS2n5hHUAN0mnbwfwaFinb2ADqMveoXEADt7hBf+CKzj54emCUq6bTYdbr1neGeQXYVbdhmDyIIF4EbLMJzBMHX40qOkW7PNL6rN+MmZqjhyUzR19JeE0iL8FAnM+B3oy12zWRPSPzWb9o2SHoj8MrM8gyDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gi5ZCGxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi5ZCGxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8820C8B7CF
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724714153;
	bh=1bQzvpMRKlaoOsuDq/ue2zV+crCPu3xJ9ILzu3jBJlo=;
	h=To:Subject:From:Date:From;
	b=gi5ZCGxsah9gr8N8usMGW1ZhAp9LmmmJ1zxasf1QZAfuQUFofVXQU8xXkRUTgQZBB
	 aF4ekkV/m4l0aiqqy3RNhteZx3BUG2Rm9Yy86/Dq/beABwfKzdMjQj9UX5WIOxrR0D
	 5kO6DNWKn+C6AkHaKCh4rtpcavL3W64rnnRJySPMdCQ/MUKKZGIMMV7BX3EXk5Ji6s
	 JuaKH5ZljR9EtYuX7MooXT8oT4im18JlBO/Pg4TYmohQltpkLBkuasU2cB0iTL+bSY
	 ghUKGlj3q6zDYOM+VrGg1+iI9E4Od+A3eztH9To1Ii9sJfUWd4Gz8Y9DMF7Cx9Xxs9
	 Lcb31C5KWUyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8CFC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471415361.13190.6745414419500437424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7258066083a38a7bffcd04c5ae677b25273711166214427c0c8cc4ee83efed
Date: Mon, 26 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724714153
