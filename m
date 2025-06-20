Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B2327CB1B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750409993; cv=none; b=jd6S1IVNkuCDIxSJqJarczpMt5wv1fuh2VFYTYZIKpe9UCrn0f5+uPXj4VVufXl2YbV7DYJIwyOW+xcaq7cOIxqVnQpD7gv9uklGPU7RJB6ui6NlDvsezt8rXZKBxkHjm79XpdQrwWFkgsxsqvzQVaAMBy9RaHEAaZ3yD452YQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750409993; c=relaxed/simple;
	bh=BCwR7tqgxpPlq0k14c9XCRuNNfsYUFl6wjQTWlE2a5s=;
	h=To:Subject:From:Message-Id:Date; b=bC1biZsLoGXemfA93a9OV/O+QTgwm8aIG4NrFV+WPomu8dT2T7S5bMgi34bPpHE9cT79M4NvnWAwH1qqkv0yJLZOf9JTLyTiUH6BpoFhP+XeG1q614DwwNC5G7DsO23M9/YkbLo3vOGwnXS6vUQdaSaTT5KL+vlR2lFXx8RgTYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjMtreXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjMtreXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDEDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750409993;
	bh=BCwR7tqgxpPlq0k14c9XCRuNNfsYUFl6wjQTWlE2a5s=;
	h=To:Subject:From:Date:From;
	b=bjMtreXYL8dGEuz34OWUM21Fh4CTMOxe3csR1cm1YoUjXWBJTULhVxtGtUfokI9lE
	 QT3AhkOYTv3jd8IDzGxKWBSpxb8ageuDZ9yA5Eqpqa6AeOE6D38asmpRNl7spiQJhW
	 Is781j5mEFtHewVryc9EMQfYZhnipyI04IukPzVBiF5jBl6mIkN011r+qq3TrWs/ko
	 1CWx/ClT7tGk4Qbe6q5YK+efxVgY68vD2oicNrklIzkhugPZZIG1l6BGfsMSKw9jKA
	 QfaY2dnLCqQtTISdh3ge6O6Y8wh0/0L4+7VvrxAIJ85rqpZ5JXqVFM2vBnH+2+7VQw
	 /YO/0QnXOSmNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90172C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040999358.11993.5343852639193664859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa0dc12562d9249f606a58d57ff66bf84113812c25d0a11659f3d6094ba8f0d
Date: Fri, 20 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750409993
