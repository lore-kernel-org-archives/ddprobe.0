Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1962F5491
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782454654; cv=none; b=B6hqq0ovZ5LRKXXXtZIV1Nr8dIsmGIkkThy5Ss3SVEWid00do6ZWOawly5ZcGbps/Ducx57Q7k8M0zDsZhT3lHaHWU+EQYpRs21XqsXM3TjdT1zbGBp9a9wM2TcrsOlXRyQ4VGdHYbQsJxvHHAGo5BJ6rIsmSQuDVS5nqQMt3EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782454654; c=relaxed/simple;
	bh=hhDyFblYC1MjTNkduyGmU/b19QsXtaTEmhweHhqVQd0=;
	h=To:Subject:From:Message-Id:Date; b=k71V5w+WsBTrjABvQS9vHavjfbiKpbscqjNUPQTloiYWzCbHxvhxeGdKIJr8IX/5nFtxOCYJJriLdYVKOysLWARhOs5GukSwpir9JXLYCZ7Li9Z4mDYJ00KZQuqPwT9NXgXEVigUsBXBEMQB6edqjukwmydDQkM9dtufnkzRwoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYjCs0mJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYjCs0mJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48A5C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782454653;
	bh=hhDyFblYC1MjTNkduyGmU/b19QsXtaTEmhweHhqVQd0=;
	h=To:Subject:From:Date:From;
	b=OYjCs0mJSiebctQpL5LYANDcDT9EUvZlCls6wS2dIU2hwpl4Y/hHyHTyPoQAYEVuo
	 pBAL5BTy7V7mj9z2QfdvlnK7chbC1bvbyTe7VhSW0Ynx1cqb+a9k9s+2L8cfOrLo+5
	 U3ixBPkbyhs0NWrt2HMmg0cTuO6FYf69Sb5GewK8Nb3s4RQjGFZdGnqFcnflBxUWX6
	 L4vL62Wh0KwsiULpaVfUqirwsDSZhF46zeLk9AUap1LseVw2MDAfJ1XbuH8PyK4WGr
	 I3Sk6KGGslUdA3c3aplLlvcjy6A3+KBmuzBGakySfnCpkqBH1IpnJdlAYTsdZJovXw
	 +N0RQ2yC0E4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EFCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245465368.30991.1769872776528033554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266d75896193554d26394eb8a4604766eeec8f5d17f53e150190f8f00efd5045
Date: Fri, 26 Jun 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782454653
