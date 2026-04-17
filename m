Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E39C311C07
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776439654; cv=none; b=u32SrVCxLMQKx2ufEZesxrpgxQ780DuB+v1xXpGdD7SvBDdJ4HyZ6fQOCHXBQMtcuP+FWAweba27PawzxoP69IX1LcFOfi1bdGfPTl3FldQN10xKYj9X9XU+uSP24rUo9xfqLrNzo44Ru5VNUBww0ahaQUYrqFuF/pIaw3RvCtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776439654; c=relaxed/simple;
	bh=5oP0PIESFVMOP3T/gc/GKjul04/xnPut+Y+z86SZATM=;
	h=To:Subject:From:Message-Id:Date; b=uIkrSWfZynU9DQKUUeUEM59X2mg8GZjPKRmau+jiiRj68Dwb6L0ZmaEpXOyCssc9vcVtyDaH03EHyKb3SYdPcNCERglvaY21ALeiOkpaKLR8hGyslnISI9rJGezAJMs9uLdKI47SMyC2SbytnT5aKgFhLE8oV95rTeABVCEiWBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eokwtpbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eokwtpbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C575AC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776439653;
	bh=5oP0PIESFVMOP3T/gc/GKjul04/xnPut+Y+z86SZATM=;
	h=To:Subject:From:Date:From;
	b=EokwtpbrDIWnmnHKJ9IncjdN1sA11jYccE/rKPJolwblDTTp7/1TwBcmSNsZGJ2pU
	 WYudmwIJ/CWBfZcJF0rDu8atXuBhMibbHTT2M1pCJksNeRUHm5gRubftQs+NpX3418
	 SG/rRIQlS1AdK5kGuo5Dr9DaRg/YZwVSsIKjogKntrjzRYD0OAXkxnQ7Ufy2lztJM5
	 KRFeE+2HgeX0kDY56e86sP97pbEYDZrQ0O+csD9qlq2+58kx3LBlXPem4uPvmRB13N
	 ig0AbCF49sxaDt/JASYS1Q0hW1konDh2v0VFG19uuCZ1YKQwxFwchhhgJ/bw0AbS0U
	 pwrcVDA7KiS8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CE8F436B7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643965371.18328.5775129814532446747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397dc16745c1b6cccc4994e53411e7aee14c9e3b3bba4065d3fa474c14d9a09b
Date: Fri, 17 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776439653
