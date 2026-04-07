Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA55175A7D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775540134; cv=none; b=jd24EB2wHIgWM3S+g8QqDVuQzTu28CH9HKMMJzztTdNwIu3SR9swCYuAlNv3l3vsH80it4vggm2gmJdY23hBX8seU7mezgRLx2ZxvEiN+LBHA63/3lOPlV71SOTXAWqOv41Hg/h71AOsIf9rLsR1toNeKuNPpbB6/c87SNsA3AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775540134; c=relaxed/simple;
	bh=McCM2apoZJTUw35rp0JA2gzXOb3NY3j9euKB9rG44Bc=;
	h=To:Subject:From:Message-Id:Date; b=NN91QQU+u0CIWv/JnXU6vVhszaOEG6oy1J15mQAfwKK9RjZA82QIeuM1LP6YaSFo9lyINSfXUIpmb34BE0Ex+Hb6iktJbmW9houROsCY7sTOMp4VEFC6dpxJEPyUQIJytkkgLYNDQMb7calDTxUD04xHcetOekl/9Dn+iHA7sw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSxVwvnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSxVwvnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB15C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775540133;
	bh=McCM2apoZJTUw35rp0JA2gzXOb3NY3j9euKB9rG44Bc=;
	h=To:Subject:From:Date:From;
	b=sSxVwvnB8xAaCTDjdPHssrOzygMTlW2dBeVbLMfU+vNi9STwTQpkFBJOz2zRKLDB7
	 UZZ2N4t+yzClN4ZAXXN2XwsCBa0YuVV1RYb+GRN/KNsFXHqX2Thi+O0l7tX+udlR86
	 tvU3bv5HneNrc6ivRwWNbTxzKDE8lJdyurKiQ8JfFwJQ1nXRqzr1GTgRi/NN4e2cCD
	 i6cjpJ+TUkWtPSj0xqsp2J11wG9cnzV/039RH/wwikG8y2IiRApQ6zP7WSf6cxTvUM
	 5OvHkMAvJVO/rZLIO/cd5CyjXzfcbe9r2V+vFgnskG3gesusIVJNIDJqrJsfOXvQVz
	 yIfsRh+zg8UPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B0FB5179
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554013368.24095.251594458790854682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1428b4ef961ec0f012700e42885e08e728a79e2da887f78543df3072b76565b
Date: Tue, 07 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775540133
