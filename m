Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D4430B86
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772358294; cv=none; b=DWa2UGx0pxrmKGcY1inMfSAIQi9dodUXDjH+6c3JkSenftFjkESoUgkAweMtF+/gb1Ic5AMlYJ0RuCuadL5ct3S4tKkHHGUkZlROEYRrXxOL8FA/2AxIolo5sJtoQpeVy+EIybAqLbCMi98Pew8O3I4bGPmw9UAhQ3C2AUcdzkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772358294; c=relaxed/simple;
	bh=iE6LXAIrW6oYnoF/UNj7it6UnUosxbgXjeHy5vrNU4k=;
	h=To:Subject:From:Message-Id:Date; b=pKhnpsL/up2rNXUEa3NvBgXV4ZC5rFd6rMWGjq08JQx4p1oNHdBClEN43aXDeJGu/WbWmAkC4OvrKJ7yySHR6HP5AQCGOduCQ6uzl0t4vFzwsYHcprhYrsbEtPP5qio81OUB9FxsRKtDuwaIDMiPfZtpvQibwdlFW4EkUbsnAh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm6ThRLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm6ThRLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF42AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772358293;
	bh=iE6LXAIrW6oYnoF/UNj7it6UnUosxbgXjeHy5vrNU4k=;
	h=To:Subject:From:Date:From;
	b=mm6ThRLuc6qsNPz59iC6fz1ThzZKNU3YXExrjXuSFTJOjOrWjvKyHRhf1A6QKfXVx
	 vf3Obz8soeKnKCRk6XDzNYt0jzi2GFYA7wqwyDFeUrqFcHTOrFzvKkqv/hHVNCYqBf
	 WfrwZvnXE1zpJ352ydVYix1z8OzRSCNlN6+cf6slI8B6N1oVQ2yjEbkqUPlIq75Mik
	 5HCOekETUlBHWxJdqNJXEY7d4mR+KkE8SX7e7PTJBKoFCWV5o6XQRiE5lfMn1zO2ig
	 9clN5h5ZU8r3hOjEIXSrq0sbLt8smBOAW9cDhELGVS2eG/w/YdrWO+vhQ/v9BZfJRq
	 jNsVlnwZ0LLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B3FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235829358.29452.8985817223621823587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d2054bb31f261c096f5a66ca6311dc077f43afe433f5ba9713c13a12a46a43
Date: Sun, 01 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772358293
