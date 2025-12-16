Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EB234320A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765877034; cv=none; b=nCUnMD5e5EsxNa4vMZ80iE1/ibKJvoXRnvJGam03/ybAEJYR4LxjNmr/yQI0AgqJnMdPXLoxfwPbXszr7V6A+HxSOshqnYUWDU02QN89NuEFJy+lt9vJczC8ncSy+gZt8SjGASPkTOQjHUfYXmqub3J0mX52cGq6zqXiqY6kPXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765877034; c=relaxed/simple;
	bh=mfjfYA9Kar0BU40bLiI8lVrGY+5od5ZSqistCO8AbSg=;
	h=To:Subject:From:Message-Id:Date; b=os10orUObUOPTILXfDyT0ahbhKqd/CU5QcTA0uwN3YD7GDtkn9M3nqr6zomg8xI+6rE/OSaylCEd3bvRmOf2JVb1BaxlK+pVM9g+9dlqohdo7WP4Xoz/yvQ7xeUdVm9NGeZOIzhcyDvWe28mLNbwwfuMtNLJrNjMUAH9G5bXThg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sg9P4mS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sg9P4mS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB37C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765877033;
	bh=mfjfYA9Kar0BU40bLiI8lVrGY+5od5ZSqistCO8AbSg=;
	h=To:Subject:From:Date:From;
	b=sg9P4mS+8wQ448paT137fhccGfwmP6N8Tu+o9q92iv36c+JzdH4E3yzkhXcA3sYBg
	 GqykGI2ZatT1T6EnciEhOFjnSdtvZUQErCRedzfyfB6bfhJ4mfp7WJZI3rOjMeTNO4
	 viI5yrkuWoks1wJMu0ddB0ihpEz7VJpl8Yt4YGeJZg/GJg9ThdYd9uY86Q6gaa2wKD
	 1z/LwFgINSxj6rj7VHKfcmoh3TXmo58VBf16YDR+HeNkqwv93mo37+CK96yi7CUfGv
	 91GyzoxvtZGrl/d4XD3CFyImH9NEmiWaNW972wwgdUf7DywFWt5LDbsA6pi4ab8vBt
	 DSycsrLPJxo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E64D5CC8F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587703358.26964.12257757999517957342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3073d3f7840db0a35191dde49e9c55237c376a662dc4cca4c71a95da7fb87d7f
Date: Tue, 16 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765877033
