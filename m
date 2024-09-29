Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E102184D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727603154; cv=none; b=bF3MCtXebdwxgRJ9iyNkrfaxQhOqoPHI0b/PKNtJkHUmqG1MK4w83G4+EuDP6bYoJNmjN+duiBa1uWOpJGnwl1zxUBXRPMWtbbNW64uZfrYYGB+r6/WPn9iamTFswCllEfQJPM6juyU7Wbx/qLje7DTfAoHjpKhhPzRDxIS3uf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727603154; c=relaxed/simple;
	bh=+GrtUj79ovEsIcE/XzdtFfrABVrHq+6i6ORy5GkYfrk=;
	h=To:Subject:From:Message-Id:Date; b=G4+rm3yHbrnGGbv8/iDFuPlXiZKZGVCL+VRYUIPoSe/HoSRdhZDeiv1BViDCN+ooKKRAnvh62BKTWxKnP7wL+Kc9rm/w32J7BtM8L38GC/f98EAn+iiHxXmQSjIZgYdKW2Klez0APKsy+iPBzSiypmZUp6GBK5CpYWy7Yc/MusU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nslGR89b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nslGR89b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC11C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727603153;
	bh=+GrtUj79ovEsIcE/XzdtFfrABVrHq+6i6ORy5GkYfrk=;
	h=To:Subject:From:Date:From;
	b=nslGR89bFMQA7Vxj5bky0ip5zwJz4D7Xq9aJHUmiKm5i2zipBZWbmRb8+E8FWqeFw
	 r/pBQv1mSL0XEt8r6OscUXROV6GkefaguCzOzkR76K985laTeTXUYnpPVGsHv0HSmZ
	 u6vIQe6twzJQReaDaLFAQlnoNxa29Vze5ETifMy05tgZocbxTjRSdP/ZRY8p1Qwok5
	 mO4jD7u6p5Q8NQyMZtTnGOXXPDL3cfdF9XZMIkgWlrfmHsLkqdtcURkMCWDjxzyobB
	 VdRoE99tMUwBwVNuOI/K/61wV+Pael/M5G72RZny3KuV9oUrjaN4lfIBLEGEjSs0bV
	 jPVRE+jAmANyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AECBCF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760315362.31301.10482521052912369769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20824db78c959cfc65894fdcc0385aefe543e00fb10b3ae7f84292873a45a29
Date: Sun, 29 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727603153
