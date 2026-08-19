Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A53F395AFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787170234; cv=none; b=ODdMC3yc6hsrJhQY6XsxLzJq8oZ1C6O6+1pWOvnxyTEq66eNOCj/jMGMksTQiaFbZWo0oL8FrL4jH6IlIQ+xuFXQJ2ATd0j6m84cuOrT6QHQ5lKU8V8wnO98PiVRbLoaLbY5foMdthxXgDWffVLq8jjfc4z9hyZswUUDfc5ArHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787170234; c=relaxed/simple;
	bh=vUxTamnZ82pgZXqe7A99BvO61T3DZlHXQdTouFFFlzw=;
	h=To:Subject:From:Message-Id:Date; b=X/F3zEbuPw6LHtXE28yQsaY6idd94s/fXB7n9CVpooxqo7nzAF6JF0ZuKq5w/nrLc9YYxjcCzVM2kYSs7FZjLKTkIcZMDGjIbh7WPwTP/s3o5UF9PZRnlbV7UE9w8i7TUmEOZE9U1WGJuIQ+cmV5WOaq8Tx8ZkUqicULps0KlUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeLITHiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeLITHiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5461C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787170233;
	bh=vUxTamnZ82pgZXqe7A99BvO61T3DZlHXQdTouFFFlzw=;
	h=To:Subject:From:Date:From;
	b=LeLITHiGT+p7Gk4vtcVMjIR7uoM2H0xK27HFAEJS6QbB+x8yLSMK7SFXemio0ms0+
	 BL3hve7SWq9s996Ax+aZjTUZhZ3ER0ooYxEsQoTkeHpVFLsI0MQOIkiMn2gNW5vYVo
	 ZrRzCCeDAE0v7dVJ8Vz9MkUP6ODjF9w7SJQECy8mg7nTGcyz7Tvdxdji0LeOydrXox
	 yXxlqwmLCHf7Ax5zCGFOWPP1Tyn2cVXvKqaOrYCMf5A6J3+m7RL1Jek0A4FIojOhyF
	 f9RGjj8lAC9Ot8nQ5X+03m57vxxXTXkoANBLFX06NMPr0Zd7HJw3AEc1WTk4OFs3+1
	 HIr+Pgg1fWEmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F0C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717023369.32692.4714111347539948955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effd4f7ce2a50d82d27779cb6bfb467040464bd5b95660f6fc562aa757b9bec4
Date: Wed, 19 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787170233
