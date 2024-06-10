Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB7B12FB31
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718029643; cv=none; b=FpHv5oZhbhN8TKW6YdrycEQq7xGiDx5J8KZELdBN+KBLOS9v3OGcLlIlbx08olBg/gTHDCnxdJlOuj1+UtGXrl6XV9CeEKLcA6VJFNKk2l3MsiM3hj3OoLQC076OyMmAwfAiKljgBCWNawEe7ydZ7sEP8AYAwSIXMg0j5Z8yW4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718029643; c=relaxed/simple;
	bh=d73Hlr6OsIGVuQfFl7OJcGqbe0bBdSJc4jv+7V3Xojs=;
	h=To:Subject:From:Message-Id:Date; b=PP39PyEZrgrcxycFCYOchlGrP0Y4T6u789tQe1oEMrjApVcbRkNacVfI3dV//PAi+eqImr8cBIXTMLL5k+x9gZa0I8zyTag8KW+aCaAWHjTXW6sdlq8XAFQT1auPnLrTHvL0dlB/urURgTLdRvZclfvc8BsgISZeu5K/7NttfAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfh4LEGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfh4LEGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05BFEC4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718029643;
	bh=d73Hlr6OsIGVuQfFl7OJcGqbe0bBdSJc4jv+7V3Xojs=;
	h=To:Subject:From:Date:From;
	b=pfh4LEGil7FbfIu0ajIfpixdDDNONRs77J827bbTp4jAlTelE0+LVKYxk9fzN3Iox
	 skfAc0gyLD3Pr2A081n4B7dS+sKgI1oxJcFKfxMahViE2mZygWsW+xusn6x96athZs
	 cvpoTDvecRNjvYEoF5yU4yz5R9k6hS4Wvv72sqNHPrk4DeGF0CShsWtz+Qdcbq0SQC
	 ZFl5/8whCc2kvf1KP9jyiH8WuEmSwt4SjpjWZUnm96MyVL2ZtH02Oljwiu5qJkPmTS
	 GIoK6Ylqof9E6TzSmkWreeE36x3HwOl8m69ynqx7jizEpsKLFLBoi3kH/4f4jY8qtb
	 jsJn+UTnTAbZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F0EC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802964289.5264.14971993769914178008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073475c755b1d0e8a206535ed964b94515dbc8ca6a8ed19a73fe0f19c5a2405c
Date: Mon, 10 Jun 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718029642
