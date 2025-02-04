Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429792054E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738710954; cv=none; b=YbzR3Yi92knuZwJYMN99L8aArxQ01xYQsMCRBiftysbtrKUo6Q+vTvYbR292ZnyO3jfRMdlwskJfmwbjWFyf/UFwLzql5aJ/jtUkKVbrARh68hxhID8Yy1jjiyb6wNwfhFOU916zVq3KhL0pTAzYpHY60oAe88TEchhLB78I/Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738710954; c=relaxed/simple;
	bh=W7GoUlWutp5oGOn3ijK3rgPrpgnVTid/Qx8iJ8d8Qos=;
	h=To:Subject:From:Message-Id:Date; b=E+Vdk7OnM4quGdQO7Lh0HU2zKgGCOjBBPqTn5B1WWoE9LYmzYOhv3pqe+5pM4tGQNABllyn7ElznjAMnOQICRM518hToAWoUIng3EAzhvHG+CVZu/w8D3r7zGzZnF21zqBBY5b6OSi9OG/A4sApl6atDwO6lmyIuv14YN4Ab8rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJHQSb4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJHQSb4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42ACC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738710953;
	bh=W7GoUlWutp5oGOn3ijK3rgPrpgnVTid/Qx8iJ8d8Qos=;
	h=To:Subject:From:Date:From;
	b=mJHQSb4LiGGS90BOfKwG64nFUPwszi13cZ554OrgMx0pbomp18rMrTYa0xIiMI68I
	 Os2fSd7qBYCSeCI8sF+3eN58ayPGWriXEZjUw9p3Y7XSg2wtgHad2TZYT5uoIqfajA
	 MPPO0PIxwfKh71XjUzOSbw1iyL2uwwK1ygayOxs0n6K821fnbIbjKYYLEa1qI0sWlx
	 5msI2QPHqBOwe++nrWXvemrf3eGukq6g4Ng8aBZI3EG54TlAuIJGs9uYaE7spdTp02
	 +pGeKdprBO88hQYNZXL3msGLAaHzqoT7CqzfoDAkhdD49BinJ3lfI3vUfz7NKNMS67
	 f+YvZxOnlwE1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D68CC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871095363.19869.11027881305344913269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f2b31b8f747d01cd9d10bd5a47814db75d089891337494ebef4ecb22238588
Date: Tue, 04 Feb 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738710953
