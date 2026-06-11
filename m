Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527BE3EDE61
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781186194; cv=none; b=lD90GN1aD/Os9R80+yb0HFGSA+DxHBBfGm42I2I5NzyllT4hNBADyco12dRDsZ09YU4i0Q6VIn7sHGExn2pFg11lpfk1Vb9OxgsXope9yCHMdHQhJo5FuW4O8MshiF1wgugxbbsS0smdHvWb/AM5cYATpYk3ZCsSAkdPVJQe/m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781186194; c=relaxed/simple;
	bh=P/bLT4cHd4LPAlilylkpO03cz+JrDMNk1ffu1THuAX0=;
	h=To:Subject:From:Message-Id:Date; b=ptTPMyjOvOoaoySrnohC3I5DUV8DuyIdyqFLqx0RUszorvye1ZMEZwtPqbvzPfvkN2TDraZu9gtdWinVbTUC2+1xayvWCmFs5D0IJ35/Azp0AlrlOLnXWARrxoXo4am2cqPAUycRr+4v7fFYwnnmxa3eiY1AMD2E/YFQKRcMQj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRtmN1v/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRtmN1v/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4627C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781186193;
	bh=P/bLT4cHd4LPAlilylkpO03cz+JrDMNk1ffu1THuAX0=;
	h=To:Subject:From:Date:From;
	b=kRtmN1v/Z0oiiaEkEEcJtq1g+1sLW3QRP5G4kpzueVT0eW+KfD+vnFODJK83NOL5t
	 9xuVH1TQdtS3bldWnRdKZtnqxXuDSis1i7NXrn+aFVboyAb002MSjtBYOi8//Bsh64
	 dRW/7COm5iOXK0Q7xu3ruvFOa4FbkEV+ZAOy7lWOT0lKhcXa8Uy8VUnm5sx7VG/5vd
	 2zJkepWTO75usmj/8IkUcSg9E8sfFCUgJiUh0x7WNHkTj7O9b85ZyaE0eZShsWi7nz
	 yKr43hNtEX6nLSCIjqbl9zyMeyat7CU616rhX+4D9ieg/ZrxnYpszkN0ojal4nb2we
	 St5PaUSdmLd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C8FCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118619374.21198.14991028986004631610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c666b2359a7f4720ce9c2196a88ef243cd8543227d48e19a5d42d37289359b
Date: Thu, 11 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781186193
