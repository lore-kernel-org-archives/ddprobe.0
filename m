Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E8D22AE75
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753343993; cv=none; b=IEboc2SO6RR+dpwZ+BOLGDHfVDCJinUkpaa8JchoW9LT9igLBL7EX1pXVr2NsW+x2fyRwuvulQM9RD1W+algGZlNY7KnVOk6muEipnsqwS5aZ49aoctiLB2m3h7SB79J/pnluP8oT+E/rwPe3rvpqgtDAdCUE0Y0ziL/ChVj/6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753343993; c=relaxed/simple;
	bh=ZRVAUXjIblvZI4DjkOOe79ltxJJEZvj/4BE9e0eXJL8=;
	h=To:Subject:From:Message-Id:Date; b=boNQOjyPNcLCVMyrjl+OdHe+G8pDGgxi96S6rGf4N+TJuw5ySkDlDZfBM+fyX7wLGCWNBnNAYBgHtV7SlACQfXlKz3EgvAuRF/TBmEt4BPU3jXTmSEMcQChi1TjV9BF53cUkO+2hToWkBVKrsmyKDHsQ6eXmlNfRiEPxMmYJtpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiJqxj4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiJqxj4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B1ECC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753343993;
	bh=ZRVAUXjIblvZI4DjkOOe79ltxJJEZvj/4BE9e0eXJL8=;
	h=To:Subject:From:Date:From;
	b=eiJqxj4Z24rolpbUNyBZ6dmVGZ7IcP/G/hTXDCtth9tExY8zqWtJdNC+XqsoWLGwf
	 mKEOudbNxHy3eCaGpQ8IHGUZeCt2H7oSW7UCulb3zMQLhF4idX/yfR3L6skeFeWJo4
	 95IE4y5wZvPKXLBYCyOcn0c+78RrHi3EKwBsKwXqPH8dVQqvbmpMMvFEVkKyPYL+k4
	 7o+2IsyWH69qr0bjXNE5GuVNzYp2MMByYVggtB++pzWmDpX4Dy+hWB8IZmaVjsIYTp
	 Pdz3SGsWcaI1KeqjetikfYG3UB75AGwU4t/AFjXMHVWuVS9Ef9I668tIk1wWWOPHId
	 ftnpT6PgWyIhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E925C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334399357.14040.5959949565037364709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94b62ee197d0b4461f4f09f25a5ae4986c0cf9cf22abb94404e8e32ca7b4163
Date: Thu, 24 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753343993
