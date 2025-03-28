Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCE2DDC5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743178194; cv=none; b=SNhOvnOrTMS2qzX14stdPboEeaVJvp1MKsLg0lfkOPB8CSgnWdqQrjwqtbImmrTOSJFztWDZgWeRy6KHcjMTPhDaw9iuMIcTEpsAbdkGFpindiM+8pgdw4QiAqPSudKUNtgXN3W72NenecHHzREVI69al9JcwIKCO7//MRhaoMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743178194; c=relaxed/simple;
	bh=OPOCZH6GToCVC3Drn9+qwFF92w51spvbORZO6uReqBk=;
	h=To:Subject:From:Message-Id:Date; b=KJkN2OI4Ql6YhODNb9L9tErIVdEUyga20RYrkbdz/JQRzVIG8ePdIRv5AzX0ZAzmx3gW0Lh506c2tJxaI7gUXOrpApGRrpY/ywKuZnyR8wfqiuzltpwr2i/3dlpP+rp79/dKAi38Ub9EvyQwBfzdlZ6uXTVarHhZZcfWUwL8eKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhIOXluq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhIOXluq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4610C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743178193;
	bh=OPOCZH6GToCVC3Drn9+qwFF92w51spvbORZO6uReqBk=;
	h=To:Subject:From:Date:From;
	b=KhIOXluq+d2+ANMZjkdcdIFy8GZGDnmPFjjSSj6X0VUlyRyZWcQDX7aPmXskEuiP1
	 RAacUSzM+sa6qTa1QMcTSNsurApAFiD79AP4j926wZ6i6ZgvqVk4UjZ5Z3ZnMW1Xb6
	 p6b49G42tZB7T/OrCE4Oj7qtcqp1zmDX/9DDe5JFDT7L1fn3cyQzgxz7VF5pWO8VUO
	 q510dn5WgqvUVtkeyBkfZUFbFIlq0WWDvvddqi4MjNLe0T1PgANJ9sZmtG8gU19Lr7
	 wGqcWtkmzW4JzHpMP9ngEdUgfmqu6283gRMWpLNI9qJl2lIvd0F90dUYbxBhwQpsDw
	 Gm1Fojdb4Ijpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317819358.24996.5059112743900601738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716be72686d577f9cc46b68604764aa2fc788b8056fa76ad5e863f22b347687a
Date: Fri, 28 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743178193
