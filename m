Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F303845DC
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788304834; cv=none; b=Ccxr49J/+ysSIbaPmiYrBuux1U6VG7tFarBDnHVCMUYPG2rioifDw5hXo4vXCU+O+utS3BLt9GIU90bC9I44LiXnr9puAlXqd/Mgj1lcaFjhnCjk3zPtJp0BPTPrWK+mwxswzO/gM2gVlDmsGSllUZGbTNBqXW+sl3/eU9ZUKrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788304834; c=relaxed/simple;
	bh=EqecW4X1+88OS/cbe+Af0qVQdmcCvuH3SzZKrm9PMqM=;
	h=To:Subject:From:Message-Id:Date; b=NPm1V8Q5t1oHYokii+86h1LJwhBYx72ZqQdrtf+zh5uFJ/n50dcTa8Xo+yG1ODEkIZlTPBB0N0viKGcs4A70Bl4uWUGGhK3e6QlAsO7EB6x0KSYFUn0FBMcHeXSa3G+wDmsNBtZrcpqc5/n9fWge8POwPHf4P+DFy7ZSsJ1kdno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQsJC3TA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQsJC3TA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D166FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788304833;
	bh=EqecW4X1+88OS/cbe+Af0qVQdmcCvuH3SzZKrm9PMqM=;
	h=To:Subject:From:Date:From;
	b=WQsJC3TAguaC7nYLh7rBLPAt9o2VZr84RGQ4onHFYZ47lrhMf47726qLuQJA5H3Bo
	 hwZHeO0xw3LgrIaG7uhtY0gZafBFgsvUbblK4wsWbZmsPzpltc1LFC/YLV4E/Emz5P
	 eytm8JK88HwRRFgrD9+dAacp1U31dXO1Xd82pDIsJQpWKa5udlSLbHYY4X++ToHmNc
	 lYX54IxwUf9zbPfqiqWlq3rzcRUn9xrJ5lebPve553/Xx++IztPhvjJxRHLdcqXBGm
	 TWnmlqNMoS4JiE/XaofOMB7dQqkIOo53xl7f+fsoKOqGZDUu+/DphXr6P74Y9c4vEI
	 TjUzTWJndhTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB53C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830483370.23943.4586262767693281264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2deacccc656cf881ec26ab436a6a6f6994c994b2343aef87a2dcdcc9c9f501
Date: Tue, 01 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788304833
