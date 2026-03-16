Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015EF3815EE
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650094; cv=none; b=eCxxoLFAmQg7R+oBX0mc3WUc8dMXMHZIzlwp95kA5LpoA1YrGRyy9j2cVPvkQgUzXDuajz6zVpzs352B5nHu0OjdP8wWR0BKwlSy6w+DQD2TYGblWzvrRF87taI7Ujw+Zl/qEJ6FV61uIcw/58wPUn59CK51EAwZXn2tVJHmZwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650094; c=relaxed/simple;
	bh=xQrtcrdeP435lPbQcNt8vLFesOvL1iMQNiwsJKJXZOw=;
	h=To:Subject:From:Message-Id:Date; b=YAI0LtU+xMrQ6WQuABntvZ+uBv9C+Glk+W1ADfqc3GRH9iRNxwKgQH9DvRlrdu7iA2z7uLMyBbwfZN49+f8qO3M5Jzg8CgCUe9lB1l4mOjvGjCzdYq8CAvjpVFRKQWsuRb5lRnqTeckujvja9Hw/1kxfvZfYWYIOMsJ0JRcZJ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBAiPXUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBAiPXUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4768C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773650093;
	bh=xQrtcrdeP435lPbQcNt8vLFesOvL1iMQNiwsJKJXZOw=;
	h=To:Subject:From:Date:From;
	b=EBAiPXUfHjlxcEQjdwMusWBtcQt0iUeTl2lKfPYXhMWabu8DtmL9Rj53O7rYly6IQ
	 9vwaYm9HkElI41uklIQXBvVjKAZBGwey55uQSa4fzyJ1El/Lawgo/z01F35nA99alG
	 IAqVQRh/q8F7ZxBeA4W3S82GpBGlC6iICTGoTtwKBXgyLL8g54q4Wj+UhfNOy5ImQH
	 agq19cD9YOUfXvwvzoshpLvjWltnk3L+MA3QKBFTit0CMPRyk7PQkQRFzBK/xYcHMs
	 bcLloJDqaH0UZGcnjRASdlp2E69CUBaXS8IAg2MFsvr38954KcSMtA7ZiZ5qSwWdsQ
	 uQ+hhgWjWkmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93120F013CC
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365009358.16699.8022693844836416504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e05816c4e9d978bcde86c5c22c7a539794eb2063a108636a55568b0748cfab0
Date: Mon, 16 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773650093
