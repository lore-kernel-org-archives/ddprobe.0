Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308F2F50F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745306994; cv=none; b=ResVrzIuhnGjpi35/v44tUcB+G7T8DhF0KzNhJ9V5OHlCAtnCa9JcCQLoBjmiKlyxbH38xu9KE0no68zumgQ2fzMJ+7yaHk+X9p0knaDR2Ez22qph4OUVXc1cD5FxtO9nGNrxRJ5Ce1XsQbugZudJdicpd0YoAzqv4zmh3Gn1+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745306994; c=relaxed/simple;
	bh=/ztdNvePpM/8v7IBqBo3xcQLIxT3+mzHBeEQ+5Iz2q0=;
	h=To:Subject:From:Message-Id:Date; b=PfVzfyf0PzhCkN0hIlSGpp0oASqcDHocz0QNQ4BXeTvoAz8zd1kHDLjenRRBYESSiBlUzHEGLdBMEwbOkl+JYTrnBi522aXfB2iOmjtSyUkNh9wQj+q95zUOAC0UG/HzR2XyHmbOhKpldl9Z9X0lis+Cxf7eZ0ll+PyDda3Fe7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcCgeT4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcCgeT4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBAC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745306993;
	bh=/ztdNvePpM/8v7IBqBo3xcQLIxT3+mzHBeEQ+5Iz2q0=;
	h=To:Subject:From:Date:From;
	b=lcCgeT4tbFP3c4ur0trtx2133YabnAkRuIp1mRnocegDeJobZm6Gefr/O0LNJrXE4
	 T5Y+3MGG0Figvmu4ZMb9ukHUZF1sIiXtV0dG5GBD6NV85vzOkTJLzDSV0IdYkGuldr
	 756Jown3h+xqdc3xmWOxsihDN5jM0uCwp7Vz7y2Utqhb/CE2AQKZzqsvisEW/+F4q9
	 xokt0CI0ISSCQUTg6p3bvqZmfl70SbiIOSBJna80y9T1tIeiz9RRUHbuoDwDoA0ru/
	 FSb+CmAysO1CEKNWt4YWiMSX7jaL4twisorZjmVKZiLV5kFSg2ICmxISbgC1Z1rLCi
	 mWfQrunwS826g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90808C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530699358.5848.11363853997543228914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f491f65b659cf75816f0b51aebca398a5ee4ad749b6bb6c771dc511e6a43d646
Date: Tue, 22 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745306993
