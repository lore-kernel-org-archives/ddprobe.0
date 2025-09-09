Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E73F320386
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757416194; cv=none; b=sqBqKdMljB/O15k8R8k50JDqNNZNs4XNgLlQVEKhbS66RjcEgI3ODBnVbt5Q5b98SOpK34G3C6gLFLMLVwDeDsAPkH/f3pyA/1FpbvTUzGN5TkffW2BL5R7U19Wy+BWb0OWRLfixst5Wzyh+NOE+oaOqkPA6dYnLQJSmsxjeRwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757416194; c=relaxed/simple;
	bh=09PMH6pRC5/TG+TAZUPGliaGR1ogpm5EBdytPdoohEI=;
	h=To:Subject:From:Message-Id:Date; b=fSKAHejoVe/Y0dDc6pKsybK5zoXR1aO6PUXgoXYCGms4XSJo0u8eJze831nrA4sld5p3tRNMPWZ9G2mjiBeVVCCCuTBoTEcGcPiPAmfPr/FWb6l1opofzKBk59VmW9qvqaJ3G8nWc7nceVIbAm6g3UVHBvhpieNXzcgUAO7V2VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3SoyP4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3SoyP4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19BCC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757416193;
	bh=09PMH6pRC5/TG+TAZUPGliaGR1ogpm5EBdytPdoohEI=;
	h=To:Subject:From:Date:From;
	b=A3SoyP4di5mYnPFd1hVWnPT1OtgbJ6IDp8i4nxwXcxImp6GWD/gtiLjwe3xIRIsQJ
	 h6DkBUB3TS2r6Y6Z7J3ouxk7tf0RxfGI5ZrImwvTNQYD7yUSQvDq5dRbDG+e6xZXed
	 1QzOlnrx7xO9bRCfyyAGqbaDG9QNzSGyoWdZtyJqSXNPRJkUfrE3Xt2SpFlUxiBQDz
	 DeZ+Eb8W7sd+YIQvpUhaTtca1Po/EdCkgB3O7IK1jKol01Se1uH0C5SsDo3GohSSDg
	 YnrJbnWS72Remf/h8TmZxlSsL4NzDGpTFrIWn7wxMMh9OIYX38hagWbmMTrdiKHyLM
	 i9j87BCJEjL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9DECAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741619362.16765.10759311205297965037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1139ea4de83e72fe76bcd8ae2d529b488e33f89c5e81af65cb3153d658df7ecd
Date: Tue, 09 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757416193
