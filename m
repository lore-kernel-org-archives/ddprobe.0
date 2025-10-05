Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E0C3BB48
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759631394; cv=none; b=soHnhR8k0GtkfxtUHhZzzfa2Z5rubFzsPg7J98LAIgNCMrPYgD0rZKg8fyqxUtmbWvyU4Td6D/9/IoWNfjaZz7pzHRlrdoAnjp7BrKqF3DfD61f9rldB3Rg5qD+b4sDVsv1g48qg4eCVYNhCYKo5KSsX6/PbWfZC2qCHT5ELbWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759631394; c=relaxed/simple;
	bh=EZzG8p8qYl40zhkPuLusSWG5cXK++6EouNK/V5lXdWg=;
	h=To:Subject:From:Message-Id:Date; b=K/oQBhZCBYacVO/cUSADdb80o+Sord4vkHQHhVtMxuIosDX+n/nEHF5JwPRipB/gtK6tgfcSNj9EMKboForQJzG45FYVDOQfQ4u6W1LG8pPlXRuBt5uHFDjRMjvQhENyAiloGKJEAUR0t5vpGLgWIZlw3XTVtbfS4TNBEPXypQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsLEiKOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsLEiKOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759631393;
	bh=EZzG8p8qYl40zhkPuLusSWG5cXK++6EouNK/V5lXdWg=;
	h=To:Subject:From:Date:From;
	b=QsLEiKORetCyO5qZgjSGOjKFz0qY9HUSrmzk8LGYKTQfSlVdJDBoRzmIM+eOEPGQ/
	 79JJLiaXxABc/n8ZzGQRdhpe4fT4QCJ0G6aG5qar1cIvWv7xk5hw/BF1Hw9MQPqA99
	 XfFyArE7J8pahm7DXvYRO/HF6dYBrgX5AW/gatCG1DD0EfK4ArdxOpQVJbx+tbZnhE
	 yU5rixiTrGTLSqBgfQOEcjEHS7iAgiiyMEq+z2RFpjSD9qlcHT8P63j51HFLeEReQc
	 KE7p6tyjd77QberkgK9ujpRxw3qA87ZLZSyAyx5fIiM+HcLPY6FoWCAiq2hZa3GWn1
	 GGmRT+l2iapDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE28CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963139357.26620.4952507086913976346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf0057642f380e13694596cd87d2ae1f983dc2a3c2cdca325c134c4b7f49efa
Date: Sun, 05 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759631393
