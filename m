Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FB83CFF6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786971034; cv=none; b=UC2VPJGAJQL9FNCKt8nfsG8Era0VZtWZYwrlkarPj8/a0b+ty85roVPjx8A3PqAhqqWlXlCfCSitpC+2uWH4mmgHxnKlateRwFMSnIbSztqnIy814Y9hImp3NAbDIiFZRTjqescWnGWL6HpNjPfy9qkus7y7BTqdkj7YJldQaYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786971034; c=relaxed/simple;
	bh=7pWpZeQcQoT7sftEot1sPjhad+Gz8eYyEKKDbuJJ/VM=;
	h=To:Subject:From:Message-Id:Date; b=R2ezYhj6k2zy8FS/nUI+CWXU26NRUyIsQVtq91hjy43a4aTnije9d7rfixqspINr2e5KLU7kyvpdIGFFeUv/sQtx4X0EM5TOBNSiB3sZd9sTKFf5oUAdkdwYimvsserPlK5iuVc0Ph+js4FpKJUdurO2nD5+muyL5snjjFkOe98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkI+/eIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkI+/eIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786971033;
	bh=7pWpZeQcQoT7sftEot1sPjhad+Gz8eYyEKKDbuJJ/VM=;
	h=To:Subject:From:Date:From;
	b=hkI+/eIKDltAiPfoC0pbzEb3Tk7e8hJLY5MwvlOAnyHl/2WpHIyMFrDDCJtHGR3wZ
	 +A/eGEzZRHZD6hWzu8aERVO2WdT1nE7XsgjN/vrcu1w1QEc06UqoeBnfmSKiuCm6K0
	 IyxnaSYi7NztukcsA71kYhKCL1fDNF38/nnry91nqv5mCs9Swqu+YI5QWihfeoQhHO
	 V/7VHyY7QHGZZageI2cDGyNxT6gcEvElYRRilh0S+2hZrspj3e8Y2lgDAhma6moD1n
	 URSwN7kW94aJHWIlF9es+xL8q4y1lXHOR6ReznMGzvhzG89263dxQaXJ4k/8/R1Lir
	 BHnUqDoU4MIwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC8C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697103368.1624.6059041867637056864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e646c29ad2647111226d0df04225368bd99047b4e82c4312f6c13be416ee74ef
Date: Mon, 17 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786971033
