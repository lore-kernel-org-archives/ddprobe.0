Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5260F22F11
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723571754; cv=none; b=N/N7k3iEoZeU9gDrVmZFZE9e0OUrXWD4H77N6N6Y7uRPAYdLmTipoTc2ZRh/AxxH3EXF+UzlDgaSYuIwjCtD8yTxDSiWlZceOq/RCqOkaAlOA8It5h+3Y7+NSgSLHa/ifxMFwyfT50UXyeWLfiKrxe1CNz4ba2RajqbOEm8QUJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723571754; c=relaxed/simple;
	bh=Wa+Y16B6tzINXJ25hejZzusLB3REnfB3gjWp4qgnXAw=;
	h=To:Subject:From:Message-Id:Date; b=A+uWRPYTPIpQMgeX7LFe3rTquao4torfZu/8eygeE2dmqIBslO25JkUEfFOANX26xejVPG4hBo3DgGKhRZMry4dji5AnRLC4N6qNjh188pBVF6Fk/mPwnY9YM6pxWplvrmNL9fhbI0rUuhVsP6iP5yuEaxbRd9LVszEhy+AwzM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krxZjHfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krxZjHfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA56FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723571753;
	bh=Wa+Y16B6tzINXJ25hejZzusLB3REnfB3gjWp4qgnXAw=;
	h=To:Subject:From:Date:From;
	b=krxZjHfx3U12Iz6v+JSVzDCwhcn3i/mGb3hDI0B/ne+3WfR/xy+ZFK7ibjeXezX1h
	 C/DkbcdWpQrFBhTuuWxbCAX9sOidq2d+r6gNoIDm6n7WHamBbvIB9eMn0MIeqFqZzQ
	 9huu358GrHkbPY2T6nrpwtxmOku00IdmQZ0eZ+4bXIspTBfeBHClI9fgC2Mz1II3MX
	 8SwJEubTdfv3SbtDW/jss5ueXuJrZUVrunQUIOEtfituglcQa48rEOM260Wx4ah/6j
	 z/v4CfHUvsRNKKmlWi+SN8kal1qRUVS7RGS7JmliO78MriLSf/w5QUUkSu0K7SXwrX
	 lLfVCFcRyJx2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980ABC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357175361.2677.10830941105830309981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e474900f0f0c64517f3693825551b6bf1168f01773638e89e43108798e234e
Date: Tue, 13 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723571753
