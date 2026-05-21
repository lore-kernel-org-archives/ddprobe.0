Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FF82EA754
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779397954; cv=none; b=iulAzmS79bWlupqgYldvoylazUs+XED6FrIK2rUJ7UVBnHlt4jiWjEYK8rmXf8Sud8z6hIugPy7A+wG+xmHri2HVxX9GCbCEOX7EuF7em2kWPOr1g22WF9netdk+Q08xXvyiY+CSNuhvHcAFxy/JmmUjR4VASqlftN88xo3gFaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779397954; c=relaxed/simple;
	bh=DEp1DXPEHDJNjPVDvdt3smDRwEtjfXUvdOSke8vaVdA=;
	h=To:Subject:From:Message-Id:Date; b=rrSi5dM2xcbAU4/2Iin25QiJdbUCX38QeeqmkttQTyyvLBtYVTGhfyHn8LizAmF19vaa5wrF2qUsm3xmhCj1hj2ldw3HTCjUrBL69/v/Y/LKU5p6gszAnCgf3FDUCdV/Ibwbj94k850ZwAdOAL4PRzMyYNjg1xAGygBRkgb2p5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlUyH1L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlUyH1L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A55C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779397953;
	bh=DEp1DXPEHDJNjPVDvdt3smDRwEtjfXUvdOSke8vaVdA=;
	h=To:Subject:From:Date:From;
	b=QlUyH1L/IeKxx4Lr093E4JCMjlO5nDjOKCaH7ZCTumVzPLZohBLrDEI0VyvyRc/Q5
	 FDsY1+l8+tqSgR6cs5ORI0o0rb7SN8IydRPiHH82qi6gHbZiDsXdOxVsB7luZHJGiB
	 aVA172yswS8SYkXzEP02h+dfMnQTDBsiOeielgSrcq1kHvvaIg3uj1qmlwS1MnZkK0
	 IiFOoiO66q2aAaHm4CUQLcE8HRWRkeo0yH9aXGuj9a4U22uei5OaK2+PJ2CELOqj8Z
	 PtYoxfC0k1bx6yQdtIz1cY2FV4DgKZ9PpuW6d5hik5ZU6ISEJJKFgBpvpJt17SrEHX
	 fuBOt86jqtXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A927CCD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939795368.23972.10427566644967109456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77597f7283cf40e57b03482d402d0732d91a5afd5a20f30686d61fd686831938
Date: Thu, 21 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779397953
