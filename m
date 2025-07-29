Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D7617A2F8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753820994; cv=none; b=nr7DiwlTyE9/MdefmFpEPoq4c4kw0KNlCOPon9TXGgn9mV9DKzMDl5CAeCZoC956jYdDzr6HDs9aUzxQFqso0nS4UBtPxnELvIBHCiH1+qWHHnyjve72knYcX1Guhi+q5X3l6etc2sgAsFACpPmNb8d7K9WZHHdBZZjdx7QP2qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753820994; c=relaxed/simple;
	bh=hpLMZZlFIJVWgsOwbTKXWtALZDLrkYJQ/achjLI7E/U=;
	h=To:Subject:From:Message-Id:Date; b=lL7/wC8qYIdUbrjlAc6uoygNZE/zDFGN3E1Gre66NETVYDMsFqP8IE89DypZ4Vthwq80N79R07uTNsCjWvn3Av3LB0iF/uuSRdVhAHydb9M2p0BoCxZDYMfcXAQD7HI+y6oQgQsoqRAqnSic5uttlUwzPdT8hTMEMwoPiQ5exzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYq9RA9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYq9RA9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE01C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753820993;
	bh=hpLMZZlFIJVWgsOwbTKXWtALZDLrkYJQ/achjLI7E/U=;
	h=To:Subject:From:Date:From;
	b=qYq9RA9/RVl4m7neEp0xQtgG//E/y3M0fdxTBD7g6GrTI4LKZ+A+lg3yrnbuo3YDb
	 G5PTX3U36Ipw0KY5hfeSgpCn8+fFW0poMgQ9iJYP84tI7T0P+0uVpDiTk44eUMNqY2
	 3UZODm8S2YZCWs3TaG1pgLbGFEMHaNljxMHQ38CK5C1SI34F+PcfbBX+CH7N75vrol
	 vqeZbXOhp4NQeq+0ZjGSnHHxMnUQhwFbXBHlWSnj9ihwXkCPfxjvr373ym4bDefR51
	 QP4e/AHURoq0P7Xeh3B+x5lL0YeoQF2loQHJ0GGGlZugIzLH6JDSHI4Fwn1ZW0cl2z
	 oCTzCrWhnZqXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B05C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382099358.17615.10630730480631817351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798053cef6bdf24b4b7e554edebca5597d710044fbe366056d6eb300425b0b04
Date: Tue, 29 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753820993
