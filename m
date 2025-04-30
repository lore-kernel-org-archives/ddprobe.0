Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8CA145A03
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746049795; cv=none; b=J/kqv9D5CndmUAzelcUtq6hQPy9lZHE68vr4c8/zz+DxC31a0H9ZnKO9J7FKZw2psp8cfYHkq5vIr/sA6RCpPf5T47N6H4LLXmwmE5pynF4GcGukxPPsEtj2hTxrWURfCU6NaYYOLCz8gCjlPoOptWOPEfpZof+iNZwcV5WV3mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746049795; c=relaxed/simple;
	bh=QRkv40UG9qjnj5QU88eWIV62gXwnpFVYvOFM1TXaIx4=;
	h=To:Subject:From:Message-Id:Date; b=BZLsoN+r14zi21bldrJE1wNxH+TuVJ0dnMymFEu79VOut0semL7yP9f2qS8B5po2YpGuOiMLnoyo9KcCakfx1xVZzNQQy0RDd0ueOetI8nVgrUntyrxhL2s+ootw/MGTGCv6MNJNb/VSAAcESTRcrowQ7vpXuBQBu/A1SGMuJKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXElbe7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXElbe7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6B6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746049793;
	bh=QRkv40UG9qjnj5QU88eWIV62gXwnpFVYvOFM1TXaIx4=;
	h=To:Subject:From:Date:From;
	b=JXElbe7rCEvc03UGsImYyEcq13MV6EFFTaQBVxAXCV9EBqlH4NJBtjSKL/nLSnlrg
	 E4AH0A4Omc+PACvFvbuKWpc+UFjC3cdX0K6QhVHP9Vi+xoh06tt3B6JfZqc0bxELiR
	 YP5RYNjvnUx3B9saLJIXlNoM20Z/5G9gs1jVV0yoGEo5SpdfNtP6rH3WtassTkuvev
	 JRcoR0EZCMP2roBX4Tv61XOshSnNW0mLA8vSsJIRNGJgQ3DoqQ8+tDx32r1/3chlqL
	 +IU+FWl6TfWbXq2sYPfUJ1ikE5C5/8wVnTW0e3PUFHOEeHY7Z8q8D4TACyZ3tfhBjc
	 gjzY3kAuiBAfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B6C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604979357.26420.8170277633253719240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3f1da2d0beca6cf4fb40f64608464f91e652dd0924e51d300bebd0ec2fe821
Date: Wed, 30 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746049793
