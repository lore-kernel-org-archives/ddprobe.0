Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5161AC458
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746467394; cv=none; b=Y5xgvd49feWIhMCnO1x7zoD1HVzmuc7BEi+nu2OQeEaEWrpng4sP7JSvbEAFM+pgFdsPl9zB932KRtFrVMO5gngo+U3fbq4o0SSH0afTu9YonVOXttna5FNTQgzWwTPCODhX6nE/EXoOoNC1WgMNuMkAqoLYQtdnHRUQ4xydKgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746467394; c=relaxed/simple;
	bh=6DheD5SjJPgyxde4xjEokgPxTrFuk0b6ejeYBIRj2og=;
	h=To:Subject:From:Message-Id:Date; b=Uw+b7JkIwSYhEOmS6ePOFLr5oAt2s+KtjwEfv0puVhPCu+h2ZUuHyqk9oy55ABuuWODqLTtBhxL4HNnAJjh0/BGiCtnvv7T5UHVUYUZ9SCL81E12w40lbdKGwjEIfhW5/tURO7hLzqkVR0lMLP3NpeEYf3q9ZkOaclEyG79pBT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un/gqaZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un/gqaZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F85C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746467393;
	bh=6DheD5SjJPgyxde4xjEokgPxTrFuk0b6ejeYBIRj2og=;
	h=To:Subject:From:Date:From;
	b=un/gqaZv7XVvF1xK+utj4Y9b68raLEk0/t0WpYDIE4PtnbYmH4NyRnktDGmJRcERj
	 GmC6jNm+y9/iUb+SxOEG9T1XjhTWA/IoH68VQiQfqRWT6uxVh5Sjv/DkbbModNlVv6
	 k4nlDr9eDcFeR9zKyW8yJ9dktPQRIyRPIp/sUfytczERK1B0leBPAgOM/57WuooueL
	 IbUcscTcw1484UWfRfWfeJF2e1x28XuwFWCm0UR8LwS3A9wQT9DQCwBtODwDm1l2hq
	 spQZG0phJaxFdlMAHYbrxz9LHP9aHD8AmOTIyexcoHMtQw0L/RV3YEs0un9Af5BYUj
	 WyiUcMgLdI2+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC7C3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646739357.6029.5747341225069185003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a9f33b1f4fc25d1cdde4765006964ade831ab20375b3f669fe1b839360b727
Date: Mon, 05 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746467393
