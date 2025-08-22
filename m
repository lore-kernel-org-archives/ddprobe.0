Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3900B246BC6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755865794; cv=none; b=NcGpzLaSC4KGf5v2QS54rHy2A0Q3q3EbA2etFmsYukRW2tqbNQUAMgmlvNQnjox8hH75oUxv6kmQ2vUJ2VSm8sW93NDESfmo3fImkB1E0xusgvx2fWBDrcKgzWEx46rv2NTNEsmICufVQvGN2JWaCuOb/1PDx9bdh7/BpmlnmAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755865794; c=relaxed/simple;
	bh=vI5lTGmxTzqM+4UzX/uuLB5Cfg3HZc+ICrKufqNaBsA=;
	h=To:Subject:From:Message-Id:Date; b=GcA2Bc28envyTQmQVArHm5GsMrqZMcfZYSwTs3D2sCFE31QsOi63V/kzqr+Ah4D0oPOPj4QlCBRnUhyx8bGIFX16eb0iMcxcf4ep3xER1NZ1o22pB9Kz6NfTBJ8eb2Uv0b/jS88ifFJBy9M0s4xYZ0IBEOqL+6cEVDTqYMWiP8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEU/zeck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEU/zeck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F945C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755865793;
	bh=vI5lTGmxTzqM+4UzX/uuLB5Cfg3HZc+ICrKufqNaBsA=;
	h=To:Subject:From:Date:From;
	b=OEU/zeckvapElhxrq/hi7aTbcsc9URIuyG1+junv7drRbb4CoSaT5aEM9a8xC2d8A
	 fm54oplYmRHdvcnJxkyk+6/dQePD/FaD6eJi6rVgaVMlXJdA347zPbdTz31p0rnvrH
	 3+A/bGx4ec9siNjVv8lFjpSPB7jw8q5Z2RqX/b0wK9MkFWVdpxKh8Enr9LlkNxes7h
	 z+G32g2GnmGuUY0A5Behx732iihDppOXh7ENbcivPtfV9L4Bz52bFG9JcouMy1CGzF
	 tnFro0jBBpzgjJJ8QWmjpedJ/nztXsxszneJkKFIyx7/2yTVt27akdFrCBACe4rc4y
	 jycKLv/qSO5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DED3CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586579357.20291.14649715038295247598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07e85dc55aa72c33f8432a9be61cfc46ba343cea788e4d5fd8f16927c5310d8
Date: Fri, 22 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755865793
