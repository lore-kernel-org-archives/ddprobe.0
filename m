Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF6B70830
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745225394; cv=none; b=gaFLJWoooewBma8ADbt/TUK2vL4ZUZZrSWE9VdA5ZsTcedg2SJT9iaXbVBVrWGdyBoBLT6VyYoFrNufYP1R6GErE3WyESmTYZkceuNvHknsjgz2ix0ooJfGEjbfWzg9BJ1iZIhrIWgPgjJPim8w+BZxEzFuLsqAjdr8d8XNFEzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745225394; c=relaxed/simple;
	bh=W3Q3QzC8KMI4NWiBtadHkJXrJNuTyf90WDzai5MYGMA=;
	h=To:Subject:From:Message-Id:Date; b=ONgRIXr84QT5JtuVNnM9dI3kbMh97O/NpIW5jnnI/ZPwRRtAvicvzbMZBQJyhydOxD8YpziAAxaOduYVpQuuXgXbZZlHBHBU/8llL074t4knPYk9q21/GATNeRxsrJqvZng65ZOus9ra/kbhCCwqLAqAWbv+Hh5MQeOfCD1Kmt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l12sE25a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l12sE25a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B565CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745225393;
	bh=W3Q3QzC8KMI4NWiBtadHkJXrJNuTyf90WDzai5MYGMA=;
	h=To:Subject:From:Date:From;
	b=l12sE25aSWiimWod3gwK1yOD/AlsvSSgizvZXiqLU6Raxw1Wx0fgrGZgh93DwpG0U
	 Ml+haoPXOMgjL1xsAVNeOFF2r1e2DWCIb2Ah2Bd0B/9C5QlkrYkyZSm8SICOmQxptM
	 52YbKPDhAYyaSVCkOfVOMcN6QIt936CLpytGg+fFmQ6fxRBN9DIMV1tdWOAhVxaCAZ
	 pF6KdV+gx7uPwXhk+vWlPavTR3KLsZ7NGveXLST9YiuPgHFVuBWlu8Kbji2PCXkpna
	 XcjC72iwrKdNO8dKa7BVeXwDzrAXPh0OKBcIzs5dyOK8uKkw9o8HnIZU4vmw5WH045
	 2AywKCvyCoDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FE8C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522539367.3675.1723721735544719928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2794440aeee7bc56926c2604fe546c77996b5b0ee36076edba349b9a06b83c6
Date: Mon, 21 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745225393
