Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362612DFA4A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760651994; cv=none; b=IyE8o4cdxoAg+Rn00c2Icw9TavGkLKKDcImuGv3QJJhlro89PD8gGpIYn1gHmXGxYE3zgn6nyBaSDAiCYlnL18AeyJDrNdudkW9vaie31P60i6pmLfPBDpkdwL/1bB0TYOrj8ch0MC7CaobxnV5Uo5QfR4CWJD4S2VErtELXGEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760651994; c=relaxed/simple;
	bh=VY9MEgCZdo2UoS+Ahj444PnvvEXnPqM14FWFUQtO1/I=;
	h=To:Subject:From:Message-Id:Date; b=AX8UzX7M46tp0Xo1EanDC++sVVdFXyHXDwEiVX/5ATj9sCkSDkPFS4W704mq4JuzkpWU7jYWBdZbzoUDFns+7iCI3bOy0EphIRKh/Qxb0w/6iYE8KpzLYH+P0oDYTf1flRssSEJ2Gg5AcGkgX4g82KQpXdMxYaHDpwClbAyRbRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3xFHctN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3xFHctN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EADC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760651993;
	bh=VY9MEgCZdo2UoS+Ahj444PnvvEXnPqM14FWFUQtO1/I=;
	h=To:Subject:From:Date:From;
	b=Y3xFHctNZjdMUkZWA+m0jZfVgD9o7kb2vPUAcyFHRglHmjmGKLsRhVLkxfXBt/JN0
	 EW2kR4mvUkfFEy/JyOe8yRxoxBq/B/ZuM6WcdWYG4xJ5f9s4k+cxTlfC1hP1Mu5O+9
	 1xOE1PDJb00Je03gVomDM9D+O4788ekbgYZeeECANmW7HHQDfztaUJ1yNkQsBCr+tr
	 3KeIuetD9zHTqV6CqjQMS/3HIKpBkhAFWJx3BP/+eM+fiVgr7HtRUW+zNfxgqQnF6O
	 JHTB9WiZ9VncaYBG0HF0f/1IjxkJMJJSr9jV9ZOJpaiXwPT3jksUQzlhBNZiUwF4Mj
	 rElAHHhb6YLog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABFCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065199358.20156.7792301569538193402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bad37368476fcdfb91cd6c0464ca9ae16874bb294c19df85ad2676ed83fe34d
Date: Thu, 16 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760651993
