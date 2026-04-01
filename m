Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B922DD5E2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775058934; cv=none; b=H8I1FbARQNkBhJsW6mB5jJwsO5wTAICE511d+DWki7FdA1TEJlTVBxMCJv2XYzAhH/vl07XEhf7hiL5KaaPvzP7QgFZPyOFD6dotlC7823e2Z1EsdyZ18Lh3IKe2A2BFZ2FSHc2jO4PVrORilgjPlROBrPIiXtgbyW2o/zW1/fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775058934; c=relaxed/simple;
	bh=3q//GGDTcFB6pGL4LoUyfIITQ3pXaRXpnea0Amee7MU=;
	h=To:Subject:From:Message-Id:Date; b=PtEszl5LWaWBabAXFNO+0AFM//tY/6PRZKMS2zDmekZUHd/e1J8kDe3AmhDVGHBtuWtXICCEb3dEJGIpmiCgATUQAQcdaKrVmLuobRRL90N04Am/ZkFTV8k2oKrjx4W7iWbB0mgWOU+qVDucLXwi9bxG+yIZ6WdY1diow0UUeY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHcx65wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHcx65wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFADCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775058933;
	bh=3q//GGDTcFB6pGL4LoUyfIITQ3pXaRXpnea0Amee7MU=;
	h=To:Subject:From:Date:From;
	b=mHcx65wuuBMMbVzwcTQ5Fh/rMLv5t2JnWqCncrVkt9Xb6lBIoLIXERq1Dv89088RK
	 5kcdYg6y74Dgifo+Vmi83ccVHTEGW4hNiMGo8eFjKGwkAGto1ibNfHh5p1yIluByJ8
	 hTjG1ASkcEdE6qD6yCDPmFU551C+5UFkCBJhqW4yU4d06C1GK5rzLFqZRszf3gcs/6
	 AlrD8ekGdYjU8h5/1/Jcun27tYyPQNmIek7msC2AoaTEDYxZKdXtAsJbWj82FHpFSa
	 8JtK3LGanREsu4ps8Mt24pqkaaOzkhFSj9HFRXOxL7bFDKnQs425hWbtsdv/GR/IpO
	 cvyTkRy7ft0wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A710F6FBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505893369.28677.17191176841297274483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63cc1d7a9136214874be41064c8247900349cfe443e92a1d68552418cb8f976
Date: Wed, 01 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775058933
