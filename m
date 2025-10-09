Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D58B156237
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759972194; cv=none; b=Xx6vwE54jpMGOkRcBSE2ld1y7ldJurTmQEguLm/2edVooh4BNsTn6iYh00Za04JVkNq58bxlCzhuvbbYrv1r+tW5tyZK9Shz/3hdBzE9+37wFSfzep9hF2iJ6zKtE7QVPGQHzfl2rQ9yc/d82ywe2QMpW9V6sPT2lYDo5Icn/cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759972194; c=relaxed/simple;
	bh=iVmOhMOjA7oj+jSSqZIpAmY0tBSvuMJeoTZg3XxrqFU=;
	h=To:Subject:From:Message-Id:Date; b=NYPwVSBmLwJGmIZIDEmkbKhNOHv4DkEUbRpZPzjeD6fjYtmcphte5luzTTZWhdTNnXztnG1rYjUhC9MJ6kg4tkbXRAlWIQ9sNcwPU3ZnjaLf4fi5yBGmC7Qg1fpdUa8mTaXTAjGjvvNZucqzjuScEHb9TENXg/JmmCw6z/04VIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuoBbgFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuoBbgFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A1DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759972193;
	bh=iVmOhMOjA7oj+jSSqZIpAmY0tBSvuMJeoTZg3XxrqFU=;
	h=To:Subject:From:Date:From;
	b=QuoBbgFbQb7UTe6SGrZzwUvmMYib2FYEMK1HA/2+NKO8ytnEs/NYobLUXUqSRDbQs
	 4dAG/Fmzbt9F09d1ycPDo7wSiZV+kE3OcRpzCHRka5ggoLOedVC/2VrCXOPHrAD2gh
	 RPVavFo3nyrA80h9l3ARClSv5Jg+7/75OQfr+A19Bqm7h6QUrubIV8CwuTlKjv3NvL
	 jdDEei7rUhaven3kFxnEzFRlcIY7wcHU+ZXCBwv9Lzs8zCO9pweGkaHyQnv7oNqm+I
	 Y4CRNjF853UAeYeZ0moReX7bZHl58PQSAYK2eAVYuRWiuPzJi8xbbLGV417Ohug85s
	 IoXDQnVbPDnAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94707CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997219358.24359.15140329667306363964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b5a68e49150065179fe8bd06f76bc011cce4c5c61cbb347f799aff7ff869ac
Date: Thu, 09 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759972193
