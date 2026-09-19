Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CE42C0F7F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789824034; cv=none; b=mXOJHjypFzihRXgn5Rd4T4h69GDqkfRTlpC46lBiggTyXFcT93hKuzEkDC9g0YXWonQceeQvPfkx6GR9BFNcnPGnrUCf4f68gkICrBbPQbfCehWUZdfTdiMctvGdGgeybzj6wzRylLe5iCSkysucD4VuU0PBCpJnRByHsmEwMGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789824034; c=relaxed/simple;
	bh=9wRPIwfStYNcwLkDSKvsh/IWm5T1dbyg6iNs965xuxg=;
	h=To:Subject:From:Message-Id:Date; b=oGnjJYgPsabeiiSRiCE7Vm8Q8FFdB/F/mQAWkfvWuBkc36vdh5X1i3qQaBuTo2LPxBWWRJ0N9WtFlVbrwcaMxUwv9a6sDLxOG2kxc8Sue8hPwfyrbB6OqbGFdwazMeOEleladDbLOVcp0ogXqjK0/pll8xwgiR0ZIR+aKe67rWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2xFO3SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2xFO3SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3159C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789824033;
	bh=9wRPIwfStYNcwLkDSKvsh/IWm5T1dbyg6iNs965xuxg=;
	h=To:Subject:From:Date:From;
	b=q2xFO3SE384ipmMkrES11p5bennP22MtZO1rOhXHE1ECdHlE2csW8zhYqFTMsH/Ng
	 Z8bg6s3F345zmW0SnaqtVisli8V8A1SMKEL4wXZEyN6WxtDHWSG1e5luuUE0ilemNn
	 uWGW+PlSQ5g0aQZFn5rAM1AsBtk40GPdnb82ug0u19q8fYhgSoq/0Cz/wwYxf18GGe
	 htb0Xm0DpyvHE4cgwrKqnvD2DqfSRVGA7lOPV7ttQ2GYx7YzPfmY6+AJQYzMXg+kms
	 1A/KnyYjjknnitKfe9aOwf2bJ6mYlCv6xVKM2ECyJfdVZT16ayVSqCyitovSfdcyaz
	 s88cYpISn7C5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A1C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982403368.21162.16506097911255206096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fb45d23c4d6c500549c21808982882ee52068aaa75f2128ec1f1c74bf17642
Date: Sat, 19 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789824033
