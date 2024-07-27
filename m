Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465AE1D543
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722119754; cv=none; b=QP5juB43Q1/OQefMLJoQoH28p/MBb3+j0KCMS60sYRzlpYAiN9Z/2lv1SNhAHyf7rQ8UokZanJ3lWUeu2XAZ6JLgy3tjzBLv0b/f3DUkpqYG3f9cgJ8/ud6ussvfUXwUtuVLjPviuHD6AH+ag+FMwevCkoqur4a2K4SboSoNq1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722119754; c=relaxed/simple;
	bh=PjW6Svjd29jHgj3D2qVInF/eWb5cUqI3PHZMdVMwJLY=;
	h=To:Subject:From:Message-Id:Date; b=i5O7s6dmspbgbFN2Azr2D33v9Fi+Cyvjn8l6CgkdAmB68cf1AuJQg9eRtvhYCvPFlbtKvrEUOsgY1RMOzMEVEncyClBzzR7YnBlwJz+vdfcMNl2GuRkGW6NsJV1fX0qZVqsuSNUumscpktSe62q0mU37Zaz8Y44yosgmjGatOwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOHbR/aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOHbR/aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAC4C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722119753;
	bh=PjW6Svjd29jHgj3D2qVInF/eWb5cUqI3PHZMdVMwJLY=;
	h=To:Subject:From:Date:From;
	b=lOHbR/aJqyRv/ZqofR0OPP/FVHrk4NNzJOz+o4J/gPBOgGjdu0bf7lDDjTFsbw7cg
	 qtFDifaVmcv6dJXagdZlHcD/LVHen9YLjfKAAnJnGPTO9wTkTZSrHBHikE3hxZETpW
	 CL8ryaOFCz+t1tHOHmPYGvM6Rv4AQLemSdo4YgiCAZWtF4fDAKQmnRdkLENCtwpVqp
	 PDdtn79GimZMqrWzcfT58T5jUGK2Rx+nD9LyHmJtv0k/WkLE3fq7S1Jtvx60+ajlPn
	 zRJuZUTVkOMe1BRsXW0O0yuVxn6+cG6V63qCxznZugBCVj+iheZjPM2NMlTWNOoYRy
	 L4R7LU26z6Oog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B1C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211975364.21160.66285569680275992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcfd8a3a4c7a18029d328cb48030296492ccf89a9479fca927e3386ab61d7f8
Date: Sat, 27 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722119753
