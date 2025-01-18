Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5360419E979
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737239154; cv=none; b=LK5VWmVOtX2zM39IdiAuxIjRHGht4T9417gy55o1NFZKv8KmuD/a806DoaYpItXQ7/v44dss6efOfQWJU0+Sj4T0N+WZtAgRd5lgeLoe43Idc1Dpus7k3EsyxcYQ2ryduEmUScP5ihS8rLafguM3Eak8Mn8v9pas9le/SfZmp0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737239154; c=relaxed/simple;
	bh=VFB7Q9mfK0yh7jEp2zv5sc5M7P534XUxHtI4L67l8GQ=;
	h=To:Subject:From:Message-Id:Date; b=qc8OecRcQ+TxaZ9YtLb3YBQ42O4Tq/9in2RB1AjVpMH4YjbGbU4BCbpqhlBY6bh09/du4Yl3O1Z3SuljH6iBJqpeeXw26wClGHXxtkV2ROL7C1sc9uSMR96skZ/S5pWtLdJHdtzQiWa4ixiPlUjKTNOKinIki6Qbnb+UESEnzoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZZsXW+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZZsXW+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF163C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737239153;
	bh=VFB7Q9mfK0yh7jEp2zv5sc5M7P534XUxHtI4L67l8GQ=;
	h=To:Subject:From:Date:From;
	b=tZZsXW+yZw4zoL/5qjdIJn9gE5FUcf540HgRk5mZFSOHCMYD/C5Iatk/gkXREUXHq
	 JjONOCGOKfdCST1Dtd/TAUUP3Z0tmyFuXFylrNP/EEr0v9xNFm3lvN2uTzDY9zq9qX
	 mpU3kKJTCoHjdmZbjlaOB9c57O4z7AuilI++B/GecV8j1eVXljQjXesJFxylG/2adZ
	 eKmwUyAmq7jjvfuPD48wWLLgQnX897OsdnpKbPGglMyMDz049pivedgoG8QwADAuhE
	 a96RopbhfOJVqIVdD560GNfGDvRczGXSx3qKWPaTsOyxnrTgBdpkQUV0obnBejLRJJ
	 95Pbw/zWbO74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3594C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723915359.19931.6004576849585359648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031ec56949f08ccfee4c8824c7f5eb4f0bc9cf8be4ffd7aa00989657196f278a
Date: Sat, 18 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737239153
