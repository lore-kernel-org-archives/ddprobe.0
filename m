Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2D615278E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750097994; cv=none; b=ovoRZHNi6HiOd3wK9HA0vuAtV7672om3TiBOAjB2gxa/Uyhb3mff8UCnuBJacQFSLRRzUOkRD0991PbWbgcT3PEuuKB6t/GtYM6jfrNs9HB5qmbloahbK5iNxdQaBM+ogn5+ifzENRsvATVtaY6xYJR/IpnxWCXuLE0uiq27+YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750097994; c=relaxed/simple;
	bh=fB1NsoYABvM+YjXNrPivnGiUPI7H+aqnwB7prZ3B71s=;
	h=To:Subject:From:Message-Id:Date; b=kTLxfJGGICOBwUM90UtkEIZq8OKnWhXuYB9dJY+n1CzNHBtJCDy7VCQSSXF+HW8doUh+MmlBPLCIHsTNRIFbCsCbTB7rWDF0o6rBSV5odZTqJz9jIEC+iDX/DHnOHMqlzQAY4BVuB/t5P0jZp+ixEmg5Qgs6n+4UksUqrXZ1yyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJXGgCBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJXGgCBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54E4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750097993;
	bh=fB1NsoYABvM+YjXNrPivnGiUPI7H+aqnwB7prZ3B71s=;
	h=To:Subject:From:Date:From;
	b=rJXGgCBD+hYy1qyhZrstlTpBBhArvnBP0Z5NpTgxI0NeKh3mM7dxq19Jpp9k92yYg
	 5sJ/XK6WZnDm+iImda4z5tqp2okeEv9xulP8fMxhMFmrsBUHUnz80vkyudiBpElOvO
	 l2H5qUdzmNH3VCYo9egVJDXv1450d88Nm6FtXX828INocZHWxCIYbG5jh3/Etk80YJ
	 9FcEgL92dAAyv5zyAHJvwP3hwj81PcGwSwqQWq0bn7GIjLyWHXijf3Pd2O1dUPBle3
	 4adWX0lfsY7QT3PXYfK2BqvnTVpww3iFFPHgCv9g9taWCAKFxDETtGy9AoaU2iwQxH
	 MaIAqjByaj3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140AC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009799358.7304.16042211391219224162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2866d402efea98fd0f3dea06f27e2e20e139db64d31205890b5142bf845686
Date: Mon, 16 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750097993
