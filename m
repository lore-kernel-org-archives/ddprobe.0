Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212AD612ED
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706872697; cv=none; b=polO4TMdg30V/N+JQAXPhehtGygVEMpm0B9NTFscPzJ0lhBX56zrKbMC1fLwynLscoZq3WRjgvMmCGqQ8AoXF6bJCHNgLXMTnBUbc0iEt0QL45jyEPkb4BxotAiU9XbIhUM8yZh0Zi4DOlsx2FRAbxX2sfOVDrYQpImo97ldNDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706872697; c=relaxed/simple;
	bh=vhPPg1pJaMZmDIuHD4J/W8IcV0SEP7ec26RJFYvoHAA=;
	h=To:Subject:From:Message-Id:Date; b=n79Dj6RO/DeSPtXKDWo3BCo5neaDMR6+F5e9/JzlDoyQ3QDUGryspWMsMU+PPzO0sahOyDkhHcAuPNo6AIwu1KQxidse5spKB9jjIyvNxBBLXECFVKrA6Nob+Z2DS/Qdv/LekxX7v33vSOheC5p/Jf328dFU70h6LUn4b3c2lFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtowqcCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtowqcCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4CDC433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706872696;
	bh=vhPPg1pJaMZmDIuHD4J/W8IcV0SEP7ec26RJFYvoHAA=;
	h=To:Subject:From:Date:From;
	b=BtowqcCA08qzKO5HsIndxh5eQ5GN7/0ex54m3+xEHC1HdSwTD0BX6/669AHcxXsVp
	 JOtKXNa2hmpdwk6jRoi/hXjPjsqYEsZzeSEngZbYjqFNVyjWZ/TQUY+cFBPJlbx6eo
	 HxMf4wBD3cWvP8w1Utz3SACjwpqsXwSI9VTTTfBQtpcc5i/3gwB8LZv6QHB9KInJmx
	 /+HTXntEGaKVD5unzQ3hjyAOzH0IKhofbNrCP1Ls6TE8QflGZFbWXa5SOcG4jTnR4D
	 0yid8QcSgRkbwyKFQ4CXkXImFEo5Eu8ekgh6QHtmu90HBAlM05ZNH4TEB4DLN7bv1B
	 sknjxbWvp3+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F5BC4828E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170687269638.16799.1340449988441059223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6a0ca214802b92b93c5e2207e3e445e2259c75f1d55a544f238e73700f4c38
Date: Fri, 02 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706872696
