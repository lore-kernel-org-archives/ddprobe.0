Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AF23597B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743680994; cv=none; b=b+qOnMW0zof8z1BArCq5usiRXQ/7BF3ykDU+YWQ59D3PFjOPd3NQl7k26xusinyHI1QBZajB0xG516FCKeHI6/uXEBIMZ/Rl0gYWMVXeU77Jfx1I2y1OkvnxqOSfONcCWhgieBpbDKRb3y2F0X7u81SY4fpmUaIih8wQ0iWpL/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743680994; c=relaxed/simple;
	bh=8uieziMO1FoJbsLV5A/XUMbm/TRnrz2kHJP0sxA9JJs=;
	h=To:Subject:From:Message-Id:Date; b=DpVz1vh6R6TQff1W3N838yT6KdUKkPg6GbeXNDJUmKzsTtq65+dOByN99tTQltKZxrVXc9IQeIGT+NK8C0McFt35PijVinB4IEdMNCB/Nu3Nyw16YbYr0+Lv8B5FV/30W6OtVGwb5q0XwMBTffxkp7dQnQwpNgUK4LsLw12I4dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNsn0Joa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNsn0Joa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6602C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743680993;
	bh=8uieziMO1FoJbsLV5A/XUMbm/TRnrz2kHJP0sxA9JJs=;
	h=To:Subject:From:Date:From;
	b=SNsn0JoaGxbAdVE45Hhspnqh5y6kEGS9wwo+4oWfTVz1A8mlL7IaEoT6kXXqO15Fu
	 huMH5aQ/QPF86easXyp6ZWEMl9nKW1MIq71eg70tRnHqO4CETBHAGkOeOUgJUpt3w/
	 BQjgjICnrB00N+TQ9kCrQSWFm9yQX0r/au4Vyym+kz0QMV9/3msdHATkPmygBuTuvN
	 3g0k8EZGNKR8YaADISmDx9MhhTnmL4mjBZtgj/SGjJxzHgTrto/TfVtYirZhnvb5Gq
	 d2Xtcv57hsCGcSGXA4t+qnAlpH7emE38SzN5JUZvzLeo15BFdAtts/ERwvttEu3I7d
	 fblQVyfVquOqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65CBC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368099364.24740.14398855540782264117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4061a3c70172b16465dab6fbff1bbc13a72327eaed4a986ec6478d57602ab53
Date: Thu, 03 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743680993
