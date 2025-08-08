Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2E1C84BD
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754630994; cv=none; b=ftGUVzPwaGnZY2/NOKZvpA3N9kaFRGfLMavNl6u0ZCQ/13Q1ZWYqFybLq7Cn4UJ7eGmSc0kAjV4uBR2tBcEr765Ft/PuWdGPf79f7ST5gHecZA4PvWGRN9eZlCPwMrNZaS+HWDJc88CQW+MmeQjgxnOZGA4Kpir9YArpOFjs9cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754630994; c=relaxed/simple;
	bh=43/csJG46bTK7QrYZN38PCqNDVv3moBKPBPZuZ/EHj0=;
	h=To:Subject:From:Message-Id:Date; b=GpG3H12D9qfp7cZDFPDrQGhH/LdGbv4qh2xPLEZnnWaUZEX7Wk0XVkO9f9AOY8YkvLLTzXTgPrgde5p54lv3x3Lqntsw7Iaku8xBQeezBD6hq3QaWnTrWOk4Xukxc5HulkDMZAj21vGMUFDhSjFmcwevDeEZo/osJ/MU+vc30io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqRIM5yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqRIM5yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8F4C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754630993;
	bh=43/csJG46bTK7QrYZN38PCqNDVv3moBKPBPZuZ/EHj0=;
	h=To:Subject:From:Date:From;
	b=YqRIM5yT3L0BUr5qjYa6zCkDoSVUcetJXQ4E4CLvGAQSdlr5kCbhrGxYZ8C7sXca7
	 IoKFCYw5aaNXoRPLOGkAbJFTTrQNcrn3ImIen0rF4zd02piu5YfzpgDIpr+FR3xOyf
	 nmvJ+G0fcBA6r+bi7G7TU1tnD8BjPth4Fnm9fzuHOYfPlV/jbJNc8uZmhbaM6JE8Lk
	 7bgpRxvsZpP0qlapSIEHbAK6hcJP9CTAsDoHAENHJVpEhDkObPLNZXZKzd7cNhItk3
	 KS6gLKlJ8KtSwSP0xmJgF8davuEpyB/kqNb6Pe9SX2vTCtTU0kWsEi7jkltsHm0WIi
	 uYGK/VHe6Fjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3DEC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463099357.25592.13413441893440409893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02efb5d8dd31f9be1d7c99fa2e8d492caaf1d319876c04f99d466d0d0cbf0d96
Date: Fri, 08 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754630993
