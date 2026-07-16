Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E8541D4EC
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784202514; cv=none; b=WriN14fwpEx8pWzZs/1dtOhv+kyJZZAnJMEGKZ7Odl/cMj/4Nv4dO8EMcnAuyjKTSbeNH5VWfaINKuDYecnYc9CQqQ9MZw9tjeuTAmV5kZeh+4dNo1uDXftV+NWqjxlAi9NxjzaoJqqA7NMSt5h3xmHSqcGcFFPwMucMVuwKXrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784202514; c=relaxed/simple;
	bh=/vvwl1LJ/FaA7W1oTAg0rr7gcvcruwYgVoWWi2Czftc=;
	h=To:Subject:From:Message-Id:Date; b=D+HjIRYIuSklDmJW+/39D73Mn6kPVqfVWCH1pP38zg49O3vWEdkCFHjWvgYZpjqU5B92mlHWAmAe7dWjcVY/emTNkrlxoYLrbGi/1A1I7rY3YSNucE9J4i0w5UFiuSQdykGkWFL3+Cq4hB9mapM194hPytimvcFB1fsmBkd045c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2m9mycA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2m9mycA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1EDC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784202513;
	bh=/vvwl1LJ/FaA7W1oTAg0rr7gcvcruwYgVoWWi2Czftc=;
	h=To:Subject:From:Date:From;
	b=W2m9mycAJrKb5H4yGF1NqS8y/kGd2oeGxM1YptSjVnSYIItex6FuNA4kFFXttG1bU
	 XwYD5dat86rjty/Q8oEQ2oHM7EOzImag1gdRT6ISXbk9Wdvd69Cka3owUluNTNDXLW
	 1vFo2eaB+6fM/HKUUnk4WoK6Zc/JU5hPc7hLPl+LF2llnoJJxFkpxJUhuyhF2QEnDb
	 QkTX9XIr/Etfc933+MlhlpBExUUX5utWYDKmVsxpGkh94KZknuSTnkIaEMZ7VFjuBB
	 yIJyqkaV19iJRKxGBG6UNfPpetQI1HRm17z6lCn2/viB21w/rudDAEyLUWo3x05vAm
	 5JO/StcoJTnKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF5EC4450E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420251369.18901.4781171259288798442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c313a44043e63814c08705f4505aa7756dfd7cbf7a215505d3d5eec2e77c8f04
Date: Thu, 16 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784202513
