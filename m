Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6114296FAB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748018994; cv=none; b=nUjwttKjNskWa3iNk/XVu/mdtbirZspGTUYNzbHt9SQFnxnld3PzN8YmUhIK2wInAiG57qFBR0f0hrSBNML1NDo6xMBP/3zp2YEFyGvFZSc6wCcs4fSXIWxAvYjBs+m0cfbAf3k7ckF/Io5DzFYNj/rHUr6FJ4Rbw8YaDY2xr/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748018994; c=relaxed/simple;
	bh=pRGSLl53oIj+qavMFWYUo7qmKgt2Mu34MW7FePvtev8=;
	h=To:Subject:From:Message-Id:Date; b=jy52aaspU0QkoTi2J8TSpNghEXop8RfMfXX/4FOrgR3lfDUSHzZczbSPFUO9l+rk2xCAzagVBjdlg7LplOypQXnRnj9w5k/spdjagRPFxxMSHDttovYUIdOiPxRPgg8OVoU+cDlUfi+j4yuJa7jrxpryaCCy4tCThHRgQ75WvNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBjVLSSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBjVLSSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748018993;
	bh=pRGSLl53oIj+qavMFWYUo7qmKgt2Mu34MW7FePvtev8=;
	h=To:Subject:From:Date:From;
	b=JBjVLSSV1aqetiT/lWFqkgZGH6Me4wChd9sem9wGZ5EF5wrGFEoYUiaVdcsj0KCKo
	 tAOs8muWvnDYPSpE+R2Ly3OElNoKH8x8w1jsMjXnDwkpLsmT4nkt/qb77rPZr8bvME
	 MxQ1aLg3zfxwpawBQcSetuzvuAJLgmBGU5FNpi3PIJWByLQ/fdrDLFkdJqpB9N4VZN
	 aYC/igOxkhjVXKVJLBIu+sRIvEtrKpL0axCG6SeK6AImAdDE29z+Nfe2uOKEpHauCE
	 AL8RLi+MB8tPw9ieqDGU663fp9uezds8A35LXv+6A2qedQlMHxjYf65zUrNrUh6sAt
	 trmP3vxOvZ5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA7C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801899357.18288.10670176153628191715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dee81ca096f15c563da565016fe7c8b14e115bdb305a6c29414d3913d2a970b
Date: Fri, 23 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748018993
