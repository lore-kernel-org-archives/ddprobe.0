Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6A828EC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728205554; cv=none; b=pMDTkpJI0MXEIjQczh1hwarmZmAGqevvxZNRugkdUIXtrAah8xz5yHX1gUHhaLw5L/i9RBmZh7/WoQHAW9ylzfXoqmYGBKk/8+N9FY5SWFrjhZQF8Kjuja3z1+7IAXpRkUFOm3k5WnyqWch1kWj26FjClbE2zkozoDXW4h9TqlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728205554; c=relaxed/simple;
	bh=ikRFUegQ0iqynqVHy68rPJ3zqBAMfhi0iVhoNNCI88o=;
	h=To:Subject:From:Message-Id:Date; b=ZdA0LQrSuyyGHOGQ2wxIXcdnCJoIvcowJ3tPXRRiziS5OWe8m+bDpvmJQ5iVCUXRE9Emksi41kxtgfl3PQOvxRDW4BD1Bi1jf6YIDmJZrSgfm/cdqj9Q+sLGlaV8lk9WY2Z38QDI6QKblxyyQFssjQ4DGyHHNxuFkEJr/R6Q3Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OE2KWY1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OE2KWY1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728205553;
	bh=ikRFUegQ0iqynqVHy68rPJ3zqBAMfhi0iVhoNNCI88o=;
	h=To:Subject:From:Date:From;
	b=OE2KWY1oDYFrD7JxJgw39D1qMzLUmjMy4dJxVKEmSE2Cj1tdferwSJ+AbrYEnQnXj
	 UfWhdjfFbK6MbIO0Gf3cOh1ylGEM+spQUGUI1HtwJQaeEnlHb66Qe86P5WXN9nx4G6
	 zldfAI6EbV1bZz64WRomNAd9qHkjMDft1p0jH+HMMkqo0J3nZ2EcxbiGXYAsHtjy0Q
	 UiOnxslnayzXZPmP7WNXUZPaAVJhREx0ijp+n8uTvMYzUei0Z4e2qfYTpEbC0w5592
	 YCA2EJl0KiB5GZgCPj0SSVZKNM5CEyJMK07zoeY3QYzySo6gNhTlN4DSUb+ngi64vs
	 otv6+LXzG/M5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF0CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820555360.2081.5782505825447656442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e041391251df296c348868dcdc176385a1e603233512d626a4bfbdece148aaec
Date: Sun, 06 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728205553
