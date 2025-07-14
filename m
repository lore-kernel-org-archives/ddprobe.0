Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F761DE2A5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752470994; cv=none; b=F8a44TupX02/oExg7KTN3c6qCFaS5BUSrDZ4FpR1OrQLXzGj5UpCEkzIA7Eo/8Pz63Z+3dAH4SCo9Ft3MZc3hMhW1IQN6xryxDiNwr03pdC6cTj5gIJ0iiNjHV8lHsHbbEvJZVNBQ7uEp+w+1qiNLQmOaPTwdDCXuCrefuZXM4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752470994; c=relaxed/simple;
	bh=kxyoRJm/dtKcp9DDnQpiAOUMsgvpwrbe5gEnwVzyaVY=;
	h=To:Subject:From:Message-Id:Date; b=dZHlpNFaD7N+efkEa3tmMeBcdBzgDoAd3++2bwbMm38q2qQ/XOdsAtGhNIW1bG4jpnDiPmHBb/fznRVjV0LE4YU2clKmvjsOZaA16sZINj+e6yIqJrpQ7vqDBg2glTSOE6PAW0UG2LoPjfvwmD/W3KkZe1Li2Gyh20wc7fHVULI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzoq5jja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzoq5jja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F185C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752470993;
	bh=kxyoRJm/dtKcp9DDnQpiAOUMsgvpwrbe5gEnwVzyaVY=;
	h=To:Subject:From:Date:From;
	b=Rzoq5jjaSm7nbCaQmcsJ6VAFwHy4nFSQYsExwhSPjyWQgC/3qMk3o+zZT5eZGRBaj
	 pCsJ3lDMQsM0R9lBxw3GVGjzXnvNnSCyNBmpd17WSwu7Q4vgFK3RWhngpmuyeaimP6
	 IL8J/rMvUK24BzgYEgu+JN6YFEIzE3krRccj7osJvBh+VQEUzZHulcvEJ7xQjgvQ8d
	 ApXOVC8MZ+roSPOD086okFaVDle4kprYCoVeTAS9mBOuAXmI44YAWSoYGeLqidEWfd
	 FiA/1I52o23biPDDFuWS9d+TpFFyYX4IpXM3TMW6AQchOW1RDu92ij66dZTPuN5LCZ
	 aAKo+jhq5tyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E201C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247099357.7520.12953994995678986793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c12ef99a55fcf4467684934e6f484a721cc11d748f0585dc7294eef2b86b644
Date: Mon, 14 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752470993
