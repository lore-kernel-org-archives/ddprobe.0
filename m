Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C901FC7CF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729002354; cv=none; b=rJq8jYubNafUTPJA6l6f8fHKkermzL3oUzNj3Lv4Tf+AmY5pz7UVQT9sCIUnp7yRQttjwvhvDjBDhR8AwF+9PCP2RCjoVg2bUKz3QITDhYZZ4BpPkwywfeWvOyLbCky76o3gliaus73tnVlgj9p5yAMXAgTwOQcvKNeplJt3/CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729002354; c=relaxed/simple;
	bh=uJkT4nNDttumIKBCaC43FEu+FvDWvIELXGz7PRbdCYg=;
	h=To:Subject:From:Message-Id:Date; b=B885bXIQCbXzA0hOQ9r56fZD7bd+FRVIBb3ivsuRv60szsqGcUDEE1SN9wW41s6yw3scFih/Q7DuiUgq//z73S7vvuKhR2Bj8Zi3NZHfzCjmfdhKW8wJxmO2CB453O4+szfHlg36o+0uJZBN03/zVIwg7hfK4L7thS4Zjmi0Ulk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXprOzjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXprOzjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBAC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729002353;
	bh=uJkT4nNDttumIKBCaC43FEu+FvDWvIELXGz7PRbdCYg=;
	h=To:Subject:From:Date:From;
	b=ZXprOzjGUsVc81Go17u2lxFlUKxVR9hnK8dNAdPACE9MeReqTRWtEUHr1zk2agbob
	 HjSfA6QbqQG402Il5BkCb6pxClZ2O5NlNwJfeUMbMVPNNnBvc92HEp3b4B7O7CL23k
	 w0szI/oDN4ebE0U2/c+jTjfHBijZr5TxKnjebvv8ck2xLJ4qLJfJgqUFCoj2dkmXm2
	 s4ragffy5vmRyE8z4gHwsFlMUH9pHhniUr8FqdNmwkOdyoIXtoFWJrdAUDTq/5lknI
	 fkFqDuPSnzvQ9I1xDiBLHci/fq/177n+E0Uakxvv2SWXvcqcOLzWVQ8rdURUm2PJM9
	 0J4NqWrbawGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A67D216B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172900235359.3070.11781088831715214784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835dfe7609148551d5f28cf990c826a582ee52e4c1892f51f184d1e2a911b86f
Date: Tue, 15 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729002353
