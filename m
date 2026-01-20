Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF16E29E0E8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768946634; cv=none; b=PtKgMabgrcHrxDPn3ULkCCou+2yIrnpnIHwcGWl9KPW4YRd8KAzRRcG59RYzvzP6EJUKjNc/5Oj+3nacts5G7lcziXM4IlMTDjt1ZeZxfp9RD349vlMhoheSB3W0f43a9xem+v5/A3z2GEDN+AKPS2zKxXNqjJAM1sZc9ef+2CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768946634; c=relaxed/simple;
	bh=nAud3QfpNcjbMWcerOmLRvQgBOWAfrSos+ykukPLCjA=;
	h=To:Subject:From:Message-Id:Date; b=poPxhbALLh42GbGL2Ul3auiVM17eLPQTxpeL3t0RZP0/yHf8XuZy6HT7xXBA4y2bbUbY/qJXPwwbb2DRWEN8dEoW4fqVFS4iseg4RUwujNsaXLWFnwLdzY/ES258FLGUF5FTICXemKPTOMKAghkPMRgC21dYHSzkO4Prw+WR+Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV6DFqMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV6DFqMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A68C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768946633;
	bh=nAud3QfpNcjbMWcerOmLRvQgBOWAfrSos+ykukPLCjA=;
	h=To:Subject:From:Date:From;
	b=JV6DFqMGTmitHA1vc91k0An1e02RczQTi/mZdZxzpUOmzrHa/2XEJQjItLJeUyMac
	 4DFfkcO0JeVklUjKlggBgz7FGv+Ov7Stbd/rkDcoIiSnuDtBWOkn4HEGpdbe02ciz2
	 raLv41jIT0eMr3aC+VxqPVRWVsy+Wp4NuQqoimGHF5GcsN7HiufuMWYsJMZ7+3hz0M
	 15oNrGg7wXqfwfX7EvuAWxafBRFH/ygVVdNHGyZJwy1fCqccyvCfKQz+hY5Bk2bsek
	 QH142FmVOO5iw1F8j+8zQTvL+G67w1TEhqdYKuEY6/GCxWamj3JCYk88ubAgLZzLub
	 4brHzLgh0M24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90486D262A4
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894663358.24277.5221540852394661483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a8f8a34e2f8b3701e7e0f3e736c7c54b23c85394feac1c3b8f3f952e0a9696
Date: Tue, 20 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768946633
