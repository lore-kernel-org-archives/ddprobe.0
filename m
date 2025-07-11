Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272D32EA484
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752248394; cv=none; b=Fav+voNqMGuHkF3be1F7TsNSJwHWRKsgxa6QQMe5q/19jqb+kp+pA7xscYcw8uLlJEEYy6DnxVheVC+CDKbE1lNuHczlkjVRGfbsV5Vc/Uhys0rKDVLwy70JQS42O2ID3/CKTT8+v8WCwk6E9/tlqzMBLEhmkmdWJeSZlyD3nGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752248394; c=relaxed/simple;
	bh=SmhqfDNjecGSGotKgGgD6D+ty96YO/VqEee07i8OpUE=;
	h=To:Subject:From:Message-Id:Date; b=IAT5Fm68/1OEJKhTMmhIU/zpa3qdoXxD+LbwtWXW0WKNKnzlBvD9bIaub/Lw3s4B8tW41cZ9R8NyncvA4fSwV8Ge+7vHWM5/1J/PHaATdIBtWbffpyGTaKta8JjxwJS1BbMDUhFyJ0IlQ4PwMKOq+hC7BWe9D4+XF+vUhiDDQFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQAAn7ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQAAn7ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B78C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752248393;
	bh=SmhqfDNjecGSGotKgGgD6D+ty96YO/VqEee07i8OpUE=;
	h=To:Subject:From:Date:From;
	b=mQAAn7kazgI0dwt9uu8wo7ybg6enyhhmKUEj5N66lRuSLnFlcGEZ6O7dPjHbMHGb7
	 BGS9gLCGuTk09dZnjCk+3wdCZCQDSD2EacU2siBvsvgUk0sGyTwDYUDimMuoBh5t1D
	 DRmPkHttPcwL5yNm+v/INYv1oNw8Xi8cVU4PNDSJsQnqWX7eerQCiBDuRzo0KUdjYI
	 Y/XzWz802+LjBYaSd71sg5Fw/Jl+iOmSBrP+VLwaRgt4UykQoIKcBzwyYeGzZlAD9t
	 DL17p7FHEIn+iiw0xtOZWvxJz6isX3hreBaQbQdoIdGhwGGklOEPTGtPltQtbBe+00
	 yjdC0di+A/Rkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB16C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224839357.19314.6507257138452963938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbebbfb926308a61ae4052a3eb3a233de7272eb2ed916957cba3dec81d83ff2
Date: Fri, 11 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752248393
