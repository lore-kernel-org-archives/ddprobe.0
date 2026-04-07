Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D623B38A5
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775565934; cv=none; b=uN5WjVYsZUk9eeI3Unmd8Hewl/+50qwyBhwaSam3cJpXUDxYEZw0wheQos7bx3+geSiJWn30IjqPdlsWJYIS444Hi9Qy6+8Rr+vExsQfmXdwhFgbMJF9kgvD7xOkbCXscZW+bTm3DIghPs5IOdDjSHeL0553+VtsfchpF9dzZbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775565934; c=relaxed/simple;
	bh=q19QhZ8m4V2WM5I17VWUCwz2a75eDadQkt2ACNnpppI=;
	h=To:Subject:From:Message-Id:Date; b=OmL13L6q9xjaBW05pypzSDhLoC326T+t/keAnj79ri1X6O/urFjCbLir0Rfov8NF5ymqSnnYa6DOlHNJhcVcJCvIGKAXdVcp7YxURpOJwGbQZjgHK+7kQuQcTzbh6MOoeWQjigSW8m6A3DsAFBlpftShVW1dw2JST/7guzkCqbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQWraoyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQWraoyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C088AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775565933;
	bh=q19QhZ8m4V2WM5I17VWUCwz2a75eDadQkt2ACNnpppI=;
	h=To:Subject:From:Date:From;
	b=OQWraoyMk8FQlmNGa/CPKEvxYSBbJ4mFKPiK69PYhJaahMc3o5YfzcXF77J1wA6xx
	 LIFI0QQuxYlcf2ivGhIszbT+UaTho7PNrPwIfOhYXXAjVws0WfV8Rd0g+gxn1r1lUV
	 Zs+I4/SqmuncF3yFGClpx54SLq3NtFc5QzA2W/C98lFWIIGotdfIW1hsb7fzz6AD6Q
	 pPoHl/m1icJWwD1JeWmotS05gflMwMsjdf1S9jmq6y1UJWmjS9xUsPVykbA0btvLHy
	 e7IMj+PJQNGioWixzsoxbOrto7MGVNuQ3+7lRJyvtW1FQ7x4ku3zF62mYDqbi+2qCf
	 XubXg3WUJnrmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB20FEEF31
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556593370.16573.14868924425494537102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3005ef0dca1f9f0cd41f158268b393f22f72c7b7677ef132e132e89eecf4875
Date: Tue, 07 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775565933
