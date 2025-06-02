Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417291482E7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748906394; cv=none; b=TX+LgUax4SccSycPzzMlZ8FgPyQ+/tr7LvnK+AGMsifMoxS+nntrYHIiVK1K74Cet6b3JvKSja5MylwVaxiK19qB8ASP906dRDqtbtaEWgHXj36zzn8FGU+EabM1SbGR3bW+DAEupNDmUCILUTsKucIXKrasRY4CxHE+I3UVyPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748906394; c=relaxed/simple;
	bh=QHL3WRvqca1+/J7Aff/+/91Va7ux0F2w2yeB9Gl1++g=;
	h=To:Subject:From:Message-Id:Date; b=JPIZwa7zovFoMmDgqGB6IpMibwR9/Tf15uK7eb/8V+k4nkBzPSiWXQSCMiUCbfGB6gHRvPbMLW6kHh5sYtHJq98vkugCFTM8nMHEtqlJDBG46xxypIuqkLKzW1yUGaNZrobb+51Qff5O7chLHheUqIX91OQSA3+/AuX+xBPa7Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgz0v7m1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgz0v7m1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A5DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748906393;
	bh=QHL3WRvqca1+/J7Aff/+/91Va7ux0F2w2yeB9Gl1++g=;
	h=To:Subject:From:Date:From;
	b=bgz0v7m1tpqP1RDJOU0na/ZBuS5YBxFB5LYNjk7y8fyfmwqPSQucSBC9vxBlb3Ltu
	 zHaLgH6/irAbHWqLy4MtxeP5tUAbj5AdQP5/mR8tvp3WTvFbiM1mXW5w2cRHufc53T
	 0AgfSIlbEEEkNpGEglg4mlsjKavyDla3HPBpPLGezvNxXrAxSci6vSrvS65Wz8UWcr
	 gHR9UbFYAj44LEtOUYpy4eblElEvP/bBe33UqylsUzWg13XJcwEv6ToDxEdxBLExXR
	 n53FuChwmo9EN2iOM8rzJ8p7xgTZF8A+meNPWz5SblxCsVme8/zZvBmg16xVUMrQHc
	 aigKwgnu0QsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1BC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890639357.23323.4394188154923735487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae702872e1fb67303eafa1c474fbd995c8d98ac97439a74b8ca6a05c9b74c80
Date: Mon, 02 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748906393
