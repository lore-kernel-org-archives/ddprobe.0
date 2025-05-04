Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C92A28F4
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746342594; cv=none; b=D2sTCiFr0PGJgKT8rmJpi1IotpxDc9PTaa+9p8bEX4bcaAk7ZD6Xhg5S4RFL7A5Xd93p4auH/JHYkxHdD1sf0OEfV/F4htZqZgV3QLJSPyp/lIaeuDfj1VDxwqVVZs9XZuTi9zJNzAiTYe/IMpxss/uwL9y59wFqaQsF5YQUK6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746342594; c=relaxed/simple;
	bh=vx3LEuBqIa41Kb2Y02hXJ/GHsv9w3igm5C5iNRYCfoE=;
	h=To:Subject:From:Message-Id:Date; b=Nn2KIaVZmiXqz0kQjmnlt7bFYzL9IqwKsPiBUXMvOxALhsCiaTj6Ukd0ZkdyeyA0FdG1JX6BnQX/CAfMxkC8rI7Lw63ZGAXKFz4t61YPt886mI0A1t6qVd1ghr68r6oyIwAH2YsbJXKiBt8FkeEAnPwWiyw4UimkPr9tmB3v6g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8WZ4oT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8WZ4oT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746342593;
	bh=vx3LEuBqIa41Kb2Y02hXJ/GHsv9w3igm5C5iNRYCfoE=;
	h=To:Subject:From:Date:From;
	b=X8WZ4oT5tzx37dtLU60KQNwSSsy44CC3v9pyVlrLmcOrFICAELH9gd1+bZg0LV82i
	 noRmoMks744EJed5zzYpRgSnYhHZ/0yVJCLrbfkUL4sBmwHpyQzySwg2sT7gYOWYrU
	 VuV8Vqdfs/8kFdk9S6GX/IccfVml/Mp2OjYa5MPiUny5XD2VQvHyeYMKl7uXSFLFuW
	 9fAmU6d6MSYPeSIC9CVuZ5+QBZllwYUDG45aGXuFaFWI4UKGaxNuzG9WtnSidbqRuJ
	 WHGrkkswONEgE2VoL+DlAk8Qofk1zQMuzvX+3IAIk4DHejuxFsuyegB1PMYN287+ny
	 YdAPw90oV7Z7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F87C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634259357.16217.1174741416766688073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a272155783951971baa4ca3494b76bd4223bd185a8a5babcafdd13fbe39231
Date: Sun, 04 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746342593
