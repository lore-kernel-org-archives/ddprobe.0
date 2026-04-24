Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C5325F7A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777072654; cv=none; b=Qdrcrk2bMsoGgxTkN2TC/zhYkugAn4JEkUR7i+HY8PoAs2uRWHmQ8yIT2c+2tKJZrU4XOUsevHt6Te6jwItZiMOLwdFUEvT7a4DzwuTIfVJlM520a3hmmkZyjrJM4ZCMUw0X5MI9FQUOy322UIASvqDvcGebuLejSEfC7UK1tBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777072654; c=relaxed/simple;
	bh=Ov4xRxqfjgl+b1W+bTBpbLPiqganEsagq/gTi/ifrFk=;
	h=To:Subject:From:Message-Id:Date; b=GJMcwoBzS8G1CTwPpOhCDHllWIu0Y6MV9cQbPjp5h/a8hpYNnfluALagsTW32Ay/Y5CClHkeWDXF7cTBbG3GUHdkODTsn5j+seltkljqKeQhGAdG9ENXwPtTzSwtN1PhJ0SePTHwnL/j4MtNygTLwghvXMydd1kxCJxlKZ5mrJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiF/Lude; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiF/Lude"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A45C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777072653;
	bh=Ov4xRxqfjgl+b1W+bTBpbLPiqganEsagq/gTi/ifrFk=;
	h=To:Subject:From:Date:From;
	b=FiF/LudefqPQ5lF0X/pai6rtoTsr27vGl0CVw6HsiwV2MSU2PAKyKgLP36FDoGpB0
	 emMY9xc0p980Fg7g8oGajD67FA4JqeR4oE7wh/kIHQdOC76A6D0opS4ZC4R661kumd
	 Wb++TN6mAw1ph7G9h5ae8Emo89/W6VRTKD/zhLMSTNo8YyaUrEZ2gESOy6baPN1qxT
	 0ksEb5AczDPJMwVLojQL7R/sBXJEq3eiBegf+u72Ro0iolPISJi9/J+qkySeQuIvH+
	 uUSKsKvUwIAvXUfzhLHi1aXhSnZqetnDkzRuU3DEFlMTR1uxUEtIq2+Aa3r+I18j71
	 GVcmA7Z8kjQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B89FF885A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707265368.30458.16226560150548827010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a0b627bb13c6c7e2b36f4b85d3dabd59f183c80ef392c4a5bd60bcd4ef81c5
Date: Fri, 24 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777072653
