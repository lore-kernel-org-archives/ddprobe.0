Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1900B28373
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730342154; cv=none; b=UqOkcJ7o1il05Umd7O2t/ahK8/wd6Lt+T4JdpDd8oc/dtkZud0kBXywQWuU4OsH5PCsJfie54STOqW/uFeAm2wNRzeOseMg8uuw/g42HFAWsQY2XtztZNV28zB/442LKl3sJOz2Mcw04A40wQVspn7lrXUbTAR6092HbIh1KYHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730342154; c=relaxed/simple;
	bh=R/8ePkDj5TDQpOUnZ4J7o5K+M3pOScsxmWz+ClngSuc=;
	h=To:Subject:From:Message-Id:Date; b=Co5EXiVyk5ugEsRzl4oLI9Qja5jyBGTI+NoMTWFpKL8u0YJot5l7QdTR5nxE0JS8ugIiENYY76Q/NEpZUzaevFO1zem/57oCYIrKMVzQKJ2R0g9TbzIuFBOX4u2YEyvhjtbcNHzHwWLA2sDRlQeHKmJdVc9P5KdHoO178kWbvWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXBgaYwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXBgaYwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FEC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730342153;
	bh=R/8ePkDj5TDQpOUnZ4J7o5K+M3pOScsxmWz+ClngSuc=;
	h=To:Subject:From:Date:From;
	b=NXBgaYwrzjzx1i41mBEkG32a8xEzurBkzZn8Qh/XvVIUr1rfHvvW2ZNjy+a7+jqwH
	 AjVTUPbm05CDyTbqav9aUESD6xh0zLBN+ju3+pjimxBJ3qAG3kx2Yv77GmxyIgutor
	 qaXYUgFTUs3XIU1tkmePLoM+P1Bk6bw6bkjstpozNk9wr4oQ5A/mWQ9+H+IgwDgpW5
	 Lg7/zoqFFSY7a56yxxaxv86tKa+5KVOFtQIY0aZLQPYTX6jdAaTeVQpEcb+5rxGLf0
	 Nv5sv191aHzlXx02zI7NQiZDbmFgsebNyd8llTodlRUAvqdNC7zUBNKkirMZyfs/Po
	 kuvmEXezu+JkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92207E68946
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034215359.22800.12148236147750983657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8a427b533b5e0dee0494f3d586c1c996f0c75a8ac0e488c6a860268f851fd2
Date: Thu, 31 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730342153
