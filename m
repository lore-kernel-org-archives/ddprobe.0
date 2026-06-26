Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4287E2BDC0E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782445654; cv=none; b=sCwt/1M5n+FbqqbV2OeEu7nXSuu+JnI+QNk9zOD4VZ5VxijKA+6iE2i6StJW7GaMavClPOadc94jcQmIjhhJsPao/YFKhv0/6HWQQVKnBwFOTFwLZ5TQjwpzI1u/DkMVxNszhanUnOYKEQQBJqOYoO92cQRULwVNWHe+8ftlrTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782445654; c=relaxed/simple;
	bh=sntRnhM43e2wKrXHS8tgm6EmDhfWxnLBMJLeeU2K8y8=;
	h=To:Subject:From:Message-Id:Date; b=feNMLQyIFP4qvbfHfEQvVvTU/AKExC/ImALiPSl/1ogsqiptEBtkdfWRKn2eCJ56rzbGbabdzneJh5yQKh1PyWb1dKgipgXhKhq209bQT516k/PQvAMws46qWfgzuCx7nIC0z8bxEUYXPFl2QDrKKjdg3m6mMpL5zDCj6QbR2iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsMlWOcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsMlWOcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7100C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782445653;
	bh=sntRnhM43e2wKrXHS8tgm6EmDhfWxnLBMJLeeU2K8y8=;
	h=To:Subject:From:Date:From;
	b=lsMlWOcm9dFJJ/R4zhN7nOj85Gq0LepjtuF5uAQ0X4HPxEbWqIkBykMfRIg+HZtmV
	 7plMjojVpCTEZn2HN0jY0IF6XZ/lnPU853SLZS6ZovKHSI5XaZI1KbCbSzz+bOxOW0
	 ofmfYXSGRLJ7GdI7zW02xUxWqRXivR1xOyRQ7n0lIb6MlfsyAiAHuK1goYF+sdgnTE
	 luC0GLDp85Ss28k364LW27TyuHaueIt/846DSNAPqflK1DybcnXzZXkNpKG4UWPgRp
	 be3UDe11rioFWfr5OsM9OTi/p9YGM6GVaavGGcHWsBBh72RrnxzgTs0KNmA+4eNN5i
	 FQxFh5WszMDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF7CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244565370.18958.18303086668470599286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9d03286fcf6a7c55bc2da9cd130973f0bad52a8c0f685f9944dbc5c27f983b
Date: Fri, 26 Jun 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782445653
