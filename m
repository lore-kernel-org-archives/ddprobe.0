Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3272110
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757290194; cv=none; b=VsYYJDrORKUAl2S+1W5CxYI5tqbnC6+TmKoG3ZixSTeIe/Nlf2xstRB8GtTLZP+BV1Ede+wzXemSLDKVzZvPiB3rOBEVmIkiVwNxmcJrYQjFD1Sk2E8Tcoq0KJxIZNefcFCLSeDH4l+2LfMiZcPSOGHGl3a8Bz5FhhCLP0p4hJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757290194; c=relaxed/simple;
	bh=bZsr8OhWHRvc8gbZ7IsVtvwph8z4BDjTQv/VA+hQ9yw=;
	h=To:Subject:From:Message-Id:Date; b=PYJpyAEivUK1ZGrwzf8TeeBNuhw67nGzZ4j24RwaoJJVTPSOcb+aX91tLl/J+j+e5zcLHyJYoEo6l9emh/0q6dFRterVm4WXjqrZvihHXIayqCyX31Ede6xL9DsGjElTvBs8LA+DZMLm2yEHgM0Wc4ah4nGk83RGURsm8fajP4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihIA3NZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihIA3NZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757290193;
	bh=bZsr8OhWHRvc8gbZ7IsVtvwph8z4BDjTQv/VA+hQ9yw=;
	h=To:Subject:From:Date:From;
	b=ihIA3NZ1jDjerDjP7CCS7JtAcsknEif7j6H16QVJUaQKW5GhUDD/QGbv0PyFuNqrt
	 BNeoehVOj8UbKNmw3ee0Zv+NDgS+MSmBzvbDHX4p9yIcytrVWchnEe3X8gTN7iERWT
	 Qt4wa4ASDIVA/Yu4FL+iS92Sc9kazOI+uqbnvq5IaZLKxLrdd0uCzRSpBfLGZz7sjg
	 eZtF2snJxKywT8NfXp8V4mk/Cf5ze/E10bU3s3JsSb9xvM9ctfCnG8gjHxOipQg3DE
	 ClX7lZHMf6LNbMVQ4C2GhXot/w4Odjgp6nKCY+2InRVZppVFdT1nUgqdGwhheYMyxb
	 FdEsl+ae7o1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD2CA1017
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729019357.7785.16259782058059117728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06873f98964f40cdedf1ab2c6cc728bdf58f687c5a9d4d27ece8d4f6449cd50e
Date: Mon, 08 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757290193
