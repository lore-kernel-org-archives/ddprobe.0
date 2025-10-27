Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F58D2E6CDE
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761563394; cv=none; b=PyY8F9k1sIov9Cyo4lTeEJ/w9sIhoNBN+qZroUML1sLfoPD2vjBAFohdzgTlUIOrY1ZjUyXHAxlQr1LbO1bu0XR2ztyShlXlRY5sNLNTRLXiXRXmw+jaBNm0qjDx4bXnxjueVpmCTQ0pK/BajUE4/UotpRnelxn3Fooy4zTWm9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761563394; c=relaxed/simple;
	bh=/jeVlKKtjVrkLQYGgsUs/hWZDT4b82kJtO8hxinHJzI=;
	h=To:Subject:From:Message-Id:Date; b=fXeyVY1HV7ycdFi6F+4UVv1QFJRfeCPkn5P8uoZ5CCzsCH5uB3fzqe4guNm/E+opJP7Z38bwXiRduk7wjPbX5+2tcVXIBKyrwJEyyyqsXZiWpKFkpjBtunwOnXKWs33vSHbMECPvWj0fdjFFF5+IIE/tzmNU/vHt1GHOic83W6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roDbG1SI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roDbG1SI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0500C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761563393;
	bh=/jeVlKKtjVrkLQYGgsUs/hWZDT4b82kJtO8hxinHJzI=;
	h=To:Subject:From:Date:From;
	b=roDbG1SI3hkZh9O0cQdykeJzJ1tI18To5jcfqHrDbCZ01Fx78GlzkU0Z+yY3RwMyJ
	 jn6V3kp04gnaeeRfVbIbe19DxynF3TrxpivPKPYd8y7gWwAO6eX+6aL3J1ZQjKrui5
	 EJa8OPTohdpYfn8frTc6SPvproKCaMgxz0jFUeeYxZDmn9UkdHDQ4DbLIHM8KmiT2R
	 qrFURQFA+AOiM0DOE89aMSFTzTwzlHqsUQWNoaNtOoFRXauhA6faOSRiM/jkNUjoZl
	 LWmas+sYzjvFu4Mfu8fZo/eVEzWD5gYGBQtllwZd4HvfpxzOv1suB01EFAELI0kfq2
	 HvbP6/UVOB2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16DCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156339357.21840.14700224205211328795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49cdf4d094011b00a935aee95c9a8845a6f2a05efdb262192587486b5a1d716
Date: Mon, 27 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761563393
