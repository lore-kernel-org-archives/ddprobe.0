Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA088C1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776010654; cv=none; b=cNHK/kWKRkDVDWnQdSiF15QdU+rSPlae4iQBfocNaZ18btpQhcgEHv7zNjEW7TMWH+0GqoaToma2HCI8eeB6hEDk6HMqzBc+CBNwMNoqtLlDCSa4zcXytImfQdvU+8AFjFVzZEbDSQdkO68VmJXK+Lq5sN8KZ9cNb39XiZU57v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776010654; c=relaxed/simple;
	bh=HSyhAXozCC/YfrzF1JLB217BgECnxxPoTmRPe6ej8n4=;
	h=To:Subject:From:Message-Id:Date; b=Zdi0yyVni2a0wNY99iqg9bTY1/lHhfQWcXym/kWenbKIwbS+BUWW3gdejFJfNCf8zvF+D5VaIsh2whBkY+bPLpeZSX8elTmcK4RxazpYGTIlEH+MlS+QxlaTjv6CDn7G3taDWnaLMTuEgy+HvEKychXjbHumFLRTq0DjohSYeuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa1Du4rC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa1Du4rC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAFCC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776010653;
	bh=HSyhAXozCC/YfrzF1JLB217BgECnxxPoTmRPe6ej8n4=;
	h=To:Subject:From:Date:From;
	b=Sa1Du4rC2BjrJZPIC6Ip/fKfrfmCv7SQPKurDzivr+joXNTCkc5M7QIUnDQH+2jHQ
	 /BATHjd84tYEjNjKSILNp2qzRs4rX0Ae75moXvrimWqJxZX6lcgoOjv+epdmwO+CPF
	 Q3WlMztaO6ZkGlnamYhp3gqWak/XY4fhOejWFzNRlRgW4/B52pIY7/hWSS2UYxS8c1
	 BbX4chXQMXcPxn60wQSWWbuMcSrCQILcHEgin4cxg/Qgt1Ipt7tmfLO68BJkwrbBsI
	 MQ2wRHUxqS8UpVvJg2k5daA7o5+hRqbC8VDP7e57mmen6gy4FnDnc/455FfeOhi237
	 v1bkXX9itTvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB60E937EA
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601065368.11740.15729584248750524518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4dab545325a2e4c6678c806758da9b56cf277fa604766744c291dc37a12e13
Date: Sun, 12 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776010653
