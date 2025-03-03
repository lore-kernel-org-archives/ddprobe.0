Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B271F3B97
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741034334; cv=none; b=PrbCQmSox+Dp1qn1wTK/pwQ7sfz1lJ9qMvTiitr+9Ud9rBY8UezFyohiltMBFAHwNWAgTNWgU/NDE3Kk9H5Lh2TstwVeHikqhSsc95j41DW+9ifuW2EybcSF614LKkqIMMHf+L0YmQH70B36vKA8AtGuOFsyLWKzPRRlixcbrBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741034334; c=relaxed/simple;
	bh=VbaVv4/oKQv3OkiE0rVqfIAco4+pfmqZpOR0QzxxmuM=;
	h=To:Subject:From:Message-Id:Date; b=AGxxa+dwwoHgXNG8cD2scDoJf6AhhWMniFrwBG7HflHYEasaVLIoWsfhbWsQRDKiJazrkELsU5wILOWM0JF55MYW8iDGbS8DTZbABa7ALdlHk7Uyzsw3SEPVg9wkeT4jzTlaOYw4phLHrplksw2BWHbO62Ujt7Pw9XeFplx9qDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TML7hEFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TML7hEFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F8CC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741034333;
	bh=VbaVv4/oKQv3OkiE0rVqfIAco4+pfmqZpOR0QzxxmuM=;
	h=To:Subject:From:Date:From;
	b=TML7hEFEJu70Ti6ezobSVrzP/qsMbl0trXCORtnD4uRTXrfV8YUT0C2x7b0eWvV83
	 AxXU2NTouy4rjfrGVlHb6M40PT24RUG1jYGezNoYaGtQagVF2oV598gUQxNefbfo/P
	 eHaG7AEuGQLGHEMSPXQsD2YbyLkq7sizXvwxElIquDtOtUHaUeYTrW8GXFpo4Fz3my
	 ldYg6cYxtEIa8XBaLjLkY5cCOVlPQkYKhT1ChfhhHg0LKH9kUuPA0vf7u0HZ0rwYxs
	 DGaf0cAYk3BnpaRS0ervZEMbteAWaefKnqZpkajge8PDLi4Qee7mnxcQfnQZOm48BE
	 VR0FhvEEABV7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A12CC282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103433362.23030.7908860748857739101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e265201b86df955ec0581a06c388639ba561c9f4ce3cea5ba2a562b418c336
Date: Mon, 03 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741034333
