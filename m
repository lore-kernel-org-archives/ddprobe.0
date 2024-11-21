Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F49A74068
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732174554; cv=none; b=UGFmGcOIn/qjUJBDR3vlb3mJ3nSSaZNcbCzD2kVsPoGY7rX6Ai4ZndrrTe2lT+jExIeI0lr0LKB6JpoUA8qDl1YUFEhiPfBJonyeTHkS4s0eXeGfpzCD1D7+UdEQVJ+ffivz8fFg6XDwZv3PqXQbK39ayNa9hyu9pVfXQfAe2jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732174554; c=relaxed/simple;
	bh=W3eyiy9QEQR/WT/6GRUZl1Kk3Y0gr+jPTqhGZnFA08s=;
	h=To:Subject:From:Message-Id:Date; b=WWJgcrcJCK/fFuYvJGtqcN6RimzUHWjeHoKy8cTwiifYqoPWpe7DwH05t7RnJUIHGvD8vzfLKgoia6cJZ1Xws+2IcZhwpGiu49zFxRN2V7Q+EByWl26kNZ3ffqWMLVsZO1LTtz5Ho07t/fR76JuX+Ov9ftFajTQm4P71v88XvkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVaLTMUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVaLTMUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BCDC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732174553;
	bh=W3eyiy9QEQR/WT/6GRUZl1Kk3Y0gr+jPTqhGZnFA08s=;
	h=To:Subject:From:Date:From;
	b=gVaLTMUVDdnRyesgkIwur/vPUHmymXcL7UjcCJkUpUY4YcrqezLx1IxmWyYveI1pW
	 UTSU6K7pRtv936NYnIayXt0+8rkPQMHVgYnFlK3tB0lma8HkpkiKlATpv/ngD+qTqh
	 l7Ip2nE3um2ipiU8gmBl4NVomvAh3vo1VhVKKRDBojToiWKeordS+ZBt7K0hGH+r2Q
	 wVF1aj5Z5E85LpVcfYP+t5IG1JUCnFjQiKejRC1kf7ZIcZuo7BWlqa5vJ1TZfLgPqr
	 hX4CuzF9Y+QKjA8C89kLd00AJDtniKl6//QUU2ArFz8z2ijQQ/5pAXteEfNo+WRla5
	 594I/dqFtE87A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B42CD75BCC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217455360.28124.2937370487284186639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0454cd6c8ff11d5386538aea318f6c47af461a79533bc63f71aad2a21fdd3dbd
Date: Thu, 21 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732174553
