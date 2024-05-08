Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657FA12AAC0
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715212343; cv=none; b=Cl4ZpbfLRQQp/el4YGCWdjFyCRSQcYDNzwD8Dpa0TFr5Yif1fT8goSMXAka9Qgi6zK6HLY+3NPreAs5bEWczhB6WhjYBCqLWscvHnPYu9bdA2sFRZAHBqhxf+HkeDZYf/dvWW1xl9qye9Czdt/3hy93aK4RIopBVRm1aKafMmXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715212343; c=relaxed/simple;
	bh=WFA+FcdNqgzbD5kl+IrtLBlNNSdRNEoXEP8Djnl51Go=;
	h=To:Subject:From:Message-Id:Date; b=geNTYkmdKTwtOxjZHkHvS56DYIVVn6CrylCvYK8KzCCSaj/7o/av4mwSQt/7KoA96Hff2YKqnNmyNfylS1N5qlJWrIOhls3yYurvo1pXqiUvN3X6rcmXZ4fUEDA2ewuyJqfqiBp3Z9XeBxDCgONIwlwevtMWKe5/pzPn6MI09Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzsRZ7VE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzsRZ7VE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0190C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715212342;
	bh=WFA+FcdNqgzbD5kl+IrtLBlNNSdRNEoXEP8Djnl51Go=;
	h=To:Subject:From:Date:From;
	b=NzsRZ7VEL8ADjUypA5k9D8Y6osxb+SDW0Ku4X7mFTj1G9jXDWI+n4BS8O5uBSRpwW
	 XlsvgUVhi/pE+rJjNtomZw3LRAY20w5L9j/3wt9cuC6WPhuD9ebJrtEPXa74hlr0BV
	 DaKx7ILWc65r3LPO44eQn21nP3B8Wpf/tucFVBtg/v+FI8DhZyhNxmYZ0TH/PdlXTp
	 QU4lXw90a2DKi6XuMa5NzKRask4R/1hJJEyQekbHod0TTm1th8iiUUZun+LjVGGZxN
	 gH8s8qIAakwmREDp2AIwo4H1hfvO0zayTjrKkKCoKyF6nnmoilcG/D4V0UEqhpKo8b
	 htWmn2wDsG3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3506C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521234279.5095.14442633698919918807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9497ddfea2fdbfd6f34113ef11250a204b64a8f394c7bce53c4bc1ca68479364
Date: Wed, 08 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715212342
