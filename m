Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEFA946A
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754185194; cv=none; b=FLMZoTOH68scWFtjyAqeLstguIc3zvJx3sCrTEE7e2U5vUWvAEMMbrsvdzHt23szvEwUJ1tFbvXXTVTH+EIVGqO6GlUPThBcctppjH3Cc0P8DT25IrX0KJTZIg719i6TAfb3bvaKjCqyWEXhfqENQM4jaSlNKTe24waIkT8QrHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754185194; c=relaxed/simple;
	bh=0V6u6sJRWemTSa0Wiil3fnQPKR4RbsDGn8how/JKZo0=;
	h=To:Subject:From:Message-Id:Date; b=b3Wo1MtbQEZG/i1pRhcD2ReNSv+CdX4POChpR8pXNeYT2Qvv5yQhhv4432Pow8IzDOURnuguK0h7ZfErn87MfshtYOT8hsCkgihjJ/sZMQS05XldFuqn6eW97keIekXMW3v3GAyEDfngcP8GR1mNLAYiGmbvY+geD+F8pKvc6Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUk52cav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUk52cav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60E2C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754185193;
	bh=0V6u6sJRWemTSa0Wiil3fnQPKR4RbsDGn8how/JKZo0=;
	h=To:Subject:From:Date:From;
	b=JUk52cav5OcDbVcm6c3kh+rBR9tHnrlPz3irOSACdhOP8BhAyiXdxoAutQfUrpF69
	 rowHDQnU2xlMhWBCVvaKAh6DvMy41DearN8rJfvPxH2bhrSSsyqf/qYvs7OftdeT+K
	 dyMcreyEuYf+TTVtN4LTYgQi7mIeXaia0g5ZTLzg9962UaoHQukFnqVkWT8QCHzhfs
	 cgCS5l2ggRLqzHj4hZ+p7Hvmwb8e7cELaoOi2j5E87aJbWC+wYP3b3JfNNi1LEuGQt
	 qdF8IJIEfa74vE8FNXMZfvPHSec+C9z620CpjrVZe3+3ycGgt1+wfw48fwAvOYiRvy
	 qZs9SkKYDFpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92874C87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418519357.26722.12389540008482367551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3e2029188c8d5c9f86f29849ac54f9853f0541fbb285cbc9fc49b20b407cfb
Date: Sun, 03 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754185193
