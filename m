Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EADB82485
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732292754; cv=none; b=TV58M/2vSUIwAacKbnSGoLibGs5HoilGK7fRWyWxB9YwoIZ/FdIvFZbBgN47tK7TKtlL9kGgJxHPle/D08BH+rmVQSSmf/miMFOZGbWNQcrekBBDc3DkP01dD5PTYJ/ptnWWyKmegS5QzCVcgCpxq6EyKWNUrgzgYou77iklJcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732292754; c=relaxed/simple;
	bh=sZJIsYSNrwnvmyS8lkCrJdIUaXdMs97jidx/A4eLCrw=;
	h=To:Subject:From:Message-Id:Date; b=WKWfL9h+eavM7xjUklbZoQun7sosjqIFhSzJk4KzdeKKjo9wrY9Yo/2AjIM2rgxjoG9BNbEvrhzjIe8QLK51ngvJ5KBzSjbfKK4ifSq3DUU8LO7pZ9OUoHLwhGMwS9/6iZoPbhLwo4A5LpCj+/sX8Gv7bWOyjZx8EgajNTAhAo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM+RoXRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM+RoXRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69ECC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732292753;
	bh=sZJIsYSNrwnvmyS8lkCrJdIUaXdMs97jidx/A4eLCrw=;
	h=To:Subject:From:Date:From;
	b=JM+RoXRDFiiWSqKZkkTzsMKqisUzdj3tL6dwf3D+9HfYjNw203JneeJNs5yFdhcvp
	 gUNkadGyGOvb5LluOPAtBBk17O6JGf8tCrT8fGeH16yptXQh6To3iBCYhtTPp+760F
	 ZxGBLXDRsYR/+VNNvnwut6OCb0BOWFcMg0BR+L/XnmtM37aNqOPOZdYVAdLYC9wBzJ
	 N7mBpbu/HJQP/0X44kGMut9k20DUaxWTESkQuPu0LiPL0w65zFmIesgKXsE9iC/GuL
	 l+FSWds+Nn0DsQzJBsZrlrblGeeZ1xeT0ljtsIgpVAmUVNyNVThELPceickeffinfL
	 Xd1yYLMmANwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D2FE6917E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229275361.19825.1690979774959772813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc12ac5fb45188c5c2fa73dda8541dc15b06b0cd888d6dbb96ee0c349aa1f67
Date: Fri, 22 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732292753
