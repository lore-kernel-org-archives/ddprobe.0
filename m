Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232E8154420
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718712563; cv=none; b=cMMm5vL746edg04xodLPuOeBax2gj0YzDal8b80VaSsySJjTlitBGNgIQHs7u+OCYvWhxyDZoKe+4gSfjbef3gl76qRuzOztClCNNftG07819BGqrzzm+0rBKiCG77It1SufnLI7Sy5PMhgoZAFmUFL8hufL4NPVu02yPnmgU64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718712563; c=relaxed/simple;
	bh=4WnDLM5vik0PVGUXo7LPXmY2sEtJXab9JE2e0sF3B/s=;
	h=To:Subject:From:Message-Id:Date; b=sqYaKOVQ/buPFQveSAqA/nfI2j+fbaB7l56Mj4PR06TTAjnaOGbsPl3bEc014E9RTuFK50so1VmiK0/MNAmMcdnwuW49rZxRmaol1pEzsN4C7pxS12Rduvl5dLXVHURT7iucl0uO0jtibP+2geKqAWnmVWVCQxZd42abuKnwr2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxQKjyp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxQKjyp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CDDC4AF48
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718712562;
	bh=4WnDLM5vik0PVGUXo7LPXmY2sEtJXab9JE2e0sF3B/s=;
	h=To:Subject:From:Date:From;
	b=QxQKjyp5RTfd9p0kxhsb6uVa25UQpbA6XSQnlRPw/tmMd3Hi+oqFvX/URtWDPKO0H
	 r62EzzJliO8jO84t6M6hvwp8rlXkUY5IPaBmdYIj94U5Y6TCQEkstlUn4l+4tNaffC
	 /pnWcwK5DPXm8lSeDB7z3t4u9ZFt93clVeAugoyXj3FIcZdME/9YzGAZf3UpL1yUjH
	 xek5QK8wHKYBu5156zPiFsbaSSYC9j7+vErQnXdoC2yHHDcz1TMCQXTlzvRyYS5Eel
	 87c7QoZnowVQgazGSGp5D1Qw0XYwPTr8bhvh5gpoqFnUHWT6B4RvEkLmqNbKALs6cV
	 XhPizHXTOnmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B25C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871256278.15553.12894092544607180005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291ef565dcb0a50878df747a10d7c0aef4c36616a76fb540109eb27d8e97104a
Date: Tue, 18 Jun 2024 12:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718712562
