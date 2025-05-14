Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370ED4C62
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747183195; cv=none; b=ZigiPioKvc5Di5mRoRouO5WtUp1jz10oHTdoUk4co5C6DsrHK3ldBQ5BG8RGLlcxOAKJMysAO81qAOIdiL+m5QjiSjCrGlqPI5hAQIx3985l0ZkKpV2tXTZumsp/7xsa1yawYlmT4y6782SwVOjl0kpK+3uIyBLIe41uyfgaAKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747183195; c=relaxed/simple;
	bh=aCNOOqVgoW2/3G7SC61bb0J5V+gykYcFugBevJB4SRc=;
	h=To:Subject:From:Message-Id:Date; b=XG5m9dzR3tZ1tq5akwoOMh8ZZURZ98yq1piHmmBGNf6QpzVz3IA5cZv2hnpL+R8lQ6GOEV3dmBdxVkwUEXsWMUYq3dRUraEd2l6ob0nCb9eqjc1T6NnLS2V0XBOk18dEgaeURatsYTkMvGw17cCeMYYESz+pGWTP0bFNk+oeSC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVa1sH50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVa1sH50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F53C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747183193;
	bh=aCNOOqVgoW2/3G7SC61bb0J5V+gykYcFugBevJB4SRc=;
	h=To:Subject:From:Date:From;
	b=NVa1sH50COKOMOjXFTIo55pxLIkMVVc1sHxo0540eoMUAesQ7xedgZbE61WzMWetE
	 ZIev99gZEIYbheW/BSmoyAdbibfJkxQ6reNVUWEgLnyl/GMd8o+zWGnHVZ9XZ1olhR
	 417+awLUfzP/S29+VcR6zKj3GbaT0lmtZ+oAend03WUFodArZY57XSuFmawRo9G0me
	 Z95tAfFnaMw/xAaCy6VosCI0xQ75LsELTgKPR4IMWfVLXjMzKO2qiRStGDa4qq/y/A
	 76grKGTnkgqOHYjlbpNkkOvvgG2cgA6Tz4KCeGZ5e6Fmzv1VbygLR9twfZL6Cn7Byg
	 Y002Ocq8rvohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91068C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718319357.9453.11230209916960617375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2104a36cc3628db36a1203f8b4cbc86aea95831e73f0dde67dfd534bb3ba17b
Date: Wed, 14 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747183193
