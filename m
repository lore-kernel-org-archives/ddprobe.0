Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84A3876B0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784752174; cv=none; b=F9gHVIbfM0YL4H+AwvudGiHKhSW4goRvWUlb1eDrZoIKMfPz3eIKIzkw1tWJynG00SZpjgotqVx8oAW5iqLyl/c4MoxlJayqno6F3NTvf9mR+AnOFUvuVd/+U8EiMViM2+d/1YyRgt99b4gTTQJXgS9U1C/bIsJhXS1mgyhZoa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784752174; c=relaxed/simple;
	bh=84e3hxB2KOaSSrZq1mCsjYFTbT3WcYXrLO8N2SKtj8Y=;
	h=To:Subject:From:Message-Id:Date; b=bqJSjbKZiren7ZCrMu3oLDNQ2hwFBSJnsa/kvdObR5Mdx+75wuYvgnZRCepDriCkdCPL3K6Zi9Yi6WLbfwfj6EYqfthuy6Br533bAHFPeXc755D0CapBwh+p8yUJ4AO4X97p/KWtzWLcy/0u2tohb/ijXEVVucUzX0FXx4gPQ+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P45wvVaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P45wvVaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE85C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784752173;
	bh=84e3hxB2KOaSSrZq1mCsjYFTbT3WcYXrLO8N2SKtj8Y=;
	h=To:Subject:From:Date:From;
	b=P45wvVaPAQQOSsZTVHxMc5ej8/osP/O+ZKnvU9RN0tlfMRnJlzSV3etHEiRGoy7sm
	 Sgwq0vIX7ozLL50ZVdKRZ431PKArTiAlggUuHor0TrIWR3/jeM3qPyRx5W7kgIopOs
	 OUFticP4uWfZj+fjeP2MultGzh/UAP3eC+Q0xo3MpAZI/Fe+cG5EpOzf21daEGOWy3
	 nZFTm3U5otxseT8MxmaAHthbFVwttKG80tRvl4ifjT4vy3uMtn3yhxUhS+drWqRyYQ
	 Lcu7LYbF5py2+Q3jMQkcno3Bs6/fDxr9VuFkx/CCoMt40PucDoyuSUk4xSXHkk2PrR
	 e6Kibpevjc+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C8C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475217368.9092.3244082893302578699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d593bb4c0519b81eeaa8d93585a9fc7a381b6ad414b9e2848d62b396365c9bd2
Date: Wed, 22 Jul 2026 20:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784752173
