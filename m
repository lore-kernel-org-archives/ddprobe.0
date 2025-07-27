Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3510817597
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753574994; cv=none; b=ajrPVc+ykkMij2/wKdtxJvitCellra+gGjo0aon2FyVhhbB+Ox/m+4WHSkoIJ+CUajaqhdGuoeiUcxxw2qrYNnPzD8eQbxlYcZlJVl1aQfqFU3IYCpCgoLey5VDHHwGZ1q+DZI9Ju4M5mXaWYnT7nCEy3SggbCOtwPAuKrlmPmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753574994; c=relaxed/simple;
	bh=m2pr2OOGeOOY2m8C7yGFuxq/a93mQBcE8UpoPCznmVA=;
	h=To:Subject:From:Message-Id:Date; b=lh7WPzJ6KlyKYYwiHHztWwXqumwTIts/O9EzvVe6p1omKjljGc0i9/Do9zsP0wh2yTKNzcJ4taEs2iCBbRrkeGhcqNcX/teczktYqorxUvNvFsGwo41i8TEQ8jhJC5jfwpqu3RFExgU3fO1ok1lm2f/8OMS8dtyl2NONgdw/5es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZMlk4S9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZMlk4S9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B7C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753574993;
	bh=m2pr2OOGeOOY2m8C7yGFuxq/a93mQBcE8UpoPCznmVA=;
	h=To:Subject:From:Date:From;
	b=cZMlk4S9lxrD/TuK8k6J8H3l4NrNtFGqDaBOBwaRTIUE4UMD5MdecoAddbp7gP6dJ
	 fvUQPnLB5PS6Aoh7JWoVCeAeORkTDOpB+A3dSHzjgl3sw7WlySb+Jhhc0rkm6JFOvC
	 8nRjs471n1tCAjqHbmXNhJc3qUPfUUcoel/PBIvzuTq0R+7r5obxxwUvW18MHO1s8Z
	 wgPyztiAWbTn0bK8NNsPWoo/MLqy6VWLlDLW4rgMl/+OfMTuvHm5kGsgX4NWRgHeVU
	 lie6VOlcmjAaNq5cuJAnR6yEdwPPDgXBmdL35ex7rCZF1BIRjnDvXBaD/ii1BHH0NY
	 rtHw8XCNjRmOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8FC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357499357.7855.6224173710582516649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd391416e1e4d82c2efa5e07ea9f78abbe064b7f49108e5ba7e4a90052254a8
Date: Sun, 27 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753574993
