Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9DC41E6C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786603235; cv=none; b=G8vqHo37tLhjbG19jUR0z1HowPK+n/XdhoO/KRBlq0+eNYHQhcw+9Y/LJcD9oOLOURoP5Wyz0k9uK2XwSeAd5szKD3t+o7qM9VvFBIFMvXsBg9XpMz7DdCbDvQsXSn8ozNJg/Uwx0FrC8NhB5xDXq4cWWlO95W0ZGqjUaZsMzFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786603235; c=relaxed/simple;
	bh=LNYxGZT7AWBKz3eG2oloQ8vlNkGTwjwUO4msSvOPpJI=;
	h=To:Subject:From:Message-Id:Date; b=VvbsX6Z53tUviBZzTFEHegTW/oxalK8rkjIVSErAKLhPEJVi9hDxeWYXN4Sp2EKkVqkiZB/S/yBvgvX7nUawiybmP0AmRfFVGZK6AIb/+FeTExMFftTDssGvqYLRJfN2D0WXv8EjXCJNdEpdjpVOlG+HgqVB5k6w7g07vC+3fTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCCuoRiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCCuoRiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FC2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786603233;
	bh=LNYxGZT7AWBKz3eG2oloQ8vlNkGTwjwUO4msSvOPpJI=;
	h=To:Subject:From:Date:From;
	b=JCCuoRiv1JEOYJ1MQqZJn3bncpNiXKs75FvxjCGXdXz63ZHq+1Rs/vYhPeKXG1p0B
	 XSGsaMl2X+4Y4t/G71csYvSDjWLl1GNH8fAvqUaHOOdHsldn5isDv4v0GEDAOmNE7J
	 cVnFNJ3uL40IgJuqODlWjhy8omA73DR+hyI5DKskfFySIHshNva5f1fKDUAC645178
	 pct4kEDuDzUxzUFqo7/WLvokv8O0zhD71u4fhgcuhLWwi4BKkEazfgQOCJkVqhLHJd
	 5WB0DkVsD6t2Mh2qdxvGQNgPijdl+y5C4ba56Zpi0xCaDX7nN4cI5h5D2eH0TpsWMc
	 pJhevTYFIdHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB172C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660323369.17459.3882601735632750247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd3588228fe0e3d76a0e2fae73946cc7317917ad91a6605cb73f8a9734485f3
Date: Thu, 13 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786603233
