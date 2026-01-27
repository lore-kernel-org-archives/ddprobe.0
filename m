Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B181357A26
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769525034; cv=none; b=fOJXMY2zlsc1/ycr5wls4v2H2sZYD3C45gRcUjZAgMNYl/UWXjN540GEVvAOYmlAOMl20KHw1Rjj2bzKqIBjYa+ntaqQC5S2Ys7AViRXVi8SY8sLQzUR42G4GgNgRK87b5aAYZOYtX0hkqmLrWDUy649mDdSSMcI5SxeGTBDoLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769525034; c=relaxed/simple;
	bh=erkOm6MXuMXf7wvjK/vamDJoBk+ntDVM8dzr1ueqGXo=;
	h=To:Subject:From:Message-Id:Date; b=b/rotWlgJXiQo4IgKRNzH9FaDAjm+GFcFrlWDZqnKVMwb8kctzG7iPy4zZ4tUzyW3uKconqEAPZEWLvZ6qBXhL7G6iXQWtmWuq771wN0Jg8XpjJ+fYbRPG7SaDN51ClsEHd5G7ddA3Qxl3cj4/mleFhFBX/dhSESFAEk3rzSe6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zdn4Ng3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdn4Ng3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4319C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769525033;
	bh=erkOm6MXuMXf7wvjK/vamDJoBk+ntDVM8dzr1ueqGXo=;
	h=To:Subject:From:Date:From;
	b=Zdn4Ng3+2F0cXOfihgLEbPSsPmJ35Z3xxi0LDi6kSd4iuA+J2KSn8L801t4aUlY4N
	 qBCBE55IoCKEdNr0LTqiFlcDLbCtqAiRb5ANOTrhRuNH+19ByCuTra5LSQUrX6qXa7
	 VS+YzvPWAhbPj7eGiMGtPIngmUJU4eAAZ0jCNJzioQnsl6ga90XFdqHx9t4ODHtdvN
	 fL/AP5aliE3BjoxvSBEFLN+ZjRXk6QjC/qaASKSgzUGUfFz3snNvKjMBBACM23BFNQ
	 pckw5iDT2yvH+eWVzxFMFQI9+Ip2bG3yNDyOCyCOEnORt46Rd1fUpX53ZpJUlxhJ/L
	 7QT6xjSe1PfZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6FD2F03E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952503360.23081.4780068654463530495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6803ef88db4efbef5b05d1bf40b9017eacfbad155ee911ce52a3064f826bbb
Date: Tue, 27 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769525033
