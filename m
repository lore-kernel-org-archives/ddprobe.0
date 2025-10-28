Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABEB29CB3A
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761637794; cv=none; b=TlmLIO1BWc8nalPrhFlYCuIMo6ntfI/4a0gUEjIxP0vvFkXqTlEjsJKT0jEv57/K1bH7tdFLQfz0hiiO0fOPj2WMhVrbha1blw5C3sgheNhLVH8MY7yScG21gtyCdAScLbFuon4fvG7RxpesSO3lEsU2NXxUZyF02zHDk/m/BXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761637794; c=relaxed/simple;
	bh=NoD+0voFGr63ZqYNMOLu4pu9gW15q8zHUZlQ4CzVkWo=;
	h=To:Subject:From:Message-Id:Date; b=s509ArVQCzuYsLLKVvqGQxFra8hBH66b8vh//YrRxlifsufdNjJSKBgg4K6/3uuUCqXj6n8IJugeSPpLbSixRuWM46vP5td2X9XH5MrPJtBJ9va3sLiv3hTshTJY04ZP43qxHIn8HpsJDE7lW+tC7SvTxmtm1BRB+9sWHGRnTG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8uCHhc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8uCHhc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A284CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761637793;
	bh=NoD+0voFGr63ZqYNMOLu4pu9gW15q8zHUZlQ4CzVkWo=;
	h=To:Subject:From:Date:From;
	b=Q8uCHhc+K7p8Ky30C8YFO0D+wuroiEt8wrHLWVr+5oq7GPx8cMXdJqKeIBAC+m0bm
	 fwnKJDjewIbrA4r590G6adG1b7e5WkkrGZ1imZRIBcDnqYaOzJh7HfVSPCpF6cAbP1
	 oIf9UdamgvIkMzAKbqoeYz8zhc3Kx0IsNbb0LsYzBSkR6P3uLyO0HPyOKhbOW7qLDb
	 Gq8GWkkmfaZAhCvthNxDoFSTT6VOvdS7XLHHqUUsje+rF1pGHpb+jIXHfP12uFaItK
	 lWjKuXta3VWwmLxELgLmXMgvmh0ytgLxnRv+WBibg0HcDb3WOx7L7PA0usIiY5CQaY
	 Zye6/Kd1v6G/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065BCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163779358.1365.1110383856761369188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22f6f29d234a552e5ca3fa904149e4a3fdfc72bccb03527439b1de333c3dd2b
Date: Tue, 28 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761637793
