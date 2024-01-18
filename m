Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B96258F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705540697; cv=none; b=GCsODNucUa0GpLVAS0VrvsNAaNpwnnKXv11hH1sMz8ifZ1s0fzQosx2/C5y0cKJpfDkfoPZ2BxklPkHonhLJSJxYYLLU1Ml2ub4owb366+3fBN3Wb+o0czVWYcU4TZDcrt/xm6FWA+720suQQDEK5BO6eTBaN7NGyROejpP30Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705540697; c=relaxed/simple;
	bh=1xGIZhZnXo/n/+VcD80tP21YvtIxqFSFiShQrE/XIiE=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Z3TTiCbIxuVf1eCvHm60uoLzW5TgCvWpyk+ygWoSgOotrRrtqU0HYLAQm23ssFbqm0IaRwg8JDGdTv7ALr2SaDvC2Jr3ksE6+HAgqlZ0tJ4AaXxK0jVk7BQ1MzJ+PkEGGGXSTnPoYNWokvzEGB5czrPtLpwlaf5AOR4wuDl4sGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKKsmzHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKKsmzHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79353C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705540696;
	bh=1xGIZhZnXo/n/+VcD80tP21YvtIxqFSFiShQrE/XIiE=;
	h=To:Subject:From:Date:From;
	b=qKKsmzHwMidbg+tFC+2JdSCjpxXZKVNzSM7Co/AbqOz3N0WfMfsb9ahIyQQAFLZXe
	 PDMS5bGDyw6n0iQVsE9eeqEkTQtIw1I21OLtFEX/7PIKoGNNzmaDMoiDMZyqYeoGZY
	 lkUjsoR1DGYTW0JKMy6DJ3EEsQpCbci7Fy4ww8++Blsz+hcQqU9GSmPjPlPIGg6y2L
	 OJsSh/MlRzCpZOyG7dmgSQQ3lAo2GId+3BFQWqb48H5S8+TgS9j+R9XpgWo49QDkAr
	 7QM0tBum2xkrfvfc/SG8f2g6+3qWpOeYOdBFQms5NfxfcmDwDJWWYxoszd44c4RSth
	 5D/cUBZzjc5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615D8C4725D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554069639.18317.6435920634768513785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1989e3bc839d1f9542041a04d682d702d03e013c190020ad36c1ce616ee2ac4
Date: Thu, 18 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705540696
