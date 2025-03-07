Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEBA33DF
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741328334; cv=none; b=GFhxwm/BPUEFM3/wvEkXM3c35Gg0zKoHlq5TvGHHQBFkkw8gGYLRuQWUOcyucVf8u2bKn8uH9kAzSfQ6YrRwTYof8RVRNePRJImRSy0oSWt2ihYXrI1L0nmfy5n8erH4N/XNHz9/uaVSM5HrKj1FVH6w/w0Brg6f0843RAchR64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741328334; c=relaxed/simple;
	bh=IFNcxQ+lXEZsH9UOOydg+FdjvoXx7zIC8O0RyUPoWOg=;
	h=To:Subject:From:Message-Id:Date; b=HN2vl+Umx4SwRXroYu0YFYSnjAqsvj40nio4MGgMFeg2SzHWmO4c/3R8Z6DVXJ0LkTL8cvVx162qS1hmetBimC7MozMcKLvD4V+VdGa/3CNy18zO3nkiplBUpEULjF0RAaFeryalsDqqGT339DvvMry9RvC4S8K9UsNkAwXOI6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODTgA5Ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODTgA5Ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95EBC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741328333;
	bh=IFNcxQ+lXEZsH9UOOydg+FdjvoXx7zIC8O0RyUPoWOg=;
	h=To:Subject:From:Date:From;
	b=ODTgA5IrKRVnUqaI5hiLBE/qDMJ5DjM3ifDrKb6B639XcB1OkeC5AD5CBtoRMV6+D
	 ypPEMg63PoIz4InFUeKdQiGt36jrE2U0uUc0OtYWqgXfmb//UDsmBBvvHFxpcRKSLy
	 DAKxvO+FKC0hNl/Y/B3GFjlNLA/qBEO4W9iYtAssuhssN6j5eDP+Jq2sR7LN+lJBdA
	 zWX1qScZW/Pp3ABJoxaa0zp1vh2s+aJAeHKQy1aFCvQAjJ8w66YTv0oEppuYR0NrPB
	 bOpNuuYR/CkC9G8xrKIU13brQvxOa2JrF/jMNHoS1AIxnH6GU50CbSMK//W4Ar7PF4
	 zx6dZIe0gDSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8EC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132833358.24678.4784822152459357505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1fe5bd33309eef7c30a6758495b1b944a3d55571ca5d5d9995bbe7f2485d974
Date: Fri, 07 Mar 2025 06:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741328333
