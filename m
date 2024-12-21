Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348CC13D531
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734809154; cv=none; b=QcvFnvOEIPm4HDV7luncyj4EaYG3IGYaKiSy5cJJW+TtldcV8rwLksnTQc5Wk5/bJW4lzNC32ZOZ9uYzOe+4+HG/r4WwlubkEur1VhxtisjrkNYAEpYi/UbwSF86FmOI6QGcb6yS4P0eIYSwKc2ioL3TKpKv1yj2dxJem+IA/RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734809154; c=relaxed/simple;
	bh=/2fL5NMFH8cLAyxPISPY4WlIo0+YXgmxS9OcUSBQ8pE=;
	h=To:Subject:From:Message-Id:Date; b=CndFLXzLIZChFm/ZMw+9BTfzrYDC5gw0rvpBAWEmrhBz2V8sNEH9XqTzbfEWMx/VueFZGj+NR9VJmn8WQyEPTCFmn9NHlcFVOrmjKn5d7Q0RrbNYv/oxSsvxO7mss5I+tMrSGvAeoUJS37kAywFL6xE8hWHsL9U3Xe8dkTHzMAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsIk39gE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsIk39gE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38D5C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734809153;
	bh=/2fL5NMFH8cLAyxPISPY4WlIo0+YXgmxS9OcUSBQ8pE=;
	h=To:Subject:From:Date:From;
	b=FsIk39gEmzIKNfJn6vnFjmBHoaOg1wtd4RM2znDumJiJv5cOh3LRrV2ddq4dl6tIj
	 zyyp5+j4ZJuAZRhcX6PPOtbQ2neRZHYh8ltzChab6ZdEkcPACzaE+CEqAxRuM3Jeav
	 KbVmZttkJvN/4DQ0R6TKvh03iEx91zLi3cMB7dYufGMCOUwjIqBQUVtMqqdyO3jeuc
	 VD6pMvMVgCyqDWVmOaGNHk/qd+NZ7u7GsY/cBr0iW6PkE55G4f7PsVuC6ZUi0sg9sR
	 Hb5E1oa/3sFXfhZckkYytJ12oQeCEfK/gmp8hCISK7CusGBVZVRhJV2EJj+PZYyPNp
	 axv2jcRwzMBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C38E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173480915360.27631.380664448737822957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9584739128379f74548d5cc7af707e92fd913e8fe1d184b672c1bec9119284
Date: Sat, 21 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734809153
