Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24783939A5
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768574634; cv=none; b=PmB+u1yfukX/UVhujjrEVb/jgfVgHmVd2Egw/H8pkr4NvyGuac+sjkyDac0ktPlqKf14cAN2bpSV0JJe6UnGxJq8vC/wAJznQ4/O9qq+AocEChGi4a3Uflf/vewsu4qhmH48iI7JyWGUheLN0sLD2aini2fqn99LqaLWHEWxyl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768574634; c=relaxed/simple;
	bh=LeGgr5LrkPb4ma2uZR9hP2vUuzIqKWo2t6ZuaqOhV9c=;
	h=To:Subject:From:Message-Id:Date; b=Ah6B17iMJTXvKNIuTc1Sc3RwuqTwmMISal+qbux+lJkLLzWONSLKeXEKcItL+ZNugxPiBQZdpDnPMOmCkyxIKAGHFTx0oX0JUc20zfuFNpKJV3X649hZP1brd8pE/Xi9grYjLh3/5U+NWCk0j9whQnPhEkp6bN7u6XGiQQIYe4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCf46Hh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCf46Hh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4A4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768574633;
	bh=LeGgr5LrkPb4ma2uZR9hP2vUuzIqKWo2t6ZuaqOhV9c=;
	h=To:Subject:From:Date:From;
	b=sCf46Hh9TgbPuAlnswmnDzXKMiFbvmyORDdbLFDU3nkqqZrZmomGnoekyFYgmC6lf
	 22Wx1pQe/SwZg3QOFg9qZUEPDgjo9Q4R6jSWpRfw4SvirTrQnKv2ZLa1OiY/WH8zt5
	 NvEUPTVzqd/ieGi0va+mni/X/s0CreMuuSspW/QV6qWZI86gO/F0tttuo6+1sVFmxZ
	 U/CfQBTIjxseYHJKYTUJJfyd9c6K32RsHPKe8knx1/0U2GyllKHVbxjPLpLp5NlwZ7
	 68yJoSfMCX4HVL4wRcNl/OM3l3EPBDgnL+Buxbh2R1ELxvwRgaZxJfsO9SLKSXu5/P
	 IrqaCQO/pU/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030EC982C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857463358.12075.13648370678288518588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453b944407e78de26777f1faeeede378e72d07f5823de91e98dd1f3eca07370b
Date: Fri, 16 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768574633
