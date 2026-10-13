Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BBF42586F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791864034; cv=none; b=YjbSgAv15xK/gJIqxFLatVnnZjgZBfH368utPdIgfVNtB67L6aRxd/cowt9gQWmsjd0PlGf+OAdi2rHvelE3L6u3sDRZflKqrfDCcSVlFbLY7ejml146Pw+35qxL7yVyTmnnlsY3Mm/HR08LG+n/Lv6NL0dlDmik10bP67HBBIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791864034; c=relaxed/simple;
	bh=VliqYScaOlwCVKgsaVAZh79RXWREYosq5VbHYFJ9oTs=;
	h=To:Subject:From:Message-Id:Date; b=oC6+25SaOyu1KoIkyXBoQWtpYzKxgG8S8R7FcH747qW4oMyoJqjPVGA0MtZYhlzh2ocO+mgwnXI8QveBxJSHJqWbUKTPoHliGoXtJHvPq6KhxMXdNmSV1+XQA6w6b5MLkNkPRVIjUyMvNHDZMTGKIpCzKEC2J2jmeHL+ag8KP/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ee70KbrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ee70KbrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3386C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791864033;
	bh=VliqYScaOlwCVKgsaVAZh79RXWREYosq5VbHYFJ9oTs=;
	h=To:Subject:From:Date:From;
	b=Ee70KbrWWWHuOaFJ95DW7fvm0MX+8txonYSyHKkPMMxPu9BcgKV5Zxtlj6wtGumTQ
	 DE88F/6eHIN+JLmZlQrPJLCAAPBC0GjxO2TGS8eSbpFNrcBInbVF0lnZsO2oKzmT+K
	 dtInY3UWFyJPLCkPvJSOaGhHJC1UWZhKFvA1LFzXo59j2+uSqly4YZPKkYhnPPgKko
	 uxmFhSd1er68/H2GQB7O3woVV4GjtSPckATLfxj8NM27LJZFyqylDt+W1O/ATtfDH8
	 5DM4E+epuCAz7NTjJCG6PaUuHs7iSzwRv2up4moO8KfqVFi8MxIAGUpiZ/0Io3aZ1a
	 csMpa0eI0Erlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B056ECA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186403368.27063.10303072953842982378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427af767ec51f339b76eb0c764a197fc297c348d185f4aabb6570295de48e850
Date: Tue, 13 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791864033
