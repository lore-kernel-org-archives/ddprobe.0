Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475794C67F1
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788447634; cv=none; b=OEIu+JjZpU+PPutCpv6igeHpe9WZGeQHkRV+tAaptTDpW7Dig1IpyvLfxM0ShnSxrYFq9EmYHKnit6i+7IHpZvmafhTqTv3m6g2R/NRKHFSUWbxGbfqbXDpz9z4AMpPaG2rbG9cGokDWoNajq0nmRQjbtjKVQITWNuNB3srRLXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788447634; c=relaxed/simple;
	bh=DT1EpPwcJYSbFcI9C+2e9DIxoAkkCmJmOCF7Xullsys=;
	h=To:Subject:From:Message-Id:Date; b=oqC0Fa9GP4osTuAO9YcqC/JYXzsh8FgLEAcjurbpZlkhidAzsUaIsyEUbDip691QeSexqSIlPJBtWsYyszUdaEWM4/0uIRaIzQIKUhw/VBgWC1BVUBgM7RILHyklIL/gdZC2e+hM7VBbWQ4vx/2uVUvMBFYXlViadGMGKOz/+Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD0D5RrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD0D5RrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE29AC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788447633;
	bh=DT1EpPwcJYSbFcI9C+2e9DIxoAkkCmJmOCF7Xullsys=;
	h=To:Subject:From:Date:From;
	b=lD0D5RrIna0o5W/wc/VxgIiE9xcEp4e+dTt05hAaQ7VnlHCeNy3KKr25ouwKNv07l
	 TJk/Ep7zqa1Wp8AVh5WxULG5a/ZBlytVMegoQrmchFemr7qR1K7z+fJn6irkSziHVK
	 EWFkrbA6ewQL/equDJxxTfFztiHIRdFDhUZxlt76W8ZEo1GhJj/HEvbpNWoZxC41OK
	 VwBOvUp8TWycWc9KqcNVaxiadY6Cv7zK0wm2tinge0bN5G3VcXmvUp5obxXmiKJ7Ef
	 oXkD3EzOH57fQBDNYUWbdGTCs1kVqG/5WrBgICbut9vB3Sq606HyFvTdYxTlxofvrJ
	 xhAdlUqgLCpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF40C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844763369.11397.10423055040674153313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07cffff44cce76504bbdf1c0a9bbaa123b4111946c98185987dc2db1efe0075
Date: Thu, 03 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788447633
