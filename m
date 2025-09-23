Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD27081C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758612594; cv=none; b=LX+DxFEmZPuU/NcEq0lN1VVPVTgmL82Z9/WHRqFLA64+rxUhmvDqT+JpVIKYEn8qrii/TY0CP3K+jU7hMP3E9LSjAs1dk3UCUul9mqliUOnVa+8X6WzLx8cIHQ80qIaQk2wQHbFw4Gww8WnF0HPheCprDoHiyalCZvb7v15gRcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758612594; c=relaxed/simple;
	bh=IdbiSjQVC4Uv+K6rnWZwwEwFE1RtFscqMaEYkUdWP8E=;
	h=To:Subject:From:Message-Id:Date; b=aV/32URjkna+4zKrPzpzWcZ5I/wwfJQD3v4f4TAd4WsUZFVLR5VePByAxXnEJiO8zFz8fCX1uWG2+9XezFias/qathNkaBeRYsXJLkNnAW4BmJOFHBgXGwvJcOtWmiaE5t6Y8j71y3QauCwiLrYsoKUM+tt87J7MCOz+QGloqvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNs1a4Rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNs1a4Rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758612593;
	bh=IdbiSjQVC4Uv+K6rnWZwwEwFE1RtFscqMaEYkUdWP8E=;
	h=To:Subject:From:Date:From;
	b=YNs1a4RwojZg/dy7GTk0hx9gTB5YbJqbEQw6Tuqwyi8iCo6gqeW1d9V3v/Kl5Z4Zc
	 7NKHbLCq7BjER5W9aaNnj7CR3yrspiCZnIKi63hlmq2QfP/41tO2miBhr9BqnGX7G+
	 WtOLV/OWTmVSCAyJijFeqIko5ZyiBQTC8HnUJpYMkSd4wh95PS23AwDYLnVZm7UWRv
	 VzsCbOPsaueYOzQf+uqETeKmKdempPbyF8nPV6YGZfzJT1FARUPI8+A+PAcw6BV4xl
	 LH+oGiwNJDiksudxx2I4Ujh3DvXCVAT8ndpQb3YOukyZjMWmKNtTJdybNk82oi2FCr
	 I3GAoFbJr9Klg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4BCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861259357.22957.11504665208131035433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47b5148db9539876ffbd3749f2da93ba3b81772e7c34eeac90f76b9a968fad4
Date: Tue, 23 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758612593
