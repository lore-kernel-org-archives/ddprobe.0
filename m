Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF8025783F
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758664194; cv=none; b=nO+DF/vdcdA5DopgUX6Y9czWWddCVvXdfDnvRtgI/ZrDam6g7nq+ha/wenCxkZhb3FJAQCJnzaaTzo7RJvtzuqajBY92orK4WtnzY3wLG6VRmyvUtERwU0yNWGKpoR0J6sdyvJWIE/USOyBM+6/c42wzzrNjq4PktkxxIF7FlSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758664194; c=relaxed/simple;
	bh=JOa9WslLA2Pidga2ZF2YZ5oDW7H0KNBN+CdKcJXBcVA=;
	h=To:Subject:From:Message-Id:Date; b=EVSu0MQp+US2e5PmYDnqRJbh4kRb3aDqXA/1Gr6hSX09E2frtfPyvvcJT0/SKapePuKIRhjii8O5/QJj98YubZ7ZXq7q/qyoaO9yJHP1ONiHSUmNj7oKk1gMW+d7speE2J5mhGgSHw/i10nEXtkEtP4dHnCYWALf/3Smdh7gluY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwFSOpjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwFSOpjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758664193;
	bh=JOa9WslLA2Pidga2ZF2YZ5oDW7H0KNBN+CdKcJXBcVA=;
	h=To:Subject:From:Date:From;
	b=RwFSOpjsldY1P1EMMSHlfufMN7xJqESA3bKnCX7U1fafcfurs3P4aEErDz8FwmXK0
	 mXInLhuf0ZNh6KCP4U/VP1jUTa8FDN4Oe4h/CXHCvXGEpkEJPM/EBDe+5vtXBsTRmA
	 Py8c/U09nJm1VcbcjTvW+lKj6VfxS6KPpX060WizNH7x0YVCfQC+UOM1BkdP0idQS8
	 CNHA43ZQVToFI4uy0HNzF874SzzdLnIeY8RF78jebHeqFc81cNZEsJK9NfO12xaq/u
	 bC9YKRYZ4uOUknL3RGrOwfdFKTK4wWzX2dJez2ekqAVs5Ovd2D/4DmCHkg9JIPK2qU
	 9UPN00WNlqdXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C84CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866419358.23362.13375986327773673529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0487229b5d1b79aad00ee3e473bacb3dc92cf38ac53ff1ab13e692727f7036
Date: Tue, 23 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758664193
