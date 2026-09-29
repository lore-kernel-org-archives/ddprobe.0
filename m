Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231742EC0B0
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790688634; cv=none; b=pU3Gevf6lfhrG3lI63fKbkgaPupXbVVZNJ7rVeuZR2H2+aS8AZJSAltntwhfXSU91XlWCtm2EuuP8Lem/wDvBPDuXTwKCX84LeBO4WQBZN5xzm/2Q/tnnPbvAq2YJX+KOoPu9T9w2t8mR6p/mGs0F2mzJIzfmdTVBuRLdcM8J5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790688634; c=relaxed/simple;
	bh=lq8JkuXKy/BKc/wbQvYn1ebFWS+RC81DHqXFthU03as=;
	h=To:Subject:From:Message-Id:Date; b=O4OGQJ94auF3V2uomA4ztwsh+m7lbwKLeTx6jJprRcBFeKq3EDsV5zE6ApqrsjXmhh+olIlzDbdmi6Zfk1ok5Ww1SbRb2kLDx5KCyL+OhkuVF3HOe0qLWQhUcnGlixtKlEK/RDujRGEjdsxzWlJorU5vAKadQQ0Na43wocFMb2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoPhlRUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoPhlRUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC9FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790688633;
	bh=lq8JkuXKy/BKc/wbQvYn1ebFWS+RC81DHqXFthU03as=;
	h=To:Subject:From:Date:From;
	b=VoPhlRUUUNJbj9DfRjhm/k7MpXkkexqfnpTKbtCHIxijqzZ3bMGLIBiGTl0QrhSGo
	 Y9Il/upsnvxji/NkHUCQOevn8uoCUC4cm0X7lzJsoD6KBVNyS0MP5hNJdYeMMNpNxC
	 hgKPj6bUiL5915IC/A52movzGzzu6WIeOMbeIVfHLvllsA5W6woAYN8Fp5tCRs5OWu
	 Tfczi8LfpSsuF9HMXQzUh9Fab9AhFHE6gpFigFZcjW3ukIgEHr970pOmD39YS6wxJ6
	 Z4Wn9JXRAMo2VRFHvJ4YONFimcCRqDiyvJtLVydnILP0vie5hu5uPFY/W/5G4OcGz0
	 0NzKSs+oU1OYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB51CCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068863369.22297.13390983726911461114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcb3d081d7a5a4743d16a147d508ce1c8ff744fa193c99bd3817c03737e5aa6
Date: Tue, 29 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790688633
