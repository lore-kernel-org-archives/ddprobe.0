Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F488828
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737857754; cv=none; b=Su+COiKi/x5hjV2GoXs43rXi3lDCU53vmKU9JLUmmUGnBYr0Z4JXW3gNkQ1W818KsyycBFzncC6QP7xzRsWyrZUHZmfhgsFDNh41Sj7B08pS30N2VdJEApyPywpi0WX0VmWthfevlHiqVE53aQucEHua0w3SS7t5YJiWgXn0E4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737857754; c=relaxed/simple;
	bh=hqmApG1H/QBwAoEcgPBbtfh6GmW3D0dSVjtaAxyiLi8=;
	h=To:Subject:From:Message-Id:Date; b=j8XhVFL0OZBIAR9NTFKR2HDqSDzImsJowDdcrq4MdRSsOmlAz/g/oEaXNQbEhNnAYJkqyCsIBFo3I/k+BCclKFcScB2iHuez10NnaWwLqLXo4uF5ia3UPV/muFhLm1MeSXH1QDRwTZRX82//Px/bObS2ARTxI86B4WirkFWlLb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXgnJfZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXgnJfZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BA0C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737857753;
	bh=hqmApG1H/QBwAoEcgPBbtfh6GmW3D0dSVjtaAxyiLi8=;
	h=To:Subject:From:Date:From;
	b=hXgnJfZmhFS/jrf+oK2+C4KczLZRCzEw6IMAiH2XkWGknOod0zTEj2rmpX5zvTOnv
	 ZbceWxEhNzUuwgfXIiZBaoacfqKTMj25vT14/nB7ugou22qRGOeDdcHymwrcb+hUh6
	 s+BEe/hdfW1eha+b5zx3X+zPrqxjuRT7MYc6NW4NM5yu+jF0eWueJ3P43FUAW+Zyf6
	 7LJR8u6wgM0AYd8YcddqDRdSb1AQvh4pQb+L3rH4iiGsKBx8RlD6Fy5z7VjNxNF5tR
	 uOCJBAP6xBkUTMggPMLCwRSFS1PwCT4kYf9CsUx9l9gDzTn0mQOqhrcWifWHPqlWiN
	 Mah/HOzag7+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE6C0218C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173785775358.5382.15017718580036737566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e08531335f3adf44bd3a010825a0cb1a17fdf1769550f41db84f4ecd38333a1
Date: Sun, 26 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737857753
