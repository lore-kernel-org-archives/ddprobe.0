Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1133D83A12
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718227103; cv=none; b=KPzzwbK6S18wvpiIXFhSNceVrjy1Hg/qKGvbI4RlbAJ/DkTs74Nox0EaFEz1jJ5W9ngwbruNZdd7IQdGB3mQiYUD6g20czPlw2VKzQrPlxGZpiN/CVrqrAyfrmGii56BvT430wI3z9ubTNsJ3l+fDIOk8I+OO5sBfH2uaZJ1eAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718227103; c=relaxed/simple;
	bh=9mVViwkcyOkCXpmmtMvRttesGUOijzCLxjvpNKfO03M=;
	h=To:Subject:From:Message-Id:Date; b=khbVllGUxliY2dNtsB2pFdi/sa1Uym0i+o6adyEcyxjJX9RqpAvMBNlhNGyg13gZfUma63AwA829XuFTeGr+MSwa8OP102t6sUNqFstao3MI0VkgC27nAT+3HTCceIymJacOCTJaq61+qKJ5x1Z9EItz9X2DBtHNkvLQWatrPAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OthSR5Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OthSR5Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A60C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718227102;
	bh=9mVViwkcyOkCXpmmtMvRttesGUOijzCLxjvpNKfO03M=;
	h=To:Subject:From:Date:From;
	b=OthSR5Rsh4++nEzpIzvF9p/5iDk0aaCpmTB1ub0hFkI/OAwv1AWWgLnOmYu/z5vNO
	 sWthZ8mwbxs9V+wVuueReimMxL3xW/nVouZiNu2cZmx+gSSIde9l3debrOR5szEFRj
	 EbyPSV5jp9j41hWzlzjeQ8udR2yA1QzCL0m10+RJYViXWSi5JaVwVFC+Nkz+ERWj0A
	 zzcxmfieKkNqGwkOFTjm809GNvlAx43WdbTP/nL/JRh0ZVTksMor0E8ZxpuK/BQrVw
	 jzcq0gUhtEXfsEE25oJ6JiMC+D6g0yXrfE9kWAibNAedQjH0vMxq5B02UeBJY/0Cva
	 sXcuPemKhtcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EC4C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822710279.30672.4276190003012960219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914fbb254a5130a1f915262a3aec6352fa37e141f1556de6e02d4e869ff769a0
Date: Wed, 12 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718227102
