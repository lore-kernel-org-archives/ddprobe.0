Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546B8383328
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787802634; cv=none; b=NF/Tvwbb0NfXOCcZYHvVDQTO7tSBn0c1KGyeQ4OredDJgk5biIN6kociE3dJAYosbMztXrGQRydBf8FYnUdY0WK09Q7pfXf0QM8qkNykeKnnMjWZ6ZdLjMCm05PDpRfo6kriSV2SvdLzNXzTiRrd3Kmt/S6gHDcwJJl0errGSoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787802634; c=relaxed/simple;
	bh=eRIbVrxT+9VaW615H6xApp9purY7TYmS75L+ABEMR7Y=;
	h=To:Subject:From:Message-Id:Date; b=Z+kJ8Wy7VsaS37PvTMDhvcMbWBhXkX4f7IeYkdQyTKoW42RTDsMJn218GeRVCglCfFqJJ4+34XVlxt3fwYbE/yGmbIOQvYzarGQ22T11wGrJxGRKZvCD6yXM+wRHo4EeQGKeX07z3xuAJwGQy2fKztT9KdAiUoOcp0EWKQ0FEBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0o5JXBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0o5JXBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEAAC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787802633;
	bh=eRIbVrxT+9VaW615H6xApp9purY7TYmS75L+ABEMR7Y=;
	h=To:Subject:From:Date:From;
	b=B0o5JXBjzddlQF/zcfFxA+HkOiFoZ9k4HlO07fC9Rgdsk/hLZvv68ie//3gggJTem
	 zRWI4PSGuwQKKugihcbVJncKiCCWGa9a4V7L4W37+HOzOSOWYloBcZnUSugbYk0REv
	 P7fpe5DYViVwjUGrbv/ElM9I2Lt4+qfvGIcID5juOKM2F8ao+B8E3aqFWzGMOfSEvV
	 oeBIVgJPByVSpDH9e0sNh8z+l1TU6hgfiQPCLJlkgHwJtyFiHFqbVKx/6wBEMpzUmB
	 XvBX/+/wxkgGDpk53R1w8pwxQT6kayEfZttT9dvrRYM3DzxdiFwjxvfgXOv+cBgLdh
	 D0igQnEtEL+tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8755C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780263371.24994.4700965387734410952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c55c43e34f536040b7d3737f99057c8177ff96724fc820dbe5ea6e823f2699c
Date: Thu, 27 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787802633
