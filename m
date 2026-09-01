Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BD047B439
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788260434; cv=none; b=g/VBGgP0P1Ms2lSwHMX297OTZ+Jx0BD9tFC0kSdWE6q5m4ffswiz/xIfZAzmZ0hUl307dslvxU+YJnoxQaMFNLgLA9TvLmNJdwvBp1VLBxajoxDFr5dM+O6hGbmZV2c58vhVLA5ypzDf1ngiPbmQm31IDLHYd1iuxLFTNEJ6ZtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788260434; c=relaxed/simple;
	bh=9fmLTztxn7+ardKSlYsrOdnW2KL8GbrucTJeBwP/q/Y=;
	h=To:Subject:From:Message-Id:Date; b=rSfroR+Ly3QX4mNVPyxl8uT+tk1SzrNLURQ9a1KC4yFjZRTm/HgDItUVxuVlGKnzXpRRhU4ZgM5KYKllFDojgGzFM49CUREWSpzcBi9l2jlBeHDZfMrNBWEBKORoGjAx/gOyiGM+3p2zRjvZtppwi1b0ob9ZIIDfYApKcen2iqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgtbGcQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgtbGcQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13A1C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788260433;
	bh=9fmLTztxn7+ardKSlYsrOdnW2KL8GbrucTJeBwP/q/Y=;
	h=To:Subject:From:Date:From;
	b=BgtbGcQI0KGzPTIBTcPjgv40BPOGw7uUWIlyrHLTE7X4LbgCntUkOCb43ovcBA60C
	 UuXne2/meDSt5NW8u/LfllyQlsJZZ87WlBFosc3W9r2U9uNr8ISUki3dNKzgZDsWeG
	 JThKrDJ5v96MPRK0oas7espny9L7R4q27P4dcYmv7fqZpXDHJynqE64RzrRaT0raPl
	 7szNn0ZEhjQeaZi1zMDYnmMf93RWv+AEFERvmE4MC9FYejuz8+Ff8im4RXcDclLlLP
	 N8z0e9JR+ZBA4EYE1X+eGLnymIbFZjX8DKiV4hSKDDP/SWQakPFXluegAtpEt0pe75
	 qsbrX7wVFIJ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA417C624CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826043368.29526.9054477133034826343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e89dae4ef2f617920722c5271e0379fd6a02a98d7f007c6fcb1fb60a4405ba
Date: Tue, 01 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788260433
