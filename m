Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6FC181302
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716984263; cv=none; b=FasJ9am3UnHGiVL/3gBG/+RBOVc2lHxSX8kYYXlAxOWXkqTdwyFTmxy/MHeThFBX+MTs6ZzujziFXVmfc2Pv5QkD/FurqmDu+0iKqaf41F1EUt6Bddw4d5lYDvOA0JP+NyGLhejVaEhoUhmT1JtUatABIYCvrelyqEJ19jWZkEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716984263; c=relaxed/simple;
	bh=eaMGAjd9U3NReoxlUh4s7devn6DQcXUCqqrco/pHfNA=;
	h=To:Subject:From:Message-Id:Date; b=hmoy6q1ri4NJlq9Bj9IUQ9xtXWjpUlyNivhGdxsFcrBb9ytbb+7qwc2y2/LQ/RQBi+2WB2d8ryAjVGxFetQoLnZGiWd5i/xO3QdtnTCPDHfLDcrqzvR6yFFUL1L9SqxFB7afAP6UJAq6Zi1SjG8LwY5jZ74toU/X/Bc0pE7XW7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBJ/95jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBJ/95jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD23C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716984262;
	bh=eaMGAjd9U3NReoxlUh4s7devn6DQcXUCqqrco/pHfNA=;
	h=To:Subject:From:Date:From;
	b=tBJ/95jbiqWqD3M5WyT5a2TR2ZyMgCPYjZTWEIH3o8khwYtcHg9+dYy4MiqaBghLT
	 WX+5MUM1BbMLf9EnJaDnXIyGs2rkcxG8xMjqkSeKR8IeyzZoY2iTdBIZBz5lsGp/ps
	 rClA7rJYghK2H1w+HLTgeitMvIt9T0V3wHouDrOvjEY9eTvq5F6UFqXdn21uGuOta/
	 M7F7jrX0uPBhwdWJk0xBwHwYR4GQcIKKOz31JPpCjee8/mJBCozNv7vBYXZaF8cUwd
	 I4K9zuN2R8QTo4IXQq6ivSfTR34HcR4RYhD+cS8y03QVupiHm+a7dWb+ZeE9lUqsYo
	 U3O3exAUZpDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ADCC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698426278.21447.14136383313129294672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d312bc0eeb2f2e5bf165ba76047408b929fdc9f12380d56a1fce9bd20bf27cc9
Date: Wed, 29 May 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716984262
