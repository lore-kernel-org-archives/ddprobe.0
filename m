Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81E3212549
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764256973; cv=none; b=rkA0D8fipdnQWOXyiJ3YWtZei1WxxuD5kvFZ54/znVsC2IDYMo6dLtQbWrhsaDmrSio2DCL6z1017IdQZZ+IxaSrEHKn6vE6lAop19qjNwXjQahUTJtfmQXmZ3uqomPuAM5MiNAdOcsPHOGxBVqioUYaM7MnGuEOdIIeiGWSStI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764256973; c=relaxed/simple;
	bh=voY29+pSaV+XVC1289rU8FcEuaV0yWiUG9GaseEzhqQ=;
	h=To:Subject:From:Message-Id:Date; b=s3CLs+vA9xG9TecpdjlsDm30HJqoRKxw59O0IcgL9SbwvxuJ0YveIFBHtE3yR75sXe5U/V/P+2376E2LB3e+Y3LOd/dfyCyThYCcIhR9JlXiDHNpiYH0rAZ6CGVf8XMyM/RlTp3/uyGQTUBUOBQoRDzYx2i3jUYx1PPjVuTJxuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZZOsOEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZZOsOEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF2DC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764256973;
	bh=voY29+pSaV+XVC1289rU8FcEuaV0yWiUG9GaseEzhqQ=;
	h=To:Subject:From:Date:From;
	b=QZZOsOEzVU5VvWI/te/ZWQMRD++1SXmY+QhncjPTpf7GcivjAA5Ku2XfYQPxxK1DB
	 IpxBahGc9zsHkPn0wOd0huJnoeUrXx1XzsogEQ3Df3yaCjhhcYLj5RIBNKZH1DIMQM
	 cIxhj/0sT5YF/YbAclyNGkyHii32czp7ENFtFIrQVFJylC9HK6qTVCXHmXmjDDbBG8
	 HzS0+qrOoy8SgDs3ieba2CytYlr8UV/mO2yd3HbLLj4rRBtEnr6NOk6xVX7msbwRbQ
	 bl3QC6BzNUbblwo5lVkpjyXK+YGJHcfYa9hrBKOHJWgv3o5cbqI0zIeplimdwQE96N
	 PUOK06Z7uVqcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A354DD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425697366.22641.4557161700299391759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4778cb1755f4130b7468d9659c10fac0265e0b83ea3495e0494bfe508adb771
Date: Thu, 27 Nov 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764256973
