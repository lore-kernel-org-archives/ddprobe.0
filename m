Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186861EB5B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771323294; cv=none; b=KpKWqimYc+PYeBLs4mdjcqh62dfG4O8qcxmovXurHnsErLo7fWGY+JV5RzZzOQitHIMa1+z5mWT0tqXT/OeynslrvA8A3jNNALx7NyV48zkeJ3g0M7cxJHW3NpxKWuroa98gk01BrK+wbWh4yjKhaSuEHqWERVOqEf5I0CLgVfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771323294; c=relaxed/simple;
	bh=ZRjgoluiglJ3nYbOgnIyiVsCuTbQ94UdHByOSWSs98s=;
	h=To:Subject:From:Message-Id:Date; b=I8yGU6urJw51lWpp63F6DsuJ57TEcnMswqJpaT2UOfC4+ZN7SBH1Ic1O0CFej9HHrFKTCZCbaYT1zsnMGzsdrTGjwKGOSxFFmrQaVq+lflKRgoQYkNuZE+rdTN7o4fZstStEp3mpBHLiuz5t9GBSP3nvJpcStw4lVoYXSEXbz+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iy9Hf+ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iy9Hf+ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771323293;
	bh=ZRjgoluiglJ3nYbOgnIyiVsCuTbQ94UdHByOSWSs98s=;
	h=To:Subject:From:Date:From;
	b=iy9Hf+ezIVHfeybQ9eVy1FlzreUcKvBo0Q5ean5zBlxtaf3Mqj3OkzkxCf0cuxyr+
	 Ms8Tp6ksoC4kP2NRWL3gBwWyHRE8pGXe5o2QT9JL2Yz0H5L6Znd47BRJ4aF27XogMK
	 rKRft3Gf7LvF9Hmkk0JxIEr57WcVKMZ4xg5uEIpVSWuK0bcJVec4hA4s9YoVy9LwYF
	 XmnIcIDhGcCxKFI1EA6PmHf5oQg+gRTI/MnLngd5JViKwkhDVXE/C+oNur2hmVAU+o
	 XSMkZzI4Wxi5nRktFPZkr6xNNTeqFov6TvPgx7rXtMhngYobqy44l+flA/WlpkSy+U
	 RGBWY9OxQcsbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E4E68160
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132329358.28341.15169214862241506570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7a12a3406467c904fccd6f895b5b75966befa19999b5f845280ab716e5e2a4
Date: Tue, 17 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771323293
