Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D131F0E47
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747258195; cv=none; b=S9UfUg9f83VQZjeisfBtZ7ax/l/bATginaL66juQG05bbV3LwOOtENU9DY6A8gQOsxSBi0uwNi3RVE5aIIygLgTW6NuNFLJo/Ogq8ikNNSpcZzQNSk7XdbML3JSiSNaQBPuBvqRcfIzHFU6mSP1uxaf3OssNWMXZXnEb/M4AD/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747258195; c=relaxed/simple;
	bh=GVoh4Nho5F0/pJnVlObiPEaZdeI7P4raEcuA57UcaDI=;
	h=To:Subject:From:Message-Id:Date; b=QmW3dmE4T9hsebTd7E596QO55QwiLI2I8gNI1hV3SApODgMM6ZQG2PS0vkHk2C3CDoKO2G+ECsAYlkYdRsLx+pBNjfS0WpXtMNdOb/+V1YOTK7hQ2elFEZCjE8lJXN4b0VXYDD3MP6aUo9KmS+7shpPu9VSl6bMpJfCSJyjYdGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeBP7rtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeBP7rtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE17C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747258193;
	bh=GVoh4Nho5F0/pJnVlObiPEaZdeI7P4raEcuA57UcaDI=;
	h=To:Subject:From:Date:From;
	b=VeBP7rtJeoq1ZabG/tTXvDO5xfJBHvScVgJQK3rpl2yub7men1iW2D8CjShl6mdKg
	 SzX/tTk3I+sHNU7bvnuB26OVR686+ePrXc7qWz90eeKUijT10zw/jbzLWXFY54p6T0
	 qoGUmyYACRo/ITLtVV4+6Wxe4/H7LKQI2F7IJklbJ1rjYCUYhIejs8k9qnYlNJuDIe
	 9HxqAFKIDOTnLe0OQuXzZlCDOaWLFVKWIzFIqozPSWu+jUayuv3OHt1Pn2AfX2JVMa
	 8E9iJAAQu2o/GB9vKsgVM4Hasweo+xVuasDYSKFFw26Vnd5eYkCelz5GslIzbKgIVI
	 Z285QB0eUYMbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FCFC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725819361.12983.15328550399781763538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14957264a63cd9fcb48783395b4b20f7b04ddda89a13e75bbdcc90128d206839
Date: Wed, 14 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747258193
