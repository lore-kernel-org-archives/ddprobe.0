Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262181EF39E
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748249994; cv=none; b=eiG6F4IzDKWLfxJnRb9zK5AP/zApKHk87qE44lfcTcMxMtVJSAJjmxH7XURNydDsYnqcz0OTtSo7w0qNvJ7A7g3WigM5SB8TsyZmyLu8lwti1ukSqLCuIRlEE5RxDnmFLb00f1jr4SeE32tYRkVjKPsY9RWAljMh5M6AsbWHohw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748249994; c=relaxed/simple;
	bh=lwjhEEAtD287ff1Ll7GKmA+ktQCnv1QasyEKnURGpQo=;
	h=To:Subject:From:Message-Id:Date; b=VugHNetQdWX08EqyNebj1S7WJGjQZRGTki/OkvtOt+PdQUnk+ayYNt3llSShqBRp4mT/K0WTt6mUpw3ZljZKOM/UrnGDLKTFIJYnb7k5pgwUwRIt/y2x4z5UIrUGmJG2ARH+P4iGnTRHRlopbqgYxF58QhBx4Fh3T7W4Nwtix0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBLx8j0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBLx8j0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2747C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748249993;
	bh=lwjhEEAtD287ff1Ll7GKmA+ktQCnv1QasyEKnURGpQo=;
	h=To:Subject:From:Date:From;
	b=HBLx8j0EWRjzQj3VgCWeZLY1cZyPYMyF8FqNwyr06+jjfpawFVQGQAGCegAAfcd2u
	 7QSqiY/rWS3gwSNjFyla2veIebyxBjjbhwnFgXmJBqBVfjRwtnnJR5ouJOE/seOJbu
	 i0Wi3HEb/kj9T/RZMOmrqaNCer3VDitE2Ucox6lSET6G2GDREdqgmGAnVaZHQvW4CQ
	 sozHfxhX3hN5rv1xLcVsrgxCaufhkACQBgU1/yIexqeF4YRTf4AzhqKrH0R7BP1GFZ
	 BaRxP2DkV7n5U6pg18FrBkjSpYHuV6EvLKLUJ6ra/pgzJw8Xsj7iV+pYLzHdHHQ3rf
	 /4KGJlJF/HRRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98AC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824999357.30445.8129579482315191269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac159dcc0aba43fb19efe557cf2e1db0f174c5082f7098aab41d9688b9b0648a
Date: Mon, 26 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748249993
