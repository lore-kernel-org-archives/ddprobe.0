Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9E43C660E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774290294; cv=none; b=sRe9Rz0zQph7cEAGFmaKk8xg0jA1Jl1o23GEBDo+pBvxmnDDb4K1jSu8g8NnOdqDC0re5VR57YW2cVZv/EKBHSlZLJkHdFChn6DzkGy0OqOubk6WNJtWLY8xVED8tA4aBywSDMZXzlI48+0Kf5cOmS/1drGoEomkBqYDDttoixs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774290294; c=relaxed/simple;
	bh=vcdW8ZYn8anLG4Tbi01+1C2Div1wI8GGIXLx/hnJSow=;
	h=To:Subject:From:Message-Id:Date; b=AhLXtQmK23Jqh71uTnHv7mgt1cUpE9pgqmZmmq2PHeqqAb8c+nCC0ns5RTzHwVKSxzJZfkAT2qyPnDvyiQUyOciUpDkFNX45PtHsTJZwYTqBOiGd+zQ5ULODvCHKqMxEigTVt0Qc+tVq90j2t/LB7ZnvqMXPohx9/OebtE+LiKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gn8aK6OR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn8aK6OR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80CEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774290293;
	bh=vcdW8ZYn8anLG4Tbi01+1C2Div1wI8GGIXLx/hnJSow=;
	h=To:Subject:From:Date:From;
	b=Gn8aK6ORsxJPrTTT90emKQoTAgMEfkD+6t1Im/I1/ukra8vJMOxhF3nRisMCbkOu4
	 F4Y8emtR9EVIN/uQAjBfLR3DlqVcKgpGPV/qgUPRZtVkCs03sIKUZvHC5W+5PfkYgm
	 njd9HTPA9coefAFDxYx6ulIgBoEwN/ZNGUbN+TuYf9zB4DmOoOoLEBiP4ao0oWhySX
	 zIEa9jv2Ex/eXXjvtdS9cPjIGb5oRp3W8Ndr6/3JXn7c8e8blHRoIgCcIBKtbKjU2i
	 JUmJKma1inwO8SOEorm/cWPA5PIg9DOO0lZjePifxoLoj20Rth1adE3R4ziX6D1wgu
	 PSVqV8NGoEyxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97254F483E1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429029358.905.7753228257210034708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804f535e58d074de36cca3a9a009b707efac97b483a1d1f23a4f2e43aafa36a3
Date: Mon, 23 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774290293
