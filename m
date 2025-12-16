Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754BF3BE559
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892034; cv=none; b=uJRpscYbHLLfzDgS4LeA7Ea1f6GMDOErrKrEUMGUZN3xF94e60kReysG/flzL12pEBnaP9HrPqnIHn9Da8NZgCLukQtt1cw8MSM6jv2LzG339AgG7TFFGHjbJsCchE57IIqZwj8c2zvAg8rZlsLIgoq0Q7DqKrOgdqG4wQZXJQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892034; c=relaxed/simple;
	bh=ZUm4PP3j+2XxNlffRy6xXM+8iuUo37D/KpNhcN3Ma/M=;
	h=To:Subject:From:Message-Id:Date; b=YUHmne8ChK+Iu41eggA/OoIjIjDICVyGFt1AZBj8cyE0K3tQ9seTwaNLs4FsaQMyspbUgsQUUrud7p3hs6A2JPA/VmwtWJncbBlxT7NONUttQVVI8/7oOAJTdqHQUjJ4sPDgw6/NtANg17tbv76EUCJJbBNhnvZfF4hpX5HeRXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeP/NrE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeP/NrE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB79AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765892033;
	bh=ZUm4PP3j+2XxNlffRy6xXM+8iuUo37D/KpNhcN3Ma/M=;
	h=To:Subject:From:Date:From;
	b=ZeP/NrE+tPkSuIH5aqpv4R4IYmrD63GUbhkRjs2Ejt5jecHewvyaa5UU42vd0KcXS
	 sWpLozuZJuqCAyb0ZZuatgM1aa3o6zOgahujmqBs3DaJpOePqocif58qI6eajltHKh
	 TbJZe9UpblBZYtBeiY9nwNl4BtQaMkXx+0WNReWigbYhQDhLyIV/bjrdWbJqfZ+WsF
	 b3qFTAz5r5RHrtFT0ULE6x9IL+mr5+PwzATip5QX3sYlK7Hj7EHTq1wxKjqWqHOMLg
	 NptsE/SrsSmfE+IWenqXJam0u8wmy0AadndDdW+x8tL8kObmskzsJfOCp1K+v80iNg
	 cOHBN3X8WtYLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EBD5E15A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589203359.20827.17762654193684640736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b59e4e0354616a7694e1a66df99b3f310f7e5bc2af9a998181d84c59fb0cf45
Date: Tue, 16 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765892033
