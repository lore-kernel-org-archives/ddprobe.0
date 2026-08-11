Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CA8224D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786460434; cv=none; b=WXXQT8bB31cxj1Srk6wzQo0hI8WFenRFb0fZsmRjoZ8sr4rgLpVrsgyyZT+U5EV55EZgRmvHag/jDGsAcBjOZPmWfg3agJz/kflYE1uXciyu2agmlSxZL9pBdAVQGubL9wCILb4cR+R/5oBEfWx7JkI0bTISVl6sku74y7Be3dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786460434; c=relaxed/simple;
	bh=dpagwqKGRbn+0s/8HXwX/h9WSQbDpv1Wfb1pOHtDfnw=;
	h=To:Subject:From:Message-Id:Date; b=jflBu/B6nfCxpffABXAbL6/7BNLiUIGXrborcpf8ogzIz5XDpeGOTdQV520moLaMh+Z7acAmfUXGeOUmMBICXGDqWu/mFjq8ISUHg211AAJEONkHNPqsHSuTX61+6HqPSzGuj1q3doez0uyfRqIju3GoYVAv3HrW3lKyNxHkRt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHk3VT7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHk3VT7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4DEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786460433;
	bh=dpagwqKGRbn+0s/8HXwX/h9WSQbDpv1Wfb1pOHtDfnw=;
	h=To:Subject:From:Date:From;
	b=aHk3VT7TNgXJYUCtV+qRHZ05dqNiObmtGFqy37xnOWB/MIKX/DSSbYd74MPFfhKg+
	 xtTN7HXZdFwPLaCjPvFtQfq/8IYzB8JIZnqRULkMd6CRMjXSfKxzXS/ZktMeMeTEID
	 3ll9HN9LLqxAf9i4goFxeeSVwkKOvPviAGkP6rJBGUnVaR4vZoQauuSQKSxUbTrA90
	 FfzoW5zn2nKYuBF/0/YRLzxVtoFAzFR7Roid920RG28ALW/j3euHSOaeOYgEgp1LbX
	 1wmyonfIwoHtiFvyJJtkNvbnZbwrMMtZDc7kskKctm9xkLMaoWzo80xH+Y4jkK3vQr
	 IIzoybYu0ZUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA03C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646043368.15045.9510709770269500605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6b83322b6f86096cd5d1a2877c7e9073793e91329ebf0334098ba65e239809
Date: Tue, 11 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786460433
