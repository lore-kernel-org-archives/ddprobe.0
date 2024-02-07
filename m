Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A87B823B8
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707326297; cv=none; b=e3k9ppWiwklO728npDfsXyRC6ex1VxKRZCYNOSpbAp2gx19JGLPODcb0jFNmZ0I9k42AP/FjI3pmcYcJLqRYemZ/ppyrLIB+M1X+TV26JM6DR39ATacS6WNZyy7FkDDWvejXzNWFuk9pa8pl8eMjqq6kspMoksTFhvMjR66lhWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707326297; c=relaxed/simple;
	bh=gGhdy3M4lkis/OSTUDXmmxZsHPfw4gOBaWkzdmBuJKk=;
	h=To:Subject:From:Message-Id:Date; b=XSfq0jOqw93QdkutqyRJ6N7l7WhPb9tPUUZMCKaHB4nJEOgxYGo1TKDopF1jx/SU5epHO1aKh3T30tuX2mhaQKXn8SSf9uJkHU4E1/bi/7WaI55YNtJElQNEppECtBaEnyKl5XnRVFFamQ5DFvUVphL1vrfN0LjiMZyd95oEbCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfDHeFc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfDHeFc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789E8C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707326296;
	bh=gGhdy3M4lkis/OSTUDXmmxZsHPfw4gOBaWkzdmBuJKk=;
	h=To:Subject:From:Date:From;
	b=OfDHeFc/q2hfPYvhgHRxaoG4SQSKAHAP3EatIsrXZTQfUYOopsRjA0MRYpaVA7UzF
	 GjyMbYwcGwOzw49FPXlBt2HF9tt7Gp3lp0878zKgijIMS78GLT+Vr5oZ0zsuDequFn
	 SBlj/jbN3MweCaTXvRfnY+W/Fs4+E7MNJ/TtKwnq2B/c5vOKrFFXRbGwYlp8XerjGE
	 zPeu01Zt3NHVtVZ/z62wWuFcNPZevnc9ko6K2TLafpTlS/TRSSIoWr8/ATVeAozpae
	 qAW0NcJw2yfHRxTY9AT0HEAU/mtn3vh9Y7auUNxdaLc2KFT4/cuT89oi9gVdJTe10N
	 jTe3Jp3oyodng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F17BC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170732629638.9467.8261666796556944996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b414d4779784396c98e6a4192fef52582d0e9d80ff1aff05406e1a3431048a
Date: Wed, 07 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707326296
