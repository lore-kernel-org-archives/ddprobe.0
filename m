Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4E5303CAB
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744234; cv=none; b=KdqN8qvfsyAmmb1q+JkrJtjEkqlEsK6oDH8hKwbzMDi/hO9sOIuxgLADCnmSUMmIunYnNkfqXQTOvh+i/Ie7CD/J71WpLVBhKgTtIbfBShQWynMpYLjeY34KONs69Ye8+fdNFToeCOSWn15dCoxf/Q4j6hQjY4GRKvN0O5iDLh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744234; c=relaxed/simple;
	bh=KzQWbooC3WGM28/e3ctYC2AfVZsGgTyE4L9fMRPeyAY=;
	h=To:Subject:From:Message-Id:Date; b=EddFgD4p5v/Py5UOliLYxcdF4DetImL7iQac7h0VKGlrm+oY712ldcMmrjNBX0IyNH2usaMd1k/PpBgrsEDndFoyr/l7vz5FJi8Cs7yrBL4RsIF/JR/+L0hzrGA5tDOPVp1CDTi6mGQ3ncUO/0OAcQbVwOPbp+6anbvJYUSKJZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbSwduZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbSwduZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F1AC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770744233;
	bh=KzQWbooC3WGM28/e3ctYC2AfVZsGgTyE4L9fMRPeyAY=;
	h=To:Subject:From:Date:From;
	b=jbSwduZUq62o7F824hfBsT6mA+VmhVcSIqwbhm70NMswAl5defphxv1EHl3y+cnCa
	 gCooKgsQs9JVbhi7BblHIYjA072HK1eC/kf9tkYsLHuaf0WCqSfdZ3qKLCmRlisnPH
	 Tm5B9DcWFDdm4uXexPFpjdOpfbzdJVdCqdtbMwKm/2UVSldyJjWEYhgNKgvkS3n33B
	 8v606Qk0oexhTKbr+GCu6JgZvoKgoV4p/jxTCB52oP8eMfuRZ92ef8DN7HJHzZaGUJ
	 0uTm+cd0FE2lDdNQ51FVU6bOl42jwwIt2cLRJGAgUuV0jBlyDHqN6qhCuMZZf0Mop4
	 73NE/fNZ/DT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F8EEB26EA
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074423366.1618.16948926584115744048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d35c663786f2be9f3703a4f36c7677870299def28e7e4696f55fc5cb936fe1
Date: Tue, 10 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770744233
