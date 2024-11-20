Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E4D19C569
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732097754; cv=none; b=NZQBFMJsNBpZdJJRLFGCTwuNOy7S1Vr6WA+ETWadTwq7I32Yyuy+GkAlGdCKjyIizff96WZ3oqAnuzNWgOSDL9/WjnqxdPyXwbml4PVw7h9aqUjxgP5uuV5e+f2qL7zkBLN7vVtv5XaUw0MqR+P0BKKk767X23Uvs+Fiv0o+X2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732097754; c=relaxed/simple;
	bh=yeqWu328E7UFfnPVKAGJPHdoZQO3ozOjbYR4ffqVkGM=;
	h=To:Subject:From:Message-Id:Date; b=CGzwuSZMy0wE5t5KwRgG7qcoARsaGBZKZZuiFQm7lUuDwhquKdvnuY1v21ZrjBAsZZ9GnejSftpzkKcfVh9WIRF/7sF9zxJ5mDg0xvevlMKwLJZ5fOYs2gnkfdd9Z1Zvgeegh4ao+rJImXMS39Uz+6XHW4E0phT42eahIaM8Dcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZt+v483; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZt+v483"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A538EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732097753;
	bh=yeqWu328E7UFfnPVKAGJPHdoZQO3ozOjbYR4ffqVkGM=;
	h=To:Subject:From:Date:From;
	b=mZt+v483EzXMymUAQNKnlbJYOAv17sJg+c2Tw8NC6xihihShjSc2ylbwSEd8MMHmm
	 3FM1OAJo1givck77pIZMb78vVzUuEmiyylk/eTD1LbYYZHGi3H4PC+T3Mi95Snourv
	 84fUov/reHsvPGeSTWR6Sxj7qDys9TRq/XEaL/3Du3nIrcQHtFNl05EMAbn+AeC6EB
	 34C4B98qQLmTaxbi7t7lL4lggRtDUtHFdTqckCZnVbrSnxWTHD3wsoOnXh+Fpj3fjO
	 kBeq1wVaGgi4+scZPF70URKWbFuvsxItjY4IX9kID/Kibw0pVpiCsvGNIvdHD1GFkA
	 ub73mtpGXdSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF1D63920
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209775359.1487.12145531530903348209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478e839a9d9e35037f477d3ad5a16cc425e87122640974810d296c3ad15f8a3c
Date: Wed, 20 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732097753
