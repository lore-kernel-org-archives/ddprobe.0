Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53733BA29
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720666643; cv=none; b=QOR9D5AP677LHiviBnziw2xqdfKKs5X+Nmh0IdW+3sr+UeEHWc7RfY/OjsKMIm3/01B0kQxiyjmkqnPjXOKupKl2fnMnYZlnUeHAlQ90YdcCViW2MlHKdyKLQD8uTxmE4CWRxCowHDvb5lBRUONAnSffUhkMyvxeI4BFaLpbja4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720666643; c=relaxed/simple;
	bh=LfXQ6ilAmQNvnK56rY7do1zCSc/vjhRdquy94Zu1Dnw=;
	h=To:Subject:From:Message-Id:Date; b=R0dQnObzg6BEIuEykKuFYAmLH+uP1BpOG+CHsOL8YQc8Ye9dNTwnadfELGIPHzytyjtokReTDglVsP7aOKIyJXqQOyVk9T1sGeHNHmgzvgeFE1RJ196d3AYIPi1Qu9483f2yUxKByWjJrCTaS1R/x6/34F+Y4M7FwDDW4F/SlEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5bAjsOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5bAjsOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C47C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720666642;
	bh=LfXQ6ilAmQNvnK56rY7do1zCSc/vjhRdquy94Zu1Dnw=;
	h=To:Subject:From:Date:From;
	b=M5bAjsOaAeGEF3HTvHs2AH4A8kj3S+3dUcgVqNfH4zOvIT44P14CsWGK3DIAo8ZiW
	 XavLZNrb0pGRvJM0JkMuVuUkJMYbkEalCbAIhn66EZUnx/CdZ0ymRa42soesH8OqNG
	 01c+eT+a9J2UKMb4PUjbBydQRz5JLG1tnJXgIsFNOvAC6JdpoyvH4763suYv+eB/R4
	 qGlsCAaZxI8MscPUyK4CFZ0jmQWH7kgGFH/7UW8zcGX//CRpiYzGavKu3ogSnW0h2d
	 H+M561HjNpE/9C+qEsCkMuJrY4YwN4j4kQXTHx0SI6ukJLz4CMXaIVQmlajIOeeUS+
	 XNl5qg4ZwoR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD75AC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066664279.4346.12955794468570296947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb5bd198065219d59e4f17c0e1fbdce4a1b8c65291a426212569591c3556ad5
Date: Thu, 11 Jul 2024 02:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720666642
