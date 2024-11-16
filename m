Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36489191F7C
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731749154; cv=none; b=L5cknbSeAjku3W9E/KbG4K4RIiL9NS4feF19+prlSnNylJ588/iu5g1x8uaRXE9O0q5uPUqUsB57fPuRQfdTEBrOPzGSIwSVD+6oqKsxEzajg3ba59sTY13PxmaubuYHuxq/7y1RBRr3TPWPFdv0Yw5nb8Tb+n1ZCKDmIGqRDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731749154; c=relaxed/simple;
	bh=zrpa2YJO0W+DnkKo6uorGOg9IlM/5cqdIAINKGv8doM=;
	h=To:Subject:From:Message-Id:Date; b=Y9ZhTWxfR5YRDuoPLfOKLXiC2eolCmKtojJYKn1nyku0vLm6wqJoPH7pL3yhzesCkAahAWTODq7Tysqtz5Zyj66qjaYxNTYqODF1CyixE+uwzRzuM/WPSdilrgVne9XHnXILed7yWEVMUF7A1Gsfi0HKCVjRt92l1g4KMaiopbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlTq0mYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlTq0mYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC889C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731749153;
	bh=zrpa2YJO0W+DnkKo6uorGOg9IlM/5cqdIAINKGv8doM=;
	h=To:Subject:From:Date:From;
	b=WlTq0mYVTmeVjQHRXWhhaN0Xbhb5pAHtUMyE9xi9yPAo6MR9t+3SbZ6RYqcVcJAE/
	 EevvVnBvEuVzqUNcFUNf7R4IacosfPY/MAJAWwCaTi18XZAl853LSYTrHhleZqu42h
	 olM+er7DyTJeUEX5LKPhDyOz2qLCrUjC9s9h0ZEfAKoTWhhMiNgN3GMt+qOxg3Zi6U
	 v/wW3puy8gUj1A6yww1p72K8VpsWbZuyTuepJp1U5LqJODb7jXbBC68OzKWkGTW/+N
	 VfTAeZCWpq7OJl7WqUAyOA3NvhHTxCuF12+7DJod+MNSFvI2s3Vmxcix3dwI9wafMq
	 +PIMBT5H7SrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C2D68BE5
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173174915358.1444.18237834514745642679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b7109cbcc98d695f3fd79881470c3a128dd805cc267359684a88f6927e4a35
Date: Sat, 16 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731749153
