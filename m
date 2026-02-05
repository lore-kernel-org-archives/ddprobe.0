Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235922339
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311034; cv=none; b=V3/X7R71wYJ4dOQeR2F2hArLniVbov0GrzBO3lbYlrDuMNBfvkl/dAdkqXI6ZVrA//RLMV7AuAtuSyAeCPfc+tdev5g/2PXg69X1CCpuI2TH88rnpCrNoW59j9+HdmDcdDLshytatootfWyrqABas7vMfwfYLEjsM+DRaKp3aYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311034; c=relaxed/simple;
	bh=Zjhfy3dxWyCgEeJ5eVdjKKhDY58Mg93SQdXd27qgT7s=;
	h=To:Subject:From:Message-Id:Date; b=Il++OtS6EDlEH0zoaaoUC+XB68z38gmiCugjhdsq/Ptdtkw4NbtmQYPsL4/F42+lrOr+Z7ujj1CqymkFanUZfAt/SfUtCXRt33fMNMpO787IyAwIlhyTtSCBb0qq0lxDv3o0h5o7uG8fCaxuDY5+dWALvqEOoAl2af7QoXqKv0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALUl0uWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALUl0uWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBFEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770311033;
	bh=Zjhfy3dxWyCgEeJ5eVdjKKhDY58Mg93SQdXd27qgT7s=;
	h=To:Subject:From:Date:From;
	b=ALUl0uWuxVYrxMHAewdAJa2LlCYYOe3Ow2QHoKZEN3Gges+CDbN4FipUwnWpR4aDO
	 HhLomoqdpCGpUJDtVkJNjZrF6sLOnKmte4olq+0xY1CsIshrYVy1lgAoHEa8BVBxBc
	 LBf3dOC4AWHkv4zGz6OXDf9A7ZJYy2KApRYztC82F5BJsQl5ZhV0NORje6b7elzQXU
	 DdhuDtSYqWVSELMEEhlIdHc3rtuT5ArUKT6BLlTExWF97SvXhd4EQG6cijiTECBeTs
	 WQV6AqtjaNqmJC+aGS0NF311s/DF1hT1IL7TtN2aQA34TqKuzZQ9KHz3/XWnOZky1B
	 Z8THCneYuzHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FD3ECD985
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031103365.7510.16110828613732928205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d4309bf95aec11de6fb75a811ba292f39b95da2a9b97456e1863da8a0c2b2e
Date: Thu, 05 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770311033
