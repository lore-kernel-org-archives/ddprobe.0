Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA50639C63E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775511333; cv=none; b=hfGFGV1wYuFQ+0cOhzUtMdRc3NqR9Rz8kX4InkRaHr9HWKGqWLU1bxNXr+Tk7pprLTzuTQpjMzVfUTuryBq0l+ab5o1Bw8dlPf369PPbBLMg+/BXTjmYcchpCLjtqTWx7K2yuiZ7SYqDwYsEnmkjAESvI1seq7pJRgLH5UR4iN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775511333; c=relaxed/simple;
	bh=S+y+XmWXqyQ4G6GTQYYRt1YJdvzThKZxCJ0y4qUDsh8=;
	h=To:Subject:From:Message-Id:Date; b=Npvu9Tl6bWDAsBrp1NeHKZ5+xE+698E4HlZaJCewzk2OnqZwK/stNTLtFwswM++F/6ysJp12hvzs7OSU1iGPNlaqX66VeaAwslPUiZA+8RSKvxzNX07t+FHrBNzTlAvTL/h+t+U2TCLUGpELXqhKkWgtQ2Bw7VfudkGLe/Q0UQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjeXwf7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjeXwf7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0C1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775511333;
	bh=S+y+XmWXqyQ4G6GTQYYRt1YJdvzThKZxCJ0y4qUDsh8=;
	h=To:Subject:From:Date:From;
	b=hjeXwf7bJtrbdAdGdseo1/BefFnthwd4ZhTPcKdlLZjqrDZwYihgh7wHgWOTrNL3I
	 YF6ngxeQ7nJCphh1oIaTTAtcj2LpmnglqI5RFVkVxSk/PgdECDbNRVbDIcELT1Wj8v
	 ETZubV0xwCo8M2/jOEiA6fSPNxfFLC3NbQrnNqS3364QtIEcicDyeDUC+CodljRcF8
	 hkXxUxuhKhEq0m+F2KY3gSQNsnFoHOE1fHNtPukDisnGtHHRHyc0rFMM7dK0vV2uM4
	 ybv4nZd34MZ3fFIvkdXTFQV7wgt1h6dGQPbdA29TgAGtVP5UYab2zj4Qj6pbJvkweD
	 V87hOaVfz0E4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD08FB5168
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551133368.17891.8525105979627473320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b7c209dc23f101002b8f7ab27aedbbd8898af34c4c3f60c8e9830737260d5f
Date: Mon, 06 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775511333
