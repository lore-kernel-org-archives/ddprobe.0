Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237421D0DEE
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777185454; cv=none; b=CiVKZtFBLWoo9A7UjE7fw6hx++BVChRPp65spFyQMeDsvj/tLUATIlDg5F2CrojoWzMmjbwIjJDOKSKjQ/apziGyp2F2I1gIuchaAr/UWVeCzyJFvA963tre/rV3/Lbkr45ArGfRCf9eINDve3r0xT+yXs6VCM79hfbNrV+gZUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777185454; c=relaxed/simple;
	bh=Ti0RRc+vfD4ZUVzkysHv08hqC8JuJGMC+2bpkpNgaPA=;
	h=To:Subject:From:Message-Id:Date; b=BIhMZ+xRBKhSbBa9fr2MP7NOt0tHtRC2+WrGmQETrkUlZFz8AcTv7mZuLLXr4Vkkg6WMQRpR9S+QWwl0ja8jOEtaVJd/R//4hUoOQsT7Fg2GgYWhAQIHVlrjbfzxgK5eS88p83t9bXNFhTwCjK+dqfTgoD6oNJa3L+mo4jb8Yoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFICITG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFICITG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEC7C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777185453;
	bh=Ti0RRc+vfD4ZUVzkysHv08hqC8JuJGMC+2bpkpNgaPA=;
	h=To:Subject:From:Date:From;
	b=NFICITG8BNUkr2Cau+ZSgSRGU7x7I0YAKoFzuGf7g6/GxGjTwASQjNNIJxF7VpsE5
	 AxATdBr0IKJpPH1bPnNkK0z0bxkOYGpHTxvvUHOvN5GGlim3IDBfPk/IHG448F80rr
	 eudiVQvbrawND11+MPZAzovGre2BkG/nvi5QSVrA6d0dzovvRsYRUcq7KZOZ3bCESX
	 EpHfBKXuuuONzgHsIaPWtkm5weCA9siqAcXZWsGz4MUwhWzF67TwkokQ5OZ5IqFC3n
	 Sgw01IlWZ1MXSzKPdLvQWZM67SepsBLT1N0oIDxsWtjyhgoW+o9uvMdXro1k2/HdHY
	 PbjFSIp24Na/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE07FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718545368.18190.10381304333579664538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cf579a3365f5c804cbfb685cf246d21bc8ad355cb472a744e63e06be546237
Date: Sun, 26 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777185453
