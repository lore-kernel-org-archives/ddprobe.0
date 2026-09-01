Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D093BE141
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788247834; cv=none; b=WixiIeVMMf2zbL/WWeMndVR4I1EyvhT+WVc/1oqcaqkntD3uiI3F2BukgrVRWjzeOFxQT0/f/diA2rlBsXkrZlXzY4V7D/FUvenhzpezeq5xpr793q2npXYaKie1gwkmhpobX8M3ycWghjPREpuM5K3/jvNnB61/kYuA4mR/xwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788247834; c=relaxed/simple;
	bh=8lJWWaZZZ1EDxJPoTkde8yL0mwQvkFdBxYWs/xKpSlE=;
	h=To:Subject:From:Message-Id:Date; b=Yb07DKwsn5uLwaH1YC61kvYCxjyCAuSyH9smQ5OViOQcXaNIrG3I6ufijARzAt1PisMVugwVzc2j7Exvp+wtfwpQ5VNwqSwxUpOz1jxWwpQFHxsIpUIArfctNQ2nqfrDdRXL2BpKOnh70mt/6IBBqyXUhDoB8kB7sN7XBT5wY+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXgyKLg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXgyKLg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE35CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788247833;
	bh=8lJWWaZZZ1EDxJPoTkde8yL0mwQvkFdBxYWs/xKpSlE=;
	h=To:Subject:From:Date:From;
	b=uXgyKLg2LZHg17OxHah5Ppz6kkd8eeGwhWmIrYqlrYc0Y2bGSWOYj9qdCttRKFSZO
	 FaRs3ZcnLYrVg/2oKNPDseIh1tYOCXyFVZRTA7Mh/nlvrsFyzjSsk5MNKzZm82zr33
	 zTi6s7gHsKGg3/LRj7Gb7DlqZez4FymbKfSdrLfcZxavGyEapUnIYHBZTeLa3MX4IQ
	 YMpMY5jSJns8KiVBdmaNhsZZzRLt3Q0yCZYXROn0Lo1WzHosQ4xfyPGUs6515BmbEQ
	 pZA5FPBh48y995nrSC//N0wHXqNUkR7YxU9VHJUPV6qAXOhxXCZrzs+zbwRT/2KUuO
	 9PETqEYANNpxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA617C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824783368.17191.5660666308628834077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72b7ffae781fcd40bcc2640644815847ef336de3c44deaafed4e862179c9064
Date: Tue, 01 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788247833
