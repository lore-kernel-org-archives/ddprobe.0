Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B32345741
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756834795; cv=none; b=JqHqTQXMMyIE8tjnm0zqf5r09Dvq0f7Clw7fZ7OJbDs27+T1N83WctQUmwO+2wNlKXqB9x7KjCiC9GS6vlwfpBabzVNATs2ukFlj/9cQz/UNbtPhybXf8c1qpc9e5N0N8t3RClu7M3DpHNYiPR/2zT2A2ny+FymIor+nOYSykZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756834795; c=relaxed/simple;
	bh=7Z5DOoz4Gsol5wNZ+0DqyWjKtW4wbGQViwcdWsN2q4o=;
	h=To:Subject:From:Message-Id:Date; b=gKm1xnzmG7pGsKWuI9MnuWGIGNf4jJ7N2djn4D1EJJel/rizCRZ6S61v8+wytOW6DvS8FYAreDazC7dO7YzFcNdpfoCasZXWXIveSUrO8ovjRWUPlvjnlXqoKQLBZrawo/GOzfhU6W43G44OcxjfwUDQ5/C7k6NxoJ9UxE2qDEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlYJ3i23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlYJ3i23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0348C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756834793;
	bh=7Z5DOoz4Gsol5wNZ+0DqyWjKtW4wbGQViwcdWsN2q4o=;
	h=To:Subject:From:Date:From;
	b=XlYJ3i23cjTx4Vt9sKQt3IrOTGy3tm8fokE5R46KoLTwQOLTACLt/rhXhwpaooyrT
	 EZ631FsNLTc+KcRilvAoK7/Odtti5Uc7yp0hFZTZERJWzGiP+63jSZqntqJ4iM7n0U
	 JZAExsruRk0MsXkLFALuOikj0POjVDti/LaQRLRZ+dB9OsGKIXUcfqW5fCnXkmGQro
	 oQBv+U0l/l7fPWiFrkOBaR/RQ75IKCoNrr59r9dOAPdZq9In/HL4WtZ7HMg0DgljdX
	 ymLpTyty7TPUzn81DIS+CiY4WErvDqih4brwr/63tkVjw5BkOHoRyk0nq+hQfuwP6R
	 spBMmmLvSj6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB9CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683479358.14963.12767041511102218086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77202f9c5e08f457e763f8374d00eb844fd9d58ab9c31ac5de0129cb0ae67785
Date: Tue, 02 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756834793
