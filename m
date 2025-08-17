Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A3E1E868
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755457793; cv=none; b=K0NAshLaSEjH5AtvLTAtr54MEl05mi4rgphD+opV1A2a0CfArlJgVB+v2Zor1hIyd7F/BDfnJmX4CpZpuZZQqMGCzNtpxTdSYL7l+DZg3Tx/9unK9HMCnnbGdnYFsSIqca9LiWQAnE1ONZCzKoXlIj7jHmTqvrs8QshRogpUhJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755457793; c=relaxed/simple;
	bh=gdgBDTAxbyDKsKYGY2ShCbCcmH5uj0R2lodu7DRWDL8=;
	h=To:Subject:From:Message-Id:Date; b=j5tPr6JJMgD9jRHPorOiYWqOhVlrO5BIfzS2rhjO7qWXGZkAdmNMWldhR0VkmzW6qVj0GoWyXhhXiCwYCoKKQCJI37SlvFJkskIb4cVNpxpQbqykhRtSWKrvLCBZmIHcxsujncppPAxb7/pdB1i5clN6VO898izt9KF+bP9G3O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cohCPVB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cohCPVB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5195C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755457793;
	bh=gdgBDTAxbyDKsKYGY2ShCbCcmH5uj0R2lodu7DRWDL8=;
	h=To:Subject:From:Date:From;
	b=cohCPVB6U3zsEq68hfE/h8OL/bmgHdv8y/oJoQY9F8PRwkxaW62xLK9VAUFedRffm
	 Jcpq6zXWzaI83piXuU8GjxvxkqNq3GLMFfsiJTP2msmdysqVsMhPxeMi8wIhTumheI
	 bztrNxyJOBFNCCL104ZN/HKaz6K0ByjGJbGiRMNO8OnQRNP9Pu7EMd4siL6RjAfJK5
	 HC5NjH20T0ABIHPW0D+jIqNo3Vr73kSrP52oRR9x9ENPD1RtMfP55wo0sOGZsBuD27
	 I8W7VzLUOmkIxmqZ+TKa1ZsYGp55rdf7iDw37PU0DOPI3T0KtGq8KifOp/nHWheZ3L
	 ENJSL02QD2ZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A25CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545779357.29691.8024901746647006034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da98f732e9162727b193a81103997fa9b662edfa511c8efccdf8963c9e608a25
Date: Sun, 17 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755457793
