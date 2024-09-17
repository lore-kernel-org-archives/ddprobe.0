Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266D5158DBA
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726615554; cv=none; b=VINpRBcg2ENcyXnncUBSFghg+U6J9awo9tLZkPBlxLOWEGgbt5oo0CkIh6x07zBaI6ie9fiURtKj5zkFV+gfLgZESLoYYpSsTJ+R5aKlhck+rc7qJAqDiSCYlKnI1KCPh/wQ8ZRU4yY+ELMJ+/lGTERGnrST4LPGi6kgfy1o9Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726615554; c=relaxed/simple;
	bh=H+QJobONaPPMN0sKCWE58n+vcKpZfbP1Qg3ofDTMbrE=;
	h=To:Subject:From:Message-Id:Date; b=s3r7YEyDBka1gWG7zYGoBWGo40IbuIDS4q+lz7HL825cSE5qBWv2YsFqR0XF0UqsfkO1vQBJvGlkG6/Qm5IAEnKF5iIeEzf++2cg2sNH77Etq9JlqXqr44A+MUWt0zX5Q+Fe2SYvPKPEfyA+pYGbZYlj6qExBPjm3Yqdsds0VZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEWSfamj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEWSfamj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5848C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726615553;
	bh=H+QJobONaPPMN0sKCWE58n+vcKpZfbP1Qg3ofDTMbrE=;
	h=To:Subject:From:Date:From;
	b=pEWSfamjmuaeI2DPKxiey0wnCbtzNHBf8GS+RhsxhTyIQwUclv/bjgt/Z6m9pYsMW
	 /ev/dOY9IBcPwfkiJS2jWT2+Out47orvaEVbdQ3GuYKwiIAqHM2CljYsL+ht/ISNii
	 JyRc2yeZLIonlA76o8AyZ6WouWbkjmao3xuZuYHGs9R2GLUqmSvH65gpIQ1Pj+s8h9
	 pVdI3Q0IVTvrpL7jOvwNg2crF8lnPlDRnLCroKbVNGuzQHjSD9PBDrBsEo1gxV42yC
	 FwNJSb4tqlixKp62FX7dSwNf6ZSR0fxQRSM8Hdo/1Go/4B/HAWJwAsNASZ5XN7cslM
	 NvJW/KQGRphJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F762CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661555360.1724.9972492716880943773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39e603d2d3308938442646fde5e476c32842f27e9be818839f8045477a2a2db
Date: Tue, 17 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726615553
