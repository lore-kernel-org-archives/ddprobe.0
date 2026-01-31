Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EAA2253EE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769877834; cv=none; b=gocOlXDJr8j5aNQwVe/Lpwem2bd2j9zuQpJ1YBj1hpwET6+FCDuibz/sztyFe+BMdGQ7oX62lj4ilDZzuc+ksGVvUxOiZW/IE61xNmu9uRfifl7tJhnRrQgP58I1uQxqVoDYKRgY7d4oD29F2q6DyvqNn/GyOTU5dq/zaGqzQew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769877834; c=relaxed/simple;
	bh=m3HhING+od0syw6J63P1WJruXtCpKavzHy8sutD74GA=;
	h=To:Subject:From:Message-Id:Date; b=PLVj7h3E/j96lpxdvNLBzb420O2ticOrkOdwyD0SuDNrHhcJvfZ7XHUK3Zu+3ZzgSlYB5u51rL9j3TAIoSLR04OtbqADq38GRv/GsI4d5QQ6lPgrBRKJCSX+bdMrwvbq/hNz0ndL/IGbrz5boSXrGjJHf3yUpmpZaJWE+lV/iFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=temj+5Ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="temj+5Ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8C6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769877833;
	bh=m3HhING+od0syw6J63P1WJruXtCpKavzHy8sutD74GA=;
	h=To:Subject:From:Date:From;
	b=temj+5RyNQy99G7YjcAl8XqiWgKxKzH3BHlfNOBCebd1vhEheuOKqLuXBzQQO6L3J
	 UIpcEtGcClwMMrG8e1X+q8VkBLem4RIHFgMqKMMKZoKHPNM3EDRXM3lxhYgk7E+vLk
	 odmbdhz2ijP3Xa/GH6H7bipo9t0h+jKNyMbDK3BX7e7pH8sWMXfRNKObT2Km/EX2fW
	 Gk8iUg2LAqByFTdeXcaQdiIiZw6CxXuf22QDH9+bfk1p9W+UmN/1hCXE3erUdEMY8m
	 xM0e8+XiXW+CXWJMf5fiCPDmi69OPouP2mNCvU0v6ZhvZjYJ9IySVbEoFBgZsfuk08
	 ajKklzwFi2gUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC70D61037
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987783357.32105.16012618033583078668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5563b9ee549c6c01a7c5388641bceb345fd6a53281b26c39b64638f986a8249c
Date: Sat, 31 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769877833
