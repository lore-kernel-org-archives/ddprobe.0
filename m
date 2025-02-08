Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7DC17B4EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739030754; cv=none; b=HxaNFjFhyf373RYqCt48XcbL0Ntg0eP/+ouYzflwC88TpmDoF5zhMhTrLTFaHeFuBsfXUt4gCSP0B0VTGSksv4R7I5m88+clwmoTpqKBAUnZyMAQguUxaIw5nzW6ji5Dg8sB7L0JRHOTRNoEvhJLoTsxap9/fJqC+gQnV6diZcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739030754; c=relaxed/simple;
	bh=r7idQGHzXk0HXVU0TdfNKVZIBToh1MjT8edL3S/anoU=;
	h=To:Subject:From:Message-Id:Date; b=hkV43siFNbYlqaK97N/eXUbJoqUx3Yfjdz/ViIr2rLNcgwVGxIBYXx9gLYmoK+qOGQhYQAho04PWjikL9Uae/RK6eBELQVq+ocz9laGYI/PQyXdRAQFfNZKm2SPqp3ZftywAYF1lbKHRySrgooNBKfDQr1nmjqfWj7Vbo0IQm9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9RWg/F2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9RWg/F2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD19AC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739030753;
	bh=r7idQGHzXk0HXVU0TdfNKVZIBToh1MjT8edL3S/anoU=;
	h=To:Subject:From:Date:From;
	b=V9RWg/F2l+H++aReZgWgd+pRRybkUvCNx7rZS+Beqw3vBrtpCk4fJrMVQ359/qpLh
	 q69OrTI10vomWJFNr1ARhPbFBS73IwPUTwpMG5RI/gPCHDmN0/ZH4BZM0pBJ9IYbF6
	 nGnC+gXXQ4FzAo8XU5bujQaLP1fwgd5coGiu69KGY+HP+soDSvxbgiGGTH9QJUligO
	 rGBX6ELkZH7fRDw26fMyFa8DfF3JKmYYzerzIZsCGvkIDmO/Ud+0xs2TJlJaZI6kAQ
	 rTTm4ltsdr/kQgpq5fhftw1yUO928k24bkDxJBrXKqUaf7VJpjxzAjfoeimnAhAV3Y
	 CQ2Ggvij7r3+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A8C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903075359.23525.7180840924617447758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66128283679422f38194c6d1440bc4e617b864e8d0044d0feff6b5c3fe3dd115
Date: Sat, 08 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739030753
