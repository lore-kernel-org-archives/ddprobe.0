Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3FA18E1F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766805834; cv=none; b=TSCl7+Z8halyBqqA2p1PUT/af3I+axwsT/27ULy7IwxF8OAs2btgkl+jtsWi2z+qaHYKIwDE7xV+xsMwlnqJKzqOCwZT+LjNoGTOCVYpx6Iw/O8YF7CEd83bI6XZXOyu/9nZOh8NA87aZcvarg69L2MjVMjJ8COBzOjpmd5Rvag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766805834; c=relaxed/simple;
	bh=BF5ehfVZq2oMMACr0N7o6wZUdX/tg6RsYMX/Q60QHe0=;
	h=To:Subject:From:Message-Id:Date; b=rnCtiSUutZCNXZcMPLHyYJq5ixAHxwgwRtvAS96AFU87MDd+tLLRa0ShZs30uFXqqJU6zI3K1O13Xwv47x7BmxgvN+gZiluovsDAs20M2+D4r6SaWBHke5Ja5Cyt2xmoAM97ZPV+h5v1nlllKr9weAgPZMsSKYl86JoAaT8Blu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5Ler9n2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5Ler9n2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766805833;
	bh=BF5ehfVZq2oMMACr0N7o6wZUdX/tg6RsYMX/Q60QHe0=;
	h=To:Subject:From:Date:From;
	b=A5Ler9n2CgI1FnhWWn/pMww55GL/w5tIrc/5zAf47IYRzVRcXTtX1P2BG8DwEZBYu
	 4ilUEVZUGMwurL21LwDJ9ycH6YOKolF4mvnO9FJ3pvG5SfDO6Qo6zrCKr82Qk/Y2hJ
	 e2spm8XLiz/+VNbx0AAJG8WynS055w8XkcGP4TCFfNMiF/siojfSjtfGbIyis4jR2A
	 hGyQ2Fm971yhdg3jbT6Lsp39XfBkAyXy4wTxbDGyFdFP7O44rz0wk7OsInPNirDnR7
	 cghBjac6fNkWPbTNIUgmDoQCtgX87wRbdIP7XjP3okfSbjq0ZciFu/9Rk+hdWc8YZh
	 EySxMHPbTla8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960FEE8FDB1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680583359.16247.1914575251736524464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21156510f8ef92c938dfbf8675fc1b104f06422f8b738d0fb5bb69880f87325d
Date: Sat, 27 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766805833
