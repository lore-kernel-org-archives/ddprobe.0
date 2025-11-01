Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2341E157493
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761979794; cv=none; b=W2LkArVdmF1sYtaqdSIfa4Hj2UuhnJuNRA9WF/qaPFFaoW1s3ISxfGcjR3w5BbalbBesFjrr5CO6TGQMKmX4SJ7oqhBuIgcEMKsw/9rY0ap/VR8a7876+fJ6kSBE+fAiIV4IrWR4mFilAjoqfRhj5GH0BMQD74+PdSZ0Ueic38w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761979794; c=relaxed/simple;
	bh=PyEeQ2AYy5uQ5eYfrSHGUSUNQYwU51a11yMEEbApOtk=;
	h=To:Subject:From:Message-Id:Date; b=iuX5RrZ3jIiHNkA34uLQl83FrFktxkGLtOTE4XXdA4n5IYecFJmVW4BOfgM5wNtBsWcA/D11ebe5L4im1LEsxQj2TKRd6Jq3lg1uYMoBPIpJITDl6bGaZ1LPqV+z3SGTg6lHZ7BxOp1KLZjk6U4PibhBZNJmKGjJQ7E5kcsLpTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZxNF4lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZxNF4lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0242C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761979793;
	bh=PyEeQ2AYy5uQ5eYfrSHGUSUNQYwU51a11yMEEbApOtk=;
	h=To:Subject:From:Date:From;
	b=bZxNF4lbWJwiIgzNeqy7HVd4m1m32QvogRsl5sH7aBOD6XGNNWniEkMc1wpaAmjf0
	 ANQt4faYFzvKTChudVCb83gbXlDDyJVBmcrRhOMYvrNu8QJ1sgcvYoQC+XAzyVF+Fn
	 sMhr6pZTNbPOigEHXAynp0yLkzhrQesiXAB+qAW5Y47ug2KzNnwNhv32919/VrWa+f
	 2AZJT9jKfVxQ37wPWHQ1EJeaPiYJWgPkumnNJO56qSi1piOtmm4Z+l7GWBYj0V829L
	 N3h+ufFBJMhP4KSGOeSopOJ+1JtGjKzPeP+r2B/K7HoNLZRu+gDdmZLWa56/8mBiNp
	 OfvDvKzieoNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1ACCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197979363.3291.594503204991157881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615c2e5186bbe4f721eba5eafbfc12ca92ae18c10d3d2cdb0b6245216d1e5b53
Date: Sat, 01 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761979793
