Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01CA20B1F5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755004193; cv=none; b=KdwwUvF0b2wWUt8Hrlh4pcoCVj+sgunqjmeiRcV8kjY8lmSUihX1FWdrqwJ6sQhiMpHCWOsVLvTvFW0+SAVZnVLw5Cm3rj1+emDxqMByHoqTqEqBxVyvzRJ8KifJ+epm96ItzgxWn9bTOFe+Vawgr2sMUwthQqho5wer5pHRwgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755004193; c=relaxed/simple;
	bh=b2YlRhqpNy8h4Bk43osDJitKaKblUnDkhL6KsqCxjR0=;
	h=To:Subject:From:Message-Id:Date; b=XjAgViH7sos3dc98UeOCIJ0nl1nCvVFm91csuOwYSD4TQI3f0bex2EbWALCqX3e8WPVjnP62vx2uPdPo4Ava7beHW5bM1TEjmOsnSevMAS8wci4BTZM9ooZxqi5cqfQ2zim7/Zs3SdLJbxhI8f+Ps2d8VEYCS55Vhk0XAnntp7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArK89Y1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArK89Y1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755004193;
	bh=b2YlRhqpNy8h4Bk43osDJitKaKblUnDkhL6KsqCxjR0=;
	h=To:Subject:From:Date:From;
	b=ArK89Y1TfLWuGm1L1dQKEZpbZnd/YIyjKkJoaPYCoIRdBfMhX/Up+2F6gafMc0rqh
	 d802uAzyWMYMPki6yX6lrRcftIlStNq2y8W9ssBxTLBieGhMnOm4dAK2J/hO3JjIbZ
	 +6Fm1bIE/leAysfk2ejo2NwfstY93HbDv4nB+zK47cxa6D2hwYLAZMwDc4w6dNDsA7
	 4bdwH5IugwMlEaAv7Q8AnSs6dXIgN2W1XZek5jZiqC7PAYC+o4OLOnVakfIeUomA9Z
	 seDYswNokgSx6y/plxxcZ53Z8HzpvwfJ98Vi3aI6kDOc4WfuXpVVhv2o3m7uqTJk78
	 kQL5gP+zRApag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96519C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500419360.27318.3257034685473086453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb56a5b4dcceab6de3a991b816b77f9e6c21e1b91415fd61961548809353c1c3
Date: Tue, 12 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755004193
