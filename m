Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB21136A
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708220297; cv=none; b=NacoA1dTdaheBNLVA+oqslpKv2NSDcszXf3eyL34tFPK1wBWNHJs7XcUFYCS44JnHxRZxGD01SSwMdSSZWQC5bX6kaJk+lfhHNqpgRvSagHe6qLLz1hGjU/EQ7qiD8h2hoOwT+eDUg6kTuRrz2F6fqQ6EVMu7gmrGlUeZCo9t4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708220297; c=relaxed/simple;
	bh=dIXUxQNy55l0NXdTK/pYql75Hl/OzZcIgzdJ4/yurZA=;
	h=To:Subject:From:Message-Id:Date; b=KNWEY4AS8sz74AG5J3eDZPDiUgDY+JT5MNcMl+FQK3nNSlZ4fXPGd7H+W1buZYrGZI1me5/a8jl1DMPr13gcuzly93TkCOrgvQ2EWMtp6ilsGbQmXZVYz1SSO6/ppPes3WAsdczbkQyrevFTbr1YwfunXe6pzxe9lcoeGfEr8I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqe4FZt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqe4FZt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87285C433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708220296;
	bh=dIXUxQNy55l0NXdTK/pYql75Hl/OzZcIgzdJ4/yurZA=;
	h=To:Subject:From:Date:From;
	b=Yqe4FZt+RA87mY52SJNuwX8B+7uCE7rMe8od7UNJlCDkceTmc/ojuvMxtGx8YfrRo
	 P7NxIbX+bkxl97t/BOs629J/sQE362cfLuy5bXwsmLSc+A0VWrXOBvvghNKpoWijmW
	 zT7EPaZZ9dgD+fANGEEQqVKVjeqTQMD+HJuisqzjnAek8ko3/Nw3CeFFw+WhqL4U0k
	 zel5bfzJmVVJpNDcPKkMv1mBw6QepnRsxm26ibnQr0rl8txLNCGRPI5mzCVnGMtehH
	 vgeuK0IPFd1dOnm8WNMAVvUFnyqwCtDfSVqTca2AG+BNRsRqydcPil3/G8bNbFKhPV
	 y0iGz649Rye2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69977C48BF8
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170822029637.22885.3984526174774943009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6536efe4353e625f665901ebac54ccbd6a9e4a1b6917fcda1a053bf3d6f56a72
Date: Sun, 18 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708220296
