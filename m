Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5D6373C0F
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774142693; cv=none; b=MwzUfJcdF7cfy209LWYdxYN1RSNryGUllZVjDoODGy7AB3QCMz6MNGLMZiXvaLt4y3lkd08pIMIGk2Evf9G1MwBccTHoCOM9DO5DIeSmAd6ggXH9c/SDUko1FOW7gKir/HGKZy0aZ/DvKgwd2AMDgz2zd26n9hipw0eBhQfFW48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774142693; c=relaxed/simple;
	bh=hTNsU4CxBUi80GX88n53TqkJlwzJOJAYyoWrQrN75MI=;
	h=To:Subject:From:Message-Id:Date; b=GY8leVXhwo9z1J6l1SJIvFbNpbW6PjmR8M76y6lTu/NaqQwzeFh3NLfgF8UBP3+r07Is0z+oI4s05McArHfMzfcQC5Q7VXHzVgwyXxQzIo1C4GyGmAGwsU1FiaMzYcLhu0gjapTJts/RCDeijXPg03SQxWQ6P4J9jPlvkvhu9KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/YDs0XG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/YDs0XG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774142693;
	bh=hTNsU4CxBUi80GX88n53TqkJlwzJOJAYyoWrQrN75MI=;
	h=To:Subject:From:Date:From;
	b=B/YDs0XGWkDa8cwzXBbDqVAmWdO2yx7ZpEwxzHkcatrWn8w08bdFEW885Ojdxphf3
	 k89WUecT57bmC2SmeZvYhTGQ7jq45xW9/C4FTcQzS+s5NsCiJlRdy1YtT0IuU+4JK4
	 JM4uMBQotMGeXUqeDaWgBmSMzcKJDBy9RLxyry2daHSlTLq6pkzj57u/1ZZxWxONmg
	 4M+t0Vw6VCkZaKbTLfnB9EO/EFT4wcNcuTNwpCZlF9aE3GMP6yyBaFxep66m6b3yoX
	 ecnlmEiskzV2ohc8b7bqdAuYi8HJ06VG7VqrwhVCBfr3F2xsYlDZ/rfsI09fHDWSon
	 BiiWYpR/XqnnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375D109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414269357.8522.14666106236233079386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a21de8448859d4f78421ec82305f3181e8b85f33fb1fd0455ed9a0007e3a18e
Date: Sun, 22 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774142693
