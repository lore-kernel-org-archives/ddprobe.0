Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E2182D98
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742204994; cv=none; b=XenNWVmqxfR1Xb98g8B9aaYTB6Vgt9imKqbnzrTL+HqKv1x9EP3pkqvKfD7k0NToCVrUCsW8aM/+O6ykDNc8IbF/G3XLG3nDbH6T8xJp2jntZLWbXIY3ueo7Jy4wOEB8p1aFU61xUMRTWwDkdJM6yABuaqIqD9jJbEvlf6uZXOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742204994; c=relaxed/simple;
	bh=kppUF3yD9nUKWDWEqLspd7YC4S5sQGdHoCX8JbOP/ns=;
	h=To:Subject:From:Message-Id:Date; b=ntRkgQco+ufA2TySw+3ALzhdsybIWUJPQeT7eAsxof5qQpgf/qqqkq9zCrO1n/uqsu1Vg5tnDBLQVN/RzJC7DtLJ71NX42w8tNHF7i0I3pj6MshaCqPMVsJ0XvyPi+1JS+Q65ssg/X2X2eOajesBSmXGPfi0nD6LnDQyeRqhyBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqjgmzZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqjgmzZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CA3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742204993;
	bh=kppUF3yD9nUKWDWEqLspd7YC4S5sQGdHoCX8JbOP/ns=;
	h=To:Subject:From:Date:From;
	b=cqjgmzZuAWvz57+Im8omLXkdEU0uRh0OCvx0LXVE4bj2ablaXUro/OlbldkdPenH5
	 HiSq+UDYHN2BBEtKKJrExqoy5OjLlatPo33Qe3VaGm322HWBLx0HBBlYukfEjF+fOX
	 ezGAjn43Z+KwWqKXTwGSOSjbz3SZnq9eS63d6HbJfg4ZXBQVVR7g9MvD0VmKGwv6As
	 FSDbCu38io2ZhQVQklcXsAPGbPWriLHH0OIqYc6186cRklmPQwj5hNW1ufNcINUpEM
	 sR/utapJn7+826/h2AtNXo3C3FHvdzU75naQxqIuA5O6wva4b/oEY2jCYsMKxjO3LY
	 3ZG7vcVrtCmUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0613C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220499364.1430.15938106559136832737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e7083b4cc62538741cf32048da363f80f1b86500f48b70cd4ba5d388da06e4
Date: Mon, 17 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742204993
