Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6835625B30E
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766142234; cv=none; b=UEgSdOUyssNeWE6/F4VFsh6HKCIKqgSZym90ZAO29syUDw+7HKxOW1fN6FriLGo6Ua1LPMv0lJlbePogH9CCjsn/zVJOOG0x9fyEnlGVxkUASdwMub5pc6NTEF9TGOZtClBSbMJwcz7Q9J2Et1qSra5zYiPBp4r8G4i10avXgJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766142234; c=relaxed/simple;
	bh=S8B3d2cxdUwv7NSqcjPR7mFlIKEqXiVOVQ+peg+N4iE=;
	h=To:Subject:From:Message-Id:Date; b=mZR30JzptmPpU7E5U7XolniB8si/mOcrUD81YK0oLfBr2gc6KlRKfkDXMk89rXCOWTW+2TCHcPKuWCl0IuCubIMZICkuUrpCdWm3C7u/60UTjOqODGuOvAUKiuv7j2eMRLuR2tYQGZ0YB2US4No/q0ucd8Y72VMrugMl04eAk+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGwWmEY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGwWmEY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4819C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766142233;
	bh=S8B3d2cxdUwv7NSqcjPR7mFlIKEqXiVOVQ+peg+N4iE=;
	h=To:Subject:From:Date:From;
	b=uGwWmEY+Y3s2Gv0VkK4PsuLuMfaz0981YfY00yViUArNQDFyOqZpMEG8Tfz//VfBg
	 fwTW5TBRTHJmnYzzgqR5OZOdiuZvtzH2rBkM+aB9Xla1IW/IGWAaiwb/79JBn43Fh5
	 I853EljibCBa9J0HviCnWACShIz2aqtyf+wj/+dRA0tYhqxa9H51Mje26aeQk4VLFN
	 NrfDqsUSV5vXeSG8//4kvz3C6oIteSV8QIk78ujH0yK3FuQDM4ntAksnOCvKFkV+Gr
	 t2J5qGf1+phu6Vvc8/v9Zbn+7NQhwJ5nH45djl9raL0rctHjT+J6+So1djfGC8AIb6
	 77mbO0ElvtyVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F64D767D8
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614223359.9154.4265647238237507790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50155059f1441bafb23343d17a4a8e88290e66cc62cd59e703ee0c0b6617bf0
Date: Fri, 19 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766142233
