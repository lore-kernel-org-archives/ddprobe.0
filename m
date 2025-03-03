Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABCF54654
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741006734; cv=none; b=SMQGLkj8UEBXF/fM1YIJj60bNgx2ivptiiwwlV3Dw9mzp2gxjyuev+hBUEb9qECfUUSGAmnb3Rv3dNnBOEkPnrCQQjSrYW6PbXTZDmQq8tHRYDtwZsmNoqrn6V18/D6ZIrjlWk4Pvi/8S69bLS2Gf3NrwW4X2s3CLjAmNw6fLhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741006734; c=relaxed/simple;
	bh=Qtr47m6iwQvjy2NBs2JfvhiLj848hKl7V2U209ZK7I4=;
	h=To:Subject:From:Message-Id:Date; b=I/tQZr1k0Buo0QYZ47pAVuyKTu0aQq2NaUnoF2h6m5VLrI6SnXiqXwMKs6kV6lT0R7lGOK4XuqCxpcReeOr6El6VOvbvnK8UFTx/Y1p4AFrJEqtw/E44wXtgWWbhaRJ3pjuLqVDLWodaZUkqUtsEoRxzVlHoQMAAGB3+Gl606ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx1VwsrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx1VwsrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB979C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741006733;
	bh=Qtr47m6iwQvjy2NBs2JfvhiLj848hKl7V2U209ZK7I4=;
	h=To:Subject:From:Date:From;
	b=mx1VwsrFkGJtLpPGeQQkFzGlBUi7I1A3PfShJLUhd/ANDWevKkOdYiJyE//IV1On3
	 f7fRMp9kT+DBtwZRlxJVBp2TTYNIlvyFh1D4ZsW/LGzx9+dMK7fdmolv/r+DD4Qc4X
	 7e61cRvse+66nMTX/wUSLo6Gu5rqw+nwQS31yeHViJTGAJGKxpGSFDYJwtH+PRx90u
	 ldBLdPUhYK6a4cA2H7dWszi2efSN8AruKlIIg/EibXAB3OzXiGYZ3caT9kYSwe2iEW
	 mpc7LOZUzIZ9x3qgZj9CFXQGbbY0tlfCZpxZdYYNQuNmMdY5D4eR+0XXl/Q/aDbZk+
	 eYi9XUsUZMekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B14CC282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100673362.15043.14227737724813953529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d5916d74661339b5a8ab203dcc4397c85fb29bb0005e0cc6b25d8efb5c1308
Date: Mon, 03 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741006733
