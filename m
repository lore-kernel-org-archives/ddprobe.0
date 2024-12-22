Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32536A2D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734860154; cv=none; b=jpCkX8wBGJo6la/5YjCH7wrB4H9KuFVKn+1hzz4M0BUOppDzt/vN8X13f2LcwIcb8Ltmo7fbzAJ3U177Qm0CWMCakjjrWmL5742tTsObQ2jzQPyhkJoraIgs7xmT80SDWNZ/wJO4r45WwtycoC6ZNaWxb4wdkjrYxB7oqQ5f4uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734860154; c=relaxed/simple;
	bh=w9CjRa6r+XfNugrxkKeEzLWUSRMCKNnha/pPxaVpEA0=;
	h=To:Subject:From:Message-Id:Date; b=q2oBP7+gbazdpPucOp/xkkvW1XCmAz8w8cyFJPrjKOR9NKa3znUgja1n8ozzn/QVcPF3TTbatsmB55b9VDR4ST2xuFeJgB9FY2aVLT78wDFnow/ggYkI06nXtAB94nTTEXnO0UfivaUbwWbury1mv1ZuzZfr3HtdK2rFKnuDfuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPNeFFXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPNeFFXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C1C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734860153;
	bh=w9CjRa6r+XfNugrxkKeEzLWUSRMCKNnha/pPxaVpEA0=;
	h=To:Subject:From:Date:From;
	b=MPNeFFXG8zaiCX++JMN/cTPXsbffej8GGn8bSgkQ7FEnPFH+1wPvB1ZGrOAMEqAkM
	 0TEpe6YIbjkzb5hwGf4gE9vDHSHdWirGx4oUolH/JOdHD0jfhYVt+ycNTMaKUOS+pv
	 sVg+uwKAIxPLzkrHl5vq9ZMjdnyi4kUS3KetET6rSAOyH6iXLfe1QYwJMlqO9SMmGA
	 QT6olNiHZRORVwLn6gIJ3S7Pk/BIc/ggWP6I8C+bxZ8xAUhd9upUPmx5U2qRYkg0dr
	 cdrDed7xnZ26zbeYsm2McJau/bL8pjV7QU9qOBi0PS2GNugOVQ1ft4gtDjAf3sLy+9
	 SFMtpbStr6/0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A63E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173486015358.15707.3009465597356574472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497a0ff573a5e45d5afb404e3942ef94cb4c658b7709a31a68fd1c68e717108f
Date: Sun, 22 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734860153
