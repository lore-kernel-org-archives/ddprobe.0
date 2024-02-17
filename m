Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E204C66
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708130897; cv=none; b=hrKP+E45gAvUu7VumDY5DLeTIUwV39P+LuRB/UuM0uMtuuwPgZMg1K8KfBjYYV+Bv7qsitlooldVwqc5bdfAgOE/Vo/xIxw1mGfUCQ0Mvuu7csLFkHtrFZLGPq4HRcCT7ycigNgiv2em8IRisisJryOYOYNsgc2DKLZsI1zECMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708130897; c=relaxed/simple;
	bh=m6bchx3sPp8XfHd+tfq7sLon+jiYdXTOAozP2cXOZhE=;
	h=To:Subject:From:Message-Id:Date; b=uD7RI1vZZbFdykFoPPjqMF3Ch3ZQQM24xXEsNofJfVo9nUnOGn/8enVYr/Ga2KiWx8sjUR7GiWDSi//eufunPqFkg0G6JRvE3yaUEeP0UYi0TZDNp/hlR4q0eL48ggCNUAU7y+gVYA5PHjYnKdfclVgZZSpyzO9N/RmYUHuSd9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMHctpxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMHctpxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C14CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708130896;
	bh=m6bchx3sPp8XfHd+tfq7sLon+jiYdXTOAozP2cXOZhE=;
	h=To:Subject:From:Date:From;
	b=WMHctpxCX8d/1oUOVzR3DQLs9XwmRvsy8GNOT1sgb0todJuPb7DGyPIRBD59yRuVJ
	 5/ADV095p6Vz/ohxrciUtp6n7pJ5vQ+ZqbfES/MPI6DAZTnPZV3VTQS6StL8mbnm2T
	 0JEDgwZnpwC9JjzSSv5OYEipRH2KVn6MWFrACjcq/fowEar0FdRfwdQdM0nuFQS9n6
	 GmTWQaXCKZruD9MgfT8mqQwAYHW31xpKa0NTxNDez1JSmZSF1+TJNuUm7WmY5q/kBf
	 G159vO9UYR0eexPduwiJq63ATRbCq3uZLf7cQcKgkZg+VkB/IvVkqAkQaMcAwolQKS
	 aaRSM7F9F76lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601EEC48260
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170813089637.26333.14303901764404846719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dc3addd2faafbcfe44f979a09fe4d235dd2974415e69788a17fcb1cb5d3660
Date: Sat, 17 Feb 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708130896
