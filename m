Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434E11B2187
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735830954; cv=none; b=JBAidR7+/Gm6ilAr5kx85FYFkshok/09KS1rZcrQNDHU1hsWUrBrw1WBlk6vz+ozsH2TFnZBo1PORNcKmfm6XiXU+dvjKsZXxTVY0yRoCAePLCwsNJeuWQXx3gpPlBOM7dXLnnzlhc3bA7NdXIGv7bc0YV27LXJ3RekFEPUmrwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735830954; c=relaxed/simple;
	bh=ykwyuoFnY0Oql46zB8A0yWCnmb96BcZ8pwoOQZD2TkE=;
	h=To:Subject:From:Message-Id:Date; b=TMfiQGOdDdMLJkv+lh/R+fXR3vhgXhTWzamNmZeXxnNc0DPLMlD9ouDd4mcDdEPpe4O2ES236I9ZJ9JJw9GxW7+SxqZHri5B66SRgMp95e3N+9OiSwNlZntU0QpWmEQ8canNdmTshkW/8Jx63SOxSYf9yu6lEICL1TJjjw+Qbb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DssrfoPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DssrfoPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A6C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735830953;
	bh=ykwyuoFnY0Oql46zB8A0yWCnmb96BcZ8pwoOQZD2TkE=;
	h=To:Subject:From:Date:From;
	b=DssrfoPcezNtFlbxU12tNI5e6eWP2vDcWGhAOv1FnpZpRyZHGe9L7K+Zwn/tk4+Nr
	 hNnQgk6o3S3W6+MwXLIyYzrtvwT/kcj5hVdmYFc9Ly8ZZILWLGCfK8OMOueRwAw9dp
	 HOh2oq6svM8JyGnuVnesyLQPYlEI4HFJiDUIVnpIiT7dY1Q7peLdP2X29H/XpEK5gD
	 88n1mAyv2INBPi/TQhhFPoSOYRn95fpAE0fY9F6P+8PGEKpH8GyT8De6Q6VjV7kls2
	 4m1jcNN8uPbfUF0afN5ameTRii5N9cYld9O0++42li30ozIbqhhpqETO32HBGzZFQs
	 ROjIb4zdyj1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B30E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583095359.25316.3165960472652090371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685d7f0ab70ffd9bf7830c541b77608effb9ce31e2f1494db3a4dabf7d3b5d3d
Date: Thu, 02 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735830953
