Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401B9442F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721963154; cv=none; b=Ve2AqbLu/m2+tywcuchR4pYacxOoJgUwB4DO2tv8G9QVujRKPaxoAy/oZix4pM6ByZzUomIYrFHrx1JnijSM+l654VywUWB9kCtPof1bypd1R5U+MF9EmzkXod9xWAihfJo3/HzScEd1aMvs9HO7WevY35DzS2hnXphLd6cPmw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721963154; c=relaxed/simple;
	bh=G+tmU5zGD+9WXt+iWQPawOE0J5gFz49tyj0aXD/ppCU=;
	h=To:Subject:From:Message-Id:Date; b=rx7S8svavA6GmX0Ia2vVKcbOCbyzbANe+P4u0jGwewOGhTEnaEvViOceLJDEus0LkGHALR9rcmx9rI1hSNE2Z1HGbKZb2xuluN8ZvFM8oBHo+5CKyZnBodJjNTz7hlKrHq2ZIV+qr7kTolju7cGVhRb+FtDTXnK1fQqk2eSv4c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEwJhExt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEwJhExt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C38C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721963153;
	bh=G+tmU5zGD+9WXt+iWQPawOE0J5gFz49tyj0aXD/ppCU=;
	h=To:Subject:From:Date:From;
	b=cEwJhExtx0VqYIYCQmaB9It7NMGUNZshj+LmxIvlTLKZ8tSblOI8FO3bHDfscztSI
	 qToYTInDMsuGz5R91+wWdS4+/TK7Y276Z6FYC6kbFWa17vr46E7iYORyw9R+70nqMh
	 +8Ube3kIQGmyV9xlEzeGIZ8Yt9xpxVSjb/nN1l0EN5UNwfY9xg8gI+LJqGgXajYhAR
	 xEZCAvkzG4ZhKEK+AWfgLotKf+d2yUQMGIyhMYkjgi0yZ4DM1dmYTKGd9DLhKLdIrI
	 gK9spHWEchyJnXNN65JR2z7cs9UNtGT13267WbLw1kw06XsnjD6Apyd69FdysK6mnH
	 Pv5X8FKgatCYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A18C3DA64
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196315360.25295.12513215856820992230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b62761cd1ceba2ec3facc1224ed326db9bb09a6e3eebdf9dfbbcea51050d51
Date: Fri, 26 Jul 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721963153
