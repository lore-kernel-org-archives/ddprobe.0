Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0425394C
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760195394; cv=none; b=CCTtbvop+lxvCvs4wAc98CdbtzccOYa4uaQTnOYqX9q44LWbUPBlqNdrwPxLmm3wms5KnTuxJ4ovck4jS8LuaVe5tzJ8382t2DCRyRCGZCUZ9U1ohx5VPpPBUimM5UKNVZDUKrO+1NZvSPR99WsUWkoKZyrAOj/5ldnXaB7A+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760195394; c=relaxed/simple;
	bh=IozMC8Wt+JuxcpB0r1luzp6f0J8utKEmsPxuwLVYQfM=;
	h=To:Subject:From:Message-Id:Date; b=e583EXO70gTmfW3JAxFC3ZKJgq03QzOqUe9loOGqmn4fb5q6Au0FqmX/MYOazZMfwOcer8btTujekfNjvxlhS2u+Ga6fQ3mTqHwuyK2NAvPPIwI6Jni3e2bux3a671EhsEtGaUs7OF+tFGNUjsX0ddxqYqe0OL+mAPCy+CaO5l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpCx7UVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpCx7UVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2297C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760195393;
	bh=IozMC8Wt+JuxcpB0r1luzp6f0J8utKEmsPxuwLVYQfM=;
	h=To:Subject:From:Date:From;
	b=TpCx7UVO87qSB1CGJAOFZi5zJSw27TBM/l015pP9hH43/0kNEfoy9QkdXKTuChml/
	 mjZA6j7/eLl9pHWsu4TZkVpkklG57E4jdDDjX7Y28ix3bW/20zFRJco16hrAi/P7FF
	 rcp3RQHcuCF0VkP5DZz/X2meVcxabaAmVcPIAjfn6ENO2tnbkuyTFqYQJcTLVsnXZ9
	 BpB/QkHtw3yRLHPcIOMBOLkNTOWc/DbKcfYtzDyx0+QXABKdFW8EZxdJYRsRvy+JsE
	 xmh09iHlCzN3VlRxHz/64wOsYkDajOXjXUODxDlxIgI6VDhnuC9ZNNV5NEgau9FJYi
	 7i0GERzGqmvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F733CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019539357.13374.13515586166077033839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad903739cfd276497a3df1ad9424f7dcd04b5e71e26f0ade0205ccde42b68b56
Date: Sat, 11 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760195393
