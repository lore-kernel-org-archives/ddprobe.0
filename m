Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC618EA2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726955154; cv=none; b=SY8j6yYdqkPJtUUTAxLWnjJgBOHPzxXLpF9vhd/h/LaxV7oCmJPZO4RTk7cnEchNRVEBARHodQHu2vJtezpiYWOOAauXOUPF9ZWprPRNv/YlvIUt3DRe2E8cQ+/XbjGICnkn9zyCI7GJWhecdPM4bTg7X6K2op/Eo3nlSXA6E4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726955154; c=relaxed/simple;
	bh=wZX6zkqfV6c6zip8w1AjSec0dd7Oue96hAFTwTfkDy4=;
	h=To:Subject:From:Message-Id:Date; b=mg0aS7lBq137+X/1ZI6yqVe+UIQAASAUm9K3KTRWpWldLmRBttG9LVXqio1XSLFWTb3HPFWO9zxmfLdCGMq3AaJj79gx1WIf6Gu6sdyVr6TavOV8rkyZ+iL4KVywwSFkwXMwpSCpHBGDksOyAsPwOaQxy1mKjqQSkCZ73nDTXsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n73/PWUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n73/PWUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA85C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726955153;
	bh=wZX6zkqfV6c6zip8w1AjSec0dd7Oue96hAFTwTfkDy4=;
	h=To:Subject:From:Date:From;
	b=n73/PWUqCMzfINWVxHmO8KVQ7XAzaO/GVgNOnrZwRMk8izPUOii19rvpDsn08zHuy
	 QXr5Er6WkDUtd+3wUHvJZP8ivPmV81VjrzZr2aNDI4OGlkCuM0gzSHD6nzfNbWLsTn
	 n8kzHH/2y235V5t8SsUIzWU89AJ9FtZUcGJPrfXOt2zXMjhfYzsO0xcpihI3/FXwVb
	 ap0uoO8LW/IEnquf59Hb2Ziw7lGD0fvN9xCJjK6IQ7pRkkaRFQxhSHVQGd400nHATX
	 APoyRGVB8qJwFVV1D0+3g4VrAyeFhhGxZSp0c3bQrDllM+KQcWYV/SXcL0i6Y8V5zm
	 s5VMDAe1qRNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98018CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695515358.3749.6321414253282068443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9105ca8d2cd3f98e3bd2552aafb8db608273e79131fe1af57332ef17d46b12af
Date: Sat, 21 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726955153
