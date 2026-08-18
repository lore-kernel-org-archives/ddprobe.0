Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD9D3AFD16
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787028034; cv=none; b=iyxAXIbBUfoc6giydxS+tQW6OlU7rFl7fiIqiTqk9SG//6qOBrUSeuqPWH6pC8NPSvYvSZm5n+io3+ptfcodPHE5CL28E7p/RcYAWQwgV1fJ+06PsIUZ9Mic0wLKhMa5cX/FcgWBcGSkmm8w1SzGsUd6nCdAltkqKe4liBuoqgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787028034; c=relaxed/simple;
	bh=OP1GchEVxbh11DxYEVmC2FC3olxUseo8UnPV3ML52qw=;
	h=To:Subject:From:Message-Id:Date; b=MsGWs3uFqK6Xn6rJwFhe6PfyOqoW7JhUFnr4BFevZglFd9RRb9smowUbyAs2bfI3LX++CHFaj7Yb8zK0uIfKuC+75LBUYh67Q5sIjxV5RYYR2Ls5Kxy1osquCs8+zXoKVh2hz1a25oUvbGQefkJ0ZmvW2J9ytcXozLn5cyO/llU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwdBVJkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwdBVJkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F0FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787028033;
	bh=OP1GchEVxbh11DxYEVmC2FC3olxUseo8UnPV3ML52qw=;
	h=To:Subject:From:Date:From;
	b=ZwdBVJkBL/k8uMsGQueVVmH/hRWAIDlClY55x7/2+3VO8H25cF9nNl+bPyONLiVUz
	 EduT9TBcXhGnM7rrOcVSYDu7kp0mslICrxfhyckXCATn4up7PpzaOWMUvjW83uScL4
	 mC22wHFfz57F1wKA6UT3auw4eVrQDA3Sm6Vrljqz9106Q6sIuprTMyrqRxUIEcyvES
	 5kGl0f4U8r1JrHk5zerydaerBH5F/WkRTzXSrDqA7696VYlK3yCO/8OYvMs/vik9id
	 CiIO+WbkIdXdGdHnzeLsT7sBj2nsJjr9aB584EbT7UEAW4bR/ig4ifgHTAYnQ6mbdk
	 PV7AXcj+KYgmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D4C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702803368.21722.15294888181110579933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ab43ebca9fa7658cdcb5833878ee4c7e3da15afac099104615dd4690c0658a
Date: Tue, 18 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787028033
