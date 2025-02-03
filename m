Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B11202F96
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738584954; cv=none; b=OsmPXmVy1xEM3rXxmRpnQSYuCQbKkVP+jDYtqIsiLNeVn6nsoRweurqtNlEP7NUUlL+ZaSJjSSG7Y6/xY283jPaEl/pQXRGLtMovelsfSV87DJ0wyMoy8QY0wJ9ye36dJMjsX77YqL0ACtzScK2H8epP5wPEdy3o/b5oiJlIRVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738584954; c=relaxed/simple;
	bh=dRTDWQvxAGrkbb9UbvC/0pRN+uENEsBI+lsWeJqecWE=;
	h=To:Subject:From:Message-Id:Date; b=LeZqAoxvRA4T0ATvRbTG47QgbK+gZPpUceiQpxM6LxveCHW+UEUcRM74JBMjxsdi6IQMepR40IEC9uX9+M37SCq+tnarK6w04aCEMTn/l3AprSNkfjEjOrIPv1KWD2ul2328gBSBYVDTRT5P/nhnMT1QWdY9jcx/EbZsltb2Ypo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEWIZlL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEWIZlL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6315C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738584953;
	bh=dRTDWQvxAGrkbb9UbvC/0pRN+uENEsBI+lsWeJqecWE=;
	h=To:Subject:From:Date:From;
	b=MEWIZlL4gkHihKaD/aolPPvQ3JH+ELkwwa17GeajGWjL3uWMGk5/WtDycGUQa6SCV
	 5vDoZPEILWG0h2o/s9IG2TjXGp7l9MwDC73nJdb48W/+pKmhqSlpJxJ+bbyQnOgSaM
	 4BBGYihtlN34dSOATTPhB2gceklGD3KLr9q/ubxgRLnDW3Og0FjfzWUsZqGn6d80eX
	 wUhCoz4ImnGFJN+q/n/efJsaSJH0Bew32/6TryS+5hM4k6/7n1pcJLLLqY/TtL/zko
	 TjfWF5eGTUkco4lG0wmIWdlZuybN5TS5Bf+3L6DNSsqmIXBVZY3KzLG2Mb3i3mbPLK
	 GlwXsuUqIklEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AEEC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858495364.6434.11322591735852618679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a724f3c273227cad280f21097701c107c213f3d9a904e968011a94583785cd
Date: Mon, 03 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738584953
