Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB7230100C
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760458194; cv=none; b=M39HQIA/nDhV1/dASUMnwKVZrxZlsb4lFemtw0rra0I1ahvnXeeLvTy92IPusfSkLsl7ap8f3TiBEIZi6HLZ9KLmz31udbEh1QgDvLD5NK0Dq9jJ4KHUrUULkE1TPF4NJjFuGNELgQykGEx/JbLcGcNNMIvalPMX+Gu1/f+fkS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760458194; c=relaxed/simple;
	bh=7np414PuNjP2873esl5iyw1KBA2loF4Q2jhkn4cDnUA=;
	h=To:Subject:From:Message-Id:Date; b=apQCDJA1276D4/wzRb0OlF2DNZfAzaMhICWnWFRxENcsS4Ra1pHpEhi57b33SG53l8LrbqPM1BJghrDYx/2gE7xQmY6Ib0xZxWAqUk1sK1X5a3zUBgZFZj+XZFFUtyCUZS1+z1FnCjZuhFAbxwENxmqBWea0XWSiY1+dCK/SYsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBlaOvNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBlaOvNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140BC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760458193;
	bh=7np414PuNjP2873esl5iyw1KBA2loF4Q2jhkn4cDnUA=;
	h=To:Subject:From:Date:From;
	b=OBlaOvNNS7iOygd++O1+4hwGSD/4sSN7GAyj6R+uZey3uB528ib9yzSJsDZkdBcgk
	 /THgnv0KIiyBM6DN1REpNqBbXOm5itzuX++YbgLFxHrJ+T2/1VuEHYneDa71CaQc+6
	 QvQIv9Q39X2G5Kf2yw1Kt+/rTonE2ogp2feWEV2mkoJItXWqwocQPngW/sI+w+vAnH
	 Vxa4bjxMhj/am8DUusy5h7Jk25E+C+U96L58gqHYNv9nyTEu+8bQ84wMtI+8+A5Fux
	 bSUW4Fco1/aFafUcuxymicJfIIYQMoTIt5H61HMWPAqSQdVAEa8YJsBrmdwMW5VQzo
	 57tqkNWMnK2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045819358.10625.12209755626830715350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b22000828873dd39b16c1408b188dc7905a193559ae3103f24ccfd380373fd
Date: Tue, 14 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760458193
