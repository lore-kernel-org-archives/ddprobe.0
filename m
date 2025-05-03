Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581E6283683
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746302395; cv=none; b=uAjbjgg/rJS0EF4e4uN+4Sc8yjhpr5g2sZLPRDP5iDkZYr8Q6LNaUcxpC8lhdqh+xAv88vWhhFdCchExqJM2dZ/JzGjOkVcSKqpGoVvupB4Hos5aGPTog3V0ga/d7SApWnCF25CunUXwuXune2DALZFQXf2Kj5zTmp3pefGF+SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746302395; c=relaxed/simple;
	bh=GUVwzW5tEBKQK0sce/V/sIinX655LIkJiPB4abJ3JPw=;
	h=To:Subject:From:Message-Id:Date; b=oeRfz0sjlTqkXiopqVa/mMaPhWFS1mRIBs8ZEl3xRT58M4exhqJUiPJLSZa1OlNqioKRMOU1gzJUEJMY2QT4FdXusxLRCn3dOmhYVL2i3uq1s9D8QHYZeCHP0pD7FNVGnB+PzXHgzicOEtQiMCJCVOu3bXFfnQEGv+hibwyGKfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no4TCdXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no4TCdXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA18DC4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746302393;
	bh=GUVwzW5tEBKQK0sce/V/sIinX655LIkJiPB4abJ3JPw=;
	h=To:Subject:From:Date:From;
	b=no4TCdXNkZYnSEBE/sqMcx4pJaeTxZum18XK3c/Y1H/kpMCz4I/tGvNgbd7ZmNY4C
	 MQwGpHIMrr/olbp8PZ7weaIA7WgBSMFjLiFIEnNdL4Kj9CIr9TV1hUgQpVm0CrAPOi
	 VyfCCMERAll22X9oReDhTnk2Z36ItW7ff5ZBYoJ7C6+tFHXBMIr/MXTsn37+Ck6BAu
	 GV+R3Ow4Gzh7aOBn2DZBdP4MpYmH0TVPWct9dkQBqwG1xBWTNQ89H1+Itl+0vJuISl
	 E1C+13XkDFfvI8ejzSkCO9Ukb3Vz3QyGiSEdGSUEy+ahyY1bwOqWEiFUGKxm9cjhFJ
	 cYiGCH73m46SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC9C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630239357.20269.15701337126777177754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a862cd8792064959fb81cb735f23bf4dd798a961c6b8bafa15d2c8a3f308e6c
Date: Sat, 03 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746302393
