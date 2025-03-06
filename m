Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458782063EB
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741295934; cv=none; b=smFoRe9duZrXtJX13rJAkm6Dr+3F9zcu1t3Di+k6G+uvtwvbemcfYT0IlOb45uw0V3oF4VQb6sCVMDjgdIOtMaAOA85k8q+i2r5UiXVqLiT1rRX/Rtdc1lO6f5IFRusUMRNud1cdJwrbz9yfKg6x6MSk8E6hacu8VZciheMGM1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741295934; c=relaxed/simple;
	bh=YGuvqfgLtKCxaE4o/WAVDzxetvRwxQxJM3aCZ4ZI8CI=;
	h=To:Subject:From:Message-Id:Date; b=j6hasYc5a6R/4P5xWxyl641iR4ibWZECadXO/W2vLvgK9Q+llz78CuJOWTEZAbPyF+CnigkkTVOIJdiOV3aOyF9cQOHHjcC0ntyWSOu0pUsMinNqF/9RmgH9p2GeppRw0lpEKUW8sU9AZqTIztuI5iNNR4HBlIexB/jYb4UoZyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCr3JSf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCr3JSf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B153AC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741295933;
	bh=YGuvqfgLtKCxaE4o/WAVDzxetvRwxQxJM3aCZ4ZI8CI=;
	h=To:Subject:From:Date:From;
	b=XCr3JSf6bgyy9X1etw9bB7p+YxL3xg2o4m5tfXeKJU8SusLqrJIep6cRaQ3FQj3zq
	 XZ/VCRnm1aXeJpZofEo5PCY/5XlpbFF3S5+MuGc8pBkFugD4tIbH+agfb+MW3AHssr
	 kdjRYpwtw9NQ0t7b7r/w2TbxeRCUGFeKue51JEzcnER+iB3BrY8cq0DYTdrHiLTqfR
	 S67iafSn/W7EjbxstReoIjK68CYIab+3K5+YjWfcoQnnF+R71ZmVtl3H8kvE5OkBpo
	 8henSB5QDEvBgJp9VbiwWwGhr/ni0nCBX1cMYocfL49HbS3ob62wWrroLToC3IMCmi
	 tq/+cMkBUUASQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F166C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129593364.2248.10161538179535288096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d38712984c44bf8ca3924764338e012805f96c0ae1833e3a39e55242ffbce58
Date: Thu, 06 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741295933
