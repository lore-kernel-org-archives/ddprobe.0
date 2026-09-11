Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4350032C8B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789090234; cv=none; b=Anv8dhZ177WSF+HMif7Q+bdR7cL18U3L6gTu3gxRgVqBLzZ9Oyk7qfzy/CmuxsU8zF/FZ5UzvgWs1IE52g4IGu2fwdbaXJO+1N6Ui0zty9mEN+IsbA6Owi8YQ+7O7gkZ0gKe34v/Z/ptFrlhi06sfIUpsIdvLOyT48Ge0esWDqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789090234; c=relaxed/simple;
	bh=NtTm+hK/3KjnVzdgzvSJDGorRWhaCiqLEkj82eMBXtU=;
	h=To:Subject:From:Message-Id:Date; b=OJifIvntF+HdOXbB32gvgCa6FvE6oEwZB6XE7GDCO/G2+rjLljsWj6XFEKz80XFrasHOQvgToPIsV8XbPJAdM5KIbuNBdeysvTJGM6j26JvXM3Z3hlUt4PP5UKZdt/GZvhJS+32hGLQPegrkdoi4MNAS8iD3yI3N6jU/gVMlYrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLlN/m7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLlN/m7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1901C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789090233;
	bh=NtTm+hK/3KjnVzdgzvSJDGorRWhaCiqLEkj82eMBXtU=;
	h=To:Subject:From:Date:From;
	b=hLlN/m7vobADhr4PA5XOlaDyxgIYV3jEwIgx8cG/FMJTe16bium9Vo7ZVu0pJorwp
	 4+UcUyw0Rv/8sAG1LvZSV9YIWjNUZ5QqT3CcIVNZ+i5gYS7GMctDERK8BTIpPGPo8v
	 ITPm+GCtmpUz3pokewKnAD571A7MkoiLOXWY+nYjbAWnzPXTQWRON3wT6WbJTZ8xKw
	 gPjBdj0Owgc2FC/4M7XwSXSPtnNVYIFNlARHnmAbqNA+tvGdKNDdJmjBchCIJI7Om5
	 9POi/Mv4yu1uT123pvrIA4acFILYb0xSHrMIUazNngi1Jd9RF7tssvlCXeTjfjxy/H
	 KgU2XgGGJtyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB6AC88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909023368.6041.1187757148250442475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1813cc391e7d5ec57df6a988e5b0f0a78c7247e1a2bc7b9de75599600c8c3412
Date: Fri, 11 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789090233
