Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1358E1BD51D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727780154; cv=none; b=soCMMmuTkUeMf2infwfG1axi1Gj5+b1tDE7e6LtqVQPqEKkw+OcrBnPpb5pVehNr1a47o6XN6GF0EBB7+1L65qQGKkAIwyzKanwlDMtJf6bPLHBmPYKEVw/NUwsBFXgv8Nk3O8bkAOMOvlq8hM+VM/BAdA8OzQhv7miNmxYbMpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727780154; c=relaxed/simple;
	bh=gMOd38kfWm/x5U5nIYRYoKQsando9rERu/8lmuekPYM=;
	h=To:Subject:From:Message-Id:Date; b=nxuKr9j8WmaDBmKccuw92b4wqzNgN7fByQnnBFJf+0efHPy0Ww3K522JV4PU4/HBk7oAz1Z5IALXeEP5tgpeuPX8v00PjjNAg/buLhwJ6jLYfSwAsMjcKudWdpSHRREH8h/zPWeIBq2ozE3VZDA7Md2wdN4Z/B2Kx2vUvBpge94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQxtcES9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQxtcES9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC84FC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727780153;
	bh=gMOd38kfWm/x5U5nIYRYoKQsando9rERu/8lmuekPYM=;
	h=To:Subject:From:Date:From;
	b=VQxtcES95ECqOZ8qaYD7PKNqCfvZnTvHavwPOqs9aIuFNbWhCNV+Xt4GmKCix3YpG
	 DOzMC4Drpn+iswtbfZ7inP0lj4Fk+JGgqPsv1CbOMa0JVrpva6jLll27Yb/IdhSXk8
	 DZZWV5EjCe9TW7bZVFxw/Ah3h1c+6Ih3tVfyDjtiRAUczOqR0tKxhb0DyffGtC1dcc
	 WZ9XIe0AZ4QTJfml35Q0+syH8sl9JozM582bI582ZOeHGeU8zdZjUvzw5MtgFaDGll
	 K7P8w3MchLnfa8Zg9hmhuyl+FauqY4GRIWqfNCTEMCQq0pkAIRE/VthWg00bYNWtdL
	 V8eh9pzHvCXOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE129CE7D0D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778015369.7158.11076591736521792504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0f383c60a63af734753499469d7c35c12a84a4f785bcdec78880b18625fdad
Date: Tue, 01 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727780153
