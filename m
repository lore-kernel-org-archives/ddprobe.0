Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578842FB6
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714958543; cv=none; b=gYBaM3X8ABHv4HeRVpL2F9v70sFvyAsHriulZLucsRYLi4ZaRX1VY3jqjMcap77X2w/eESnwSw0xCMPvGAwGY7YnE++hx41ulxgqXYIl877MVjunkF9hkunWNG4k4eqLf11sNuSJmFfMCQ+AD1nXzoBQXL1WxR9pfDY/j4Qur80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714958543; c=relaxed/simple;
	bh=09co/uA+/vbLPy+FcdwN0G/1eA38C2OAIaCz6Z/8IJQ=;
	h=To:Subject:From:Message-Id:Date; b=X3ts9CQyC1K+8hp6cHFbuzFO82M9oCk2Tlk69rTiCwc78sv+ytLWdyIkTLle+OJ4sQxeDrYq7syXN1MJsBnZjfrY9ME78jsspXVj2n49JKiKsFKwXHcw4i7MX20w/hFPmsJSEo2eCshfLETxizDCIQLT4rTioAqP7mgFdH8Npdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKFANUlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKFANUlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1613C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714958542;
	bh=09co/uA+/vbLPy+FcdwN0G/1eA38C2OAIaCz6Z/8IJQ=;
	h=To:Subject:From:Date:From;
	b=QKFANUlQWicMgCuYx9PJvRXytXgkhsr7G1haEbaBxX5Usix2gRSBeDmZhAJ0ofNaS
	 Qx9X64rhKZ7LHSMP2xbipmyl5l2Qr8Lsrk/qaE6Os8QBZZoZbACn4IES04byiDAkZ6
	 Nb5IQs5BTzyLDUraIxGEh8ZfWqyn++HEwNRTsb6UOFl9YwjZMd1TppXP+JcTgn497n
	 bpGVrAqShsQhA0jkdQtbIYfkI/yo547W/s0hra0ZZB8MyhKww75sJfNJCZUBr3Zonx
	 c5iQxXQUG1gHgXktu4XXekG8pqK2PqMoQNVRngXB0vKqmuj03cuiX8F0qhl1NfcrdY
	 4o5Z0Lh579sqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB77AC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495854280.5794.17149644517070292271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c78f36f6814ea0ca1c032d4c11e5d68c00847c813653ce41eec7e5cb55fdebf
Date: Mon, 06 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714958542
