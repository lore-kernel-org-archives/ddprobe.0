Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E3D1CFA0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719650063; cv=none; b=HJVfsBucKbmmpbgqAwWWmj7Pk0ajBCVTDA36mAwEi6JFS8MKhOw+qTPdGheqLdm2uc3YZQfzffthyTr9aM1HHjEhZm2X4X41YIC2MV5VWktCsZZeR7UQdxdsMuQgL3b/SRH7LBXcbc96ODTMZo6DR+BCN7jgCqrPJFWuCbbY6EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719650063; c=relaxed/simple;
	bh=M7NEqUYopPVCKayVsFKPlojcpCRA8SD9P/H4K630jWQ=;
	h=To:Subject:From:Message-Id:Date; b=CbQLBZNeXeuRaiTIhAYe3l53/Qvn/wT6Qgaj981+orGBz1TWmaaKtj6NAy46+T4pJ/wQRJROBhDSzw2hOzDtt5kC6YRYA5KNYHsF4vhk7sCpwIBafnNGmdIx4jdR/teTpS1cHa2q5F2QUAFY6SUQMY0xBck59UxEu34kmkIMqVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlOs7HCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlOs7HCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF179C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719650062;
	bh=M7NEqUYopPVCKayVsFKPlojcpCRA8SD9P/H4K630jWQ=;
	h=To:Subject:From:Date:From;
	b=dlOs7HCWhabJOisumQJUsHfriOUoTXVAfaISK9pAXHDJVOfolEXygN/jymMtUdLRi
	 a8YECmRhHsaGh4UCFZhWzb42JSVY7VjqvYqufa+WYMGcJcBiKOsC0B+J5BH/d6HI/+
	 KcC+FwT9uc074MNin1P3WDvGPtvCFL3O2MeLA/KtTI2F6PtBDc/udWORUdch2C8JCH
	 uU+HOu9eYxuYtlh8eHRzRpKkwLnm7NQaxTe+T04f/lBdQleQGE+XLCCFumBeyCS2gi
	 Z2ROcGv3rWxy96hOK0VP2M4b98nInOKRJf5MQnwj4ffG6uDTGohzVIPoxOYRq95YYt
	 osKKsyQkojxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D87C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965006279.30476.12534467797772079689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0055b6ec95fabc861192e19eec5b4d3ffc7c962d922f9d17c75ac1ab6d3a95db
Date: Sat, 29 Jun 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719650062
