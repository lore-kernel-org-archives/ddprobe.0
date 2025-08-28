Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A929299A94
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756414794; cv=none; b=bMl+muihOON5DDWxsjpVnoq71PE1VrTPK/UUvHrsbqgOuVI6d+tvHjL48IOhhzSnO2j7A0T7gf8wBT9ELTmOXxBEDkFoB1PATkROsOBD6P7ZdEFbjXCXvBNXCWBLxp8NgwxKvTF8QV3jTbb2lupXrsDYE+hMqW1vIssbw0Eh7g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756414794; c=relaxed/simple;
	bh=Vny9ChIAaYncCy2WUng2K/dT7h/TeQNHYYGS3fvauxM=;
	h=To:Subject:From:Message-Id:Date; b=BVf3OUJD6Z5X1v01JACbiyjoXoaihbH94Jrxi3E/IBJmty0KxpLw+PwRn9p9a0MAVpzdtIMeIRfdjTSTUFUlZY5HkV9foxcVj/QXX9LMssZO93Tgd4CqEogNrxWoSydODAb1j/FwDF6faXh7WxUcizdtmhXre5fuoS929dQOO5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxQ/3xwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxQ/3xwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756414793;
	bh=Vny9ChIAaYncCy2WUng2K/dT7h/TeQNHYYGS3fvauxM=;
	h=To:Subject:From:Date:From;
	b=pxQ/3xwo+uUbXcyT1XZGDUvGixs+7XqobzGRKFlppZYGoFY7gy30H5Wc1wtgANKLB
	 SJdpC9ZMxP/HYgk3uosQ7oHy5VoTuiXOMhEeXB7yUMluAIbfeyPLOgwxvykI5J+19I
	 Ovzxz4xz8/+TE1OJiyrT02UHSk2qXTzO041/kZrn4JDW3J5+DUIxUlw/vkwflUyALu
	 +x9uIdn3OLt6+Ru4gy6CNCRqNM+JMjDlicX1F1N0bMqiiJP5sdaWnn/KYswCZDADy1
	 eAmUvJxT1rYxjs+4RHRK3dY2/6x+emmrfcn04YwBkEXg2ORDJ3M7VEGryuuVk+nhG9
	 QjgMDQUdDnkjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE39CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641479358.23102.5663123730247510224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd123d93600d7029b55d6c95a35f2504e5059d28710722e17b38c9fdad8b982
Date: Thu, 28 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756414793
