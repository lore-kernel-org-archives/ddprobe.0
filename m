Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37421265298
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769585634; cv=none; b=D3Vzz9C6rGhJXgkWwMLqrjQE7WydqqyLW7BNaaE5lN1RYTleWsmvRwQnyqdo4yuCb65Vxms/lfosudCkSnMcI8kCRHCuX2Oe2LxCo5UcRyA+YbhrTtW3FHuH42Zn5B5i+PTNtqDO0Cbrm6H34mLDw7V3QyeQzR6PRJzLLLKlHa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769585634; c=relaxed/simple;
	bh=6//b0Cvg8GRLOaexnObpeRv46cuGBeXMYQhDS1sYm4s=;
	h=To:Subject:From:Message-Id:Date; b=QcFlpl65JfxxvJ16MMifeNcrTwZYZHLvDV7E2IbYhxX5y03Y4NKOMBkAwWfJa3T1kqKBq1Z7SZGxvdOIHK/iIFu4RsgcT04bDTPt0jZqRI31WlP4HDflSnasqUjBaMoF5GJfkWbrvkVM1AkvqG+LRTGIDLvtf5vH5W4SuVrUrfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsJkHEB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsJkHEB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE60C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769585633;
	bh=6//b0Cvg8GRLOaexnObpeRv46cuGBeXMYQhDS1sYm4s=;
	h=To:Subject:From:Date:From;
	b=OsJkHEB8dXwpRFfwzWL+FDkzMO+qX+TTT5Q8Z6nTnoIb24Oe2xtpP3L05+Z6fgvJq
	 vpOXkU62/p1WROoBwlIiSA7EOv4KrRJXZ/79KfkdLsJOjbGCjhuYl5NTbSRrVxsFUB
	 +IqZcGQZIuwiZNdvBqxeT++bHynvuhraKaBDshU/JTR+7+qeolUYoCQr04HmDSMONy
	 W+pdRs15VrfEu5NDqBwVUXCBFoPAtMjDR40bg84oRLzerOP5HLIRAS6cN1+DLFBqEy
	 eowd7qunrBOSw72fL/QsxvYA9DkK4p/NJ3RYgV5jTGfdYJ3UOJrZQaRA5Mim3r4zE0
	 hBST+rDiGGSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984FCD35662
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958563361.31171.2682199278621893347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5877324247ac277a5fb31f6f378e788c4eb1897ea6c90c60c93ec05422042d61
Date: Wed, 28 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769585633
