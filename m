Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B50430BBC
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772361894; cv=none; b=bybEAN+dtTmECXVruYFDPY0Velk6LLceJib5APT9AcQmddt8VDjLPbwAjy6Uwa3vs5AopSYuz32G4o+ySMXWWVclJSteyIcOXEol5EEWR184wDawGxe7xCefF7TsiiRtpR2SU9BpLWg01rkQodX9UN4mUpY0JfgWjjKOvota7NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772361894; c=relaxed/simple;
	bh=bwnFXAXlRH/t6Ol0E6LYOwJhBiBswrJQkz0If5SpVn4=;
	h=To:Subject:From:Message-Id:Date; b=pYXolY4dKgzh3ywFm5GOz8r9ysKFSEUgfm/tmgT1SF8bFDT9QvrRsC0YUvF3efZkUza6u2WwzLyYFMfa64ZM6Q4KMfO7H0W47dRNHJk2LXEZHCGnHCyg+f2mjg7SjrLhGkVUGEKaztEtAyWHig84UeWH1hLycWKDz/HoSIet+8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO1F9ivu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO1F9ivu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D308DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772361893;
	bh=bwnFXAXlRH/t6Ol0E6LYOwJhBiBswrJQkz0If5SpVn4=;
	h=To:Subject:From:Date:From;
	b=AO1F9ivuJTt7dFdfTPnq91aTsrx/W2VA8/iEtN3aG1D5TAtDen7Aaamzeyk72EDdT
	 +rSAX2nT4ZdxH6eRMW69EhNl5cXKPfbv4lHqMTeMLeH5Bj68E6vY4PvQ0/x3xpJlnb
	 D2JLb3HqWM5IquNzWk/wdUXtux29FOO/keXxWGrrbRPfq20AFsFPgbuuKHqW3o9oPu
	 uU3x5uZwD3kxRwtDZ2fojsWNit768Ng7rqL9dEvQGWeIENW6DZHDnXrOFqTbQXeNAJ
	 E98HOj3/VnjG+QnGnrEJULezW+b1IsnoFfZ01Sya9zit73u04rUQSPHnk+ax0y235D
	 rd/mqhNYFH3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF485FD005B
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236189367.29533.15474388529976783904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ca7b82d38fa8ed5377e1ef831cac7dd2ca32bf9bac8a6e44e5b4e466b3751a
Date: Sun, 01 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772361893
