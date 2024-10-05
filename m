Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BC513D2BE
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728128754; cv=none; b=CIwqK5OAT+pGte/beYc+j2tkBEK6/ssETQ58XwBNauSG5Ly9q/Y7QLMLXar7cZTASjot8gbPcElFJyJgIihezF353dgRdvN0lz3LI6dE6UezuWyg5hOxjuVNIQ4B6x66thsg5qInqN/6Bi0WJjNCwjlKeKtwZ0Z3wFK+hQGLxSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728128754; c=relaxed/simple;
	bh=tmX26hw3eewVdRQQJ5X1EaknhxvmFrDqbZUoFtuPmg4=;
	h=To:Subject:From:Message-Id:Date; b=BtuWYMVfwnA6fe8iDJdoSCNXvCvTjmby8EF8U/urj3H5zA/D0ClBcKfZT0OiVFkmGwIuxlDNzYLIEldVuJVFuC+f4iaBsixC86XaNzqyeQb9vcZRbOeop2LIBWyQ1WMC1NcI0Xq47oIf5upRh6AWvQspDn+5CM9VfwoQQMm7eqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNscKVlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNscKVlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8425C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728128753;
	bh=tmX26hw3eewVdRQQJ5X1EaknhxvmFrDqbZUoFtuPmg4=;
	h=To:Subject:From:Date:From;
	b=WNscKVlge6AoC9mux53oqPUN+EyzJJ8eyNfz0uZPY5XIbDmnkO+L6dsX1RXehXTIE
	 X/3ccN+6adW2hhXzVcvlGbTQ78EwQkhvW/uckZw0nmV7SgfNEXWWLXpHlJPpp2yL+z
	 6upR0oi088VCtm3RmggNYW3s+yrIctjLZ0M3XBQDbmXc4vmT2MNZ8VrPvo5Xj0DXoX
	 II+mbYz9eooQVNdECstgiOpEQSzDIFRotSU/OBGRJARK/ca58CaUthEVtVA6roJS+8
	 iz3nW+5p+NMQBb4h7q3heRJD1a7LnaVhGzNwTDqTL3P23acriW13880E9oz3f2G06L
	 WhBV7OeLurncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08A8CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812875363.17514.3855054605737349313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9d13bd853c5a00c8ddb34557987d4af509f69ffbeb787babfec7e597847216
Date: Sat, 05 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728128753
