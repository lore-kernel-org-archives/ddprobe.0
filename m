Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7672063C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717956443; cv=none; b=iv7pues36/gnvqb4EKLfbGC3P/eizjquOF3DfqxHwgA602m9tZ0ZrQw7RQXqSVyr+X0pJmOpGQ82XIo/+mq2K9hWduAbQBLNjubqBUdUtL1fQKYMY4YC5bE9aBt2QIZc9iIMVaqfCcfEbyx0QkaP/HYaivHEpUBUsWksabQ/jiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717956443; c=relaxed/simple;
	bh=8R550biUHYCNxUaa6kT5qKoCbsYmyxH6jYiUHHW4T0Y=;
	h=To:Subject:From:Message-Id:Date; b=EQqFjyBJ0HwhAEaKyu/Y/xkulnqJEX7yJBcZnDYi9Iv6bvpXcHuaHzcVwg13sSoTVR/K0oxBNoJmM/wfn+Jbe4cemm5Gh6ZZNDBssCclAfCg8e17rmd5LVDGbMo2WOTf4A3C2cOuFmtBYPmlcmkmqspUvOpiy2W0XrvtZRK8GIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPhvAw9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPhvAw9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04721C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717956443;
	bh=8R550biUHYCNxUaa6kT5qKoCbsYmyxH6jYiUHHW4T0Y=;
	h=To:Subject:From:Date:From;
	b=tPhvAw9aPuxsQH7sb/irdUnn6SSi7MtKEF6mjfGUynfl66oSIbWtpcLnKUe+y4i/R
	 gwH1k0QhoGQHxqTDurGEKFGnB/NcJSrl8eGxra9fRSV5534ura2cBD+S+N4DbVgBre
	 2gJ6I/ot7plQ/RThpR/lXgh3KBATKMKRGwGUuLK4TCcdBuNgsId5GoeTgkNwSOlTuP
	 EtnBvBUVDAj3B1TG2LouxtBaN1sHLwLgXWy6iMk0Y1BMs0324O2Dn3Jq9am/Mtu8Z+
	 Xc+jlelzozZZp2UzteNbBSWq5NiKjWOXFHl9XFEuXp28asedLAihK/ViYiFNG3+698
	 6vMMbhxVEWdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2B67C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795644287.2861.11562235733282141420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee46cbde4b55af6fecaae055dfa26cbb50c4394a07e0c7cf1a4dc8c30b0bfa5
Date: Sun, 09 Jun 2024 18:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717956442
