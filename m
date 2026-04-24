Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1270F35B64E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777024654; cv=none; b=YBUvstUtoaklHJ2ONmo4COpUYUmZDTGcBionE+ynii5fe+sYvTuiP8ghYJ7ju7BJ0LELq3XYaNh4WTdYoRB6LO1YvDEn1QBdSl+DiJ9I79r31ip3UtVd9tyu/ndCvj7n31HFbszf5IrXK2qUtDFLHwKf5MOhdUMOI2KnUYbVx4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777024654; c=relaxed/simple;
	bh=ZdaT9nRItAUOGSfnFZntxrLTXNjYC6IF/KHWQrc6Ias=;
	h=To:Subject:From:Message-Id:Date; b=UkMU3JJJ6i714oDvrKv1SlVJ5+dgGYl5F+vgA5tA9ZHi+S5wI4CqX7LttlkIbODGgM/GVBospXAgESsAgyUyeghJm0RWYcCVXsNMsGOVYSIZUNZDbMnJF3L7bI9DwnbL1mH83ExWKQNFBLkQxg2VSyQd5rPlGY+pmsDy/tPVWLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sr8OoboJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sr8OoboJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78CBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777024653;
	bh=ZdaT9nRItAUOGSfnFZntxrLTXNjYC6IF/KHWQrc6Ias=;
	h=To:Subject:From:Date:From;
	b=sr8OoboJYlXHedj0tM2sb5tpy7V7bBHeeJBJhixtUgGeQDfjMjgV3xhJnvKJg6BAY
	 kz1slMqpL05ZT0JCyVM1a+HVUNEwGrrW0ULQONvuF6rkzSfo3+6LsYZLMJIlMgx0IJ
	 b+RbGKFDcElytsCBkJMsASRv5cpbZS2F5fLZdkTmHZKTni+0JRCG13qyXtNcmtwfTy
	 P9GcBRsxhGxVWC0delBHQj5AhLmqN6Mxi1j5SjrNo0fxQlfCPOQT0L0izwEiJLA7IH
	 YKnzk+z6hvOcLm1ErpMsmKMO0+zXPRYiSrD9Zj+oV13hv0MbpJFhs0VlmBEQGuUcU/
	 SEvkZKVhJQmeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9338FE51FB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702465368.30300.17043351229524175917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a92bd16a23212d24c320c019ec756c141d963218c276ab14e98f48ba70592a
Date: Fri, 24 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777024653
