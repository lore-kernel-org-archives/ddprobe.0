Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BBF19AD70
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746863393; cv=none; b=rtOTBxMJYIW/+O/lEOyD6HkaSq2/CCADxDbszWzDsBvDdsp7k7QhDKzgAvmIOgJDjtZWEm8EaGH8qwBuYXS26tUSO8LxsVpIXz788fT+OH6E5eW4QJuf6cHD7EIxD+uTv7rXLSjIsv5AK3XLhUtOszl5inUag0smVWIgnM3ns94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746863393; c=relaxed/simple;
	bh=6MDDh68VD8HMQLjukuEp25TFlkIiWepO4C/X01y+0QY=;
	h=To:Subject:From:Message-Id:Date; b=DhqEE1KLhWOyq4nzK22IpnNH5QM4939IbDMt/2kfxORPQOo9EBp5e4maYBT22N7JXLpUsQbrZaeeljfXMBr00TJFvWotESuzKfw9koJeHIgcYALNztH9z6w9ofwVZpPxT7YQMFlu4acdGNb9ApA4JfsKHDiGor0XdLW/D2dMFKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtM+zzct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtM+zzct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE05C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746863393;
	bh=6MDDh68VD8HMQLjukuEp25TFlkIiWepO4C/X01y+0QY=;
	h=To:Subject:From:Date:From;
	b=JtM+zzctQnGJaQDlFsQQwQOLVMaT81ii33sI9iJG5gDotDl+Hf27Iv5vNWd5QF3Bm
	 PfVOZG3P3QqzViyK7EniXWOHQ9QydCzTVQmb0B7AnZTLZOdV0pae0GrYastm/FHgIp
	 uCHfc8JoBwPMoLDv7S2UEjJCXAoi3qutUAqJdSOncZWJPl/TgNN9Aht/2t8RGZMY2i
	 JT4s0RukfCn8WiRL4i+Xv7nOm4MXv3RG0NiMeyfuLQn3lhQ2q5BveU/lf24El6fthK
	 VY+WTZ6eTTxWNXS+0tV410FbuWb/7d63v4wlHdMwxoCH6Nv7oaqoTuZ72Cw8sS+Suw
	 KcjPaQ3sy8a3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E848C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686339357.17634.8662923110376306279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946c2ceb5b16bd749def7db84dddcd2705399981591e160cc278ba25c68cc86d
Date: Sat, 10 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746863393
