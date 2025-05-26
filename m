Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C6720C01C
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748275795; cv=none; b=mhCN6hxaRopM9za6F0bwGjmo7tmmMuS+NqQzcZRy7AUDt0/+SgHAr7EUy24R3Dx+enAmC+deGlhHv5wqFOKcX8QtYAAbwRWIOO3sqjoy9/O7j49rFh/hyrd+SMnYtf/lfpbaTWEES6a8rFVRAdvlTPNNNBFU17P8KdVZygE/VKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748275795; c=relaxed/simple;
	bh=k1fNL8Av7b12cFpzLQ+R8bGK2YeSUhsgChadrhod3pw=;
	h=To:Subject:From:Message-Id:Date; b=GhhxNemZAPp6nyL2+oZ+3KsI9maBZXBVnHGjJEcQ9+UKC4dTQqYNvuUjlzgwKJlmWIG8ow5qh5JHz9bZr5A5Ccoq4ilB137bZ0QexPgj412Nv/nIibW/B+DNy2IIT5091iT71sTNcfoOBVRdqnnvrbIc118nTaYfKXQGGW7cmoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3n19UJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3n19UJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F037C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748275793;
	bh=k1fNL8Av7b12cFpzLQ+R8bGK2YeSUhsgChadrhod3pw=;
	h=To:Subject:From:Date:From;
	b=q3n19UJlFX+fE8OmgGdbyVOfz0zr7h33t7k7wyjVHQ/we49rIspd+IPAV7ASzOlmJ
	 O1VkLK13du1dR4oxcwsjlhQA4TckRlv4OxwT46vnXxizTU4xju/eyBy2QdbYYADSJM
	 NyYV4yCqGfGgaYIInv+QcFikIYW1gZlijN3g0tFYln4nxckaTX+zX95UTIL9B52TY8
	 U9Zjkjy1RXFzdCxxi5+Ox1unW7OZwzVJez1Gqlduw6S3MRVI+vubxw5iGYaYTZg/Kh
	 6nXB8NFxlNuW2OEwoMEZ1k4uH3Wm2nwD/3IRR5R0YUd9ZO6KLlctLNunxNkScvTYgg
	 OYRyrktDDKzAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F278C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827579357.7391.11886495957550503278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f3eb54e3189f402f1f9e853204f15443d8bd70edc50ceb8236a3215973d4ac
Date: Mon, 26 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748275793
