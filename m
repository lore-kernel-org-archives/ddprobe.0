Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEA5C14F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720928423; cv=none; b=iyCd8bGVjNjjJX3kvTmhvxrEKZwDo0CWZ5MXfrABQyYu8gmeeQxW8sbfarOt1SMCEVs4w3IRSy+jVQVtTiUjDI/smwB7QV+oBp2oJOfQmvN9G3GHwoXisLhHC9Z+HWHmOstJhk7zpQHC0zvNE8pTAGx70whgmvGGuR4DcdZ+J0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720928423; c=relaxed/simple;
	bh=IBelTUSdHjX6xsNWwYb79PiRH/+MPKHEkwYyZbhT+7U=;
	h=To:Subject:From:Message-Id:Date; b=QZeIoyzxI8japy04oyDG6dVHMYogN/HvH7cJil+3oybl2uOdcCSTLQlWpq2Zv5V3n65U0wwEqmgPeEKd+sp+R+7AAmNQeaPF1kFD9MfEhLtR2L3fjhZI0RAeQxjQJtURSB7vQuMASCPNkcsz+kx9lx5lIIw23uxscuVshH6IoE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADIuLq6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADIuLq6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E013AC4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720928422;
	bh=IBelTUSdHjX6xsNWwYb79PiRH/+MPKHEkwYyZbhT+7U=;
	h=To:Subject:From:Date:From;
	b=ADIuLq6PX5zRb6qltPuamxJnorHYLPjrospLPwE/aoNZBrUmYdyNrdDxbQcQkW7AD
	 7yVoqVi3dnHXW1bVaaPTFmmC6iX6UHTsnp2UKF46ZMIY/ruywqVciwUuw6hwFTQxJz
	 G9Qg5dqBcSuCOn+keUKSZj++bCE9vKkh9me2yyKL8CuJ17MamiF7noOeN25FZADQJJ
	 HAU1acBsL3LqcFfUDBnVnsc6EUoEKcWRNwbwrHTKkgZaikkH4hauMTwnB1XOhwIYjG
	 23pwu/pINDh5CEHMODcLgzC8gj9nifBuGjF5wfAuqb9CE0Dpkcyw8W7gWAOcTisCgW
	 YyGHHmb5c2gaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81DDC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092842276.25881.7861871684637162542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e10291d8a311d0e8e80ab4a92a2897194cee53ef93f677f8b2dbfec10f1225f
Date: Sun, 14 Jul 2024 03:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720928422
