Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28920288D0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779069634; cv=none; b=p4bNJeuO8Kg0MXLuMzUUZfSYqXLlcOVWxjpc3hc7vdRuILOCrUXZdW6ypuNPY+vDM6QIfhGbgV8ikYP2KvJ5sO8QsP+1Koq33MWy8g57oAbTffeGZkX7VQycVhx1IBmEP6qoVveDWb4No1SFq1wSt7beO7r8SJPVo9An2w++9dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779069634; c=relaxed/simple;
	bh=1mY0gUnUxDJ7ntoL3JPUrXgShTgB15RpqNneRtWIC8o=;
	h=To:Subject:From:Message-Id:Date; b=D5BZ27Q9WzcUc85b0iDoGfmneEiicGa8OyaqTyvGWWINSV3YJX9p6OIhU0EWMScHBcIhfM1gRyZlQq/IcMWaA6c6paffc51B7jBYzDwDJfCfALov2dvlr2lOn6P4mhgxI6ZSIF439GvG/7hl8JvJpnfTOao2d43D6zvWFDQZmU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBnC9s5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBnC9s5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F4AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779069633;
	bh=1mY0gUnUxDJ7ntoL3JPUrXgShTgB15RpqNneRtWIC8o=;
	h=To:Subject:From:Date:From;
	b=NBnC9s5v/aQ2Hh55N7BUeapcyjvB4326uWI/2QZIvlM73pE6d2sNBLzVusi4ZpXxv
	 VgQNR/hblxxCpKieLGWNj8jho5NiYrVXao+ceuOnG7k6jLMReEiGbwlNE8sQ/0nBYv
	 f7ILhDw9mtTnRuvFIU9AGhUSjCa/7USCFrBSZwHTfPsr2uYMwUQtQNgjsyt9cypt7B
	 y40FBsnLuRTC5WUOra0C4P3ua4vGdWMo0WByKXJ0YKqRzf7lH1tVI7jDPUBeKA0lzX
	 jJyD7+EVTYSC40RmozT0dtt77PSZpxBHpgWAuDOU4bGQyF1YKNsm0IFcl6srn6tKCn
	 MgM9Ng4sWVHzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18FDCD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906963369.9721.644305245046277103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510f2a33c65cd1126ad4da4b40c163cc136a1b4ab6c580680814b30a1db8ca99
Date: Mon, 18 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779069633
