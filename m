Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399F484D34
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738235155; cv=none; b=fKNX9Are9NrCnxYyQ78kNYE/Zpo6zzUZFLTubKK5QvgR4ZCJ9bYZKkrNwX7a9VaNPXOEj02gho0MsO3/qqaYP38ILOJ9UguipsNvV5WxJdwJaFfF3LbtQVd6lXp7e1a01gF0xnmIk9OOpDAGFHy/09ifD3So55nUamf8pFwaJdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738235155; c=relaxed/simple;
	bh=tLcQOQlH6JKA+3E0aTFOfi1dt/GVTCVnZOjs9m7YJt8=;
	h=To:Subject:From:Message-Id:Date; b=HrN84ZsBjDPxO9jERLuMmJNCX63m+3Yne3RfirbrtNK7IAmFETqO3sWmEAPE7Mo0wDD5vG8Te4s65wa7XITgr8oRpXfkXHs40XkkzH7eDTA6QE++m7nxiFiAUPZr756Xe4shX7n/4VqahfgQDKu92KmeKl3H343bCdwwGjELmnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqhxR1pN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqhxR1pN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABE3C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738235153;
	bh=tLcQOQlH6JKA+3E0aTFOfi1dt/GVTCVnZOjs9m7YJt8=;
	h=To:Subject:From:Date:From;
	b=CqhxR1pN+STa7Nr6iwIz1bD7nYopJqNDMz8nAf7j/0W0S1SMoz9G73OfT63m1ZbeV
	 9kfTMAiuMK/4Lg/kzY8Oro9fwXLmbleZUWsM6PI2CyXgWC7gdYZ0l5Y3fwiq6Vs7nZ
	 ZqcZpWXmOS3FB6eiRP/EZSQSmlCWf5anlZh51CDRlipwMHGKHOYAhJWt09YungtSSo
	 xWoGZZZfs9hrnZnt0zWgNff2BPQk+dKKjLJnYhXvQiU68Iar9/Idz5kof4nh+hMQlg
	 +lwx6Yt7xiBOkyMQiyEGsTA4xyhDG3mqYoY4S0QWih5St1HiCNxfneuqJ4ST/SWPh0
	 gB+7/S1eCIOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA9C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823515360.21518.18071862160156250044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270dc979b67ed670b7c65d096590c0cfd6e971afdf9350bf4ba6fdc15de98b83
Date: Thu, 30 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738235153
