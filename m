Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E002390234
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777273654; cv=none; b=I92Ccl1WHSjzH5WHp33fnHC2aDURsYd9T1BAeguRMdO97CXX7U8sn/ZkHGiOip/r30Ec5FErA2h25M7oVmh5nCgQstpEiXXHf4Ls+Z2ZW++Y0MkR8ei2mjdbssldx6/TMu9Gwa94aVtcF+xvyNm9jwatxUR0tB3CSosQb+B78EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777273654; c=relaxed/simple;
	bh=R04B6ssiMcsmF6I8wua2iO91AlQsj39ABN9KJlBQtRk=;
	h=To:Subject:From:Message-Id:Date; b=UpNT7cusE5c0I22F3wXbKWldDZX+/hF72zVTbOKWr1xd1xOUOH6fe8gBvV5+cYz0hCMYlbgvdutFfQQgPGdAoJxHxvmUjDL+Mo+FM7zUzHkNpE1eWuOZOXbH2x4PxTl1QF4LVJfXK0+wjqiX/xo17PHjH82NK7VsUqVqdiLwHmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlUAJCpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlUAJCpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC76FC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777273653;
	bh=R04B6ssiMcsmF6I8wua2iO91AlQsj39ABN9KJlBQtRk=;
	h=To:Subject:From:Date:From;
	b=mlUAJCpxPOg9OcEGTDF22v+0uLfXQrSGPxopA86jtdCfVwjWoPKkfQBrJwTpSD+oW
	 ujW+3oJVISCsirlR2M198Fy67LSscf3nxlhv48XuhDaKYud03muuucZtN9ViKrCbgP
	 dMKZv3RHTLntA7QKrSmKOBIYNWS2A3fMBCxJgbisNY9K8KFJwJ2FiLeb6ZFb7PBBWu
	 tusjLR7MA47jswOcoxI9w6BjSm5c8GmAHq8Bvokm0TdDZd7wDA11/8ooWK1QAfH+OS
	 iAnO66vPJVWo9mfOC6cEDS0zP8gEEY2KSA69rXrcaENGpbE7m6lJ7a9PCGNIY2yCqL
	 2CI4dGT08uoKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA810FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727365368.22477.7391515649759112156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091cbca00ed2d8f0b4c629a335b025b32554239426972b57d88d7a8c7fcc00b3
Date: Mon, 27 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777273653
