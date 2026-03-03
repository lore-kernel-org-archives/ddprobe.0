Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFB43976AF
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567094; cv=none; b=u3tG6f77ea4Udoc5HIIjecMQ4YDVAFKn2WHgMOlrHw3zku+lcBQT3eONjyPpkX44HMJkQbwpVF9R413NjXzWQYL3qV1M2EPBx8JsniREVOske40z/zsb4OITdsunFVm0BwvdGsOBanZKDUJ5b9nSFfS1/ocfusmNXxF11I+TkYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567094; c=relaxed/simple;
	bh=uWNSDJrRXj41me0aYPKVNx5eH8+Dt7nhgH5BOMC7qKg=;
	h=To:Subject:From:Message-Id:Date; b=VET28I+L/kbf8imbRCJR+bLPZdwEmgwBZUR4ov+9M6Q8gsm1tJR/3gYYjTE2wOPIF7uWE9kUto5CCyE5W6Y5zTWCnBaVDSnXuza2LhhOOYI16Vx2ry23mUW01X8oCrb73+waYiS6Mb8n4w3DpMgMUAzfCWSSkcXhcWCLoGfz+dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv9KbeNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv9KbeNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18D9C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567093;
	bh=uWNSDJrRXj41me0aYPKVNx5eH8+Dt7nhgH5BOMC7qKg=;
	h=To:Subject:From:Date:From;
	b=Kv9KbeNyQ0LVxHmYkQHnm/stBu8pQfiIHc2WCl7J7EmbqUxL86nKo31lBSZz/E9Mk
	 5hQPJJaACV1wcTR5Rdsk5uKeodUfWjw/onPD6IqcxpUhY37RIUmTcIDhIt3lW1GBig
	 ZdGlZtUqBiInRO8UgIX4i53TWVcKU5YhjDlRxlp/cffyoaJQiQtvdzUX9gajQ87bpa
	 xzHjO9kgPeV3/HhC2Yw633XPV9bkd+A+ApZrk2Fz1jCcm7QqdpsPl0l6ZoePYnkoT8
	 27C+VPs6b2GQr39TajGInS4dYiFF9ISke8FRmtRsn5mc+JuyJW3akHTRt0widlGmtl
	 Fg8yGi1NLfSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961DEDEBEC
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256709367.7455.11090519375586427202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca515a906a1e6123a38c574c31650f9bfd6eafd9332c48145bb9491ca40bd076
Date: Tue, 03 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772567093
