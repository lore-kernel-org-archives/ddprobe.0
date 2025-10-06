Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27339ACF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759717194; cv=none; b=em4MnOcOryvxNUczScgiNgd+MsH5zjufwrudlFdRnWEiZXCJ5KjMeEmxQ3w28IxjEWmGVG1jKClJvj7ztlcTwuOjI3LQlm5bznfNBrkY08y1YToOroabd6RJ32lxNQtgO/+D6JmoLgG70/gKXpepNb4r0g+Eaqa9UsY9FgnnCKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759717194; c=relaxed/simple;
	bh=IOsqp4UfpkuJrzgOvlmamEdVAnKsrHkfwpVaVVeugLg=;
	h=To:Subject:From:Message-Id:Date; b=E0NDYYMiYDoiOSMpv8/zIugRSS/tYT0ZwO3RlXNUEHMrPm6qOtud5ijjJJdrpE2lKqKoq3QBbRhpOogYLoTwbw3/IIpc+AIcoBYha7mYmi3Stzkujt8Xrqbhl2M8qZl/GsJIdbCZ0rBomJuK+L4yaWcOaE99DaOij4tLyNglBAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDbn1s6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDbn1s6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5782C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759717193;
	bh=IOsqp4UfpkuJrzgOvlmamEdVAnKsrHkfwpVaVVeugLg=;
	h=To:Subject:From:Date:From;
	b=gDbn1s6m5iGY/Gt9fcW5jAnFlOCDrk9/nmwelC4b/uZxzGolL/f/12uv3wUPJ16NT
	 oR8NxGyiNEcq6oxdVy3OVEWYtePB+YPazcj+qArdoZjQ2FQG90BuYbEUqrMVnDG5Gt
	 umLvz1He8H6WSm1tXSRK6u+JLU+08yP/PyuA2AzL/5gqeF/jERAlXpzt5AyJskCLpW
	 F1KvHBsEXad3Y8S4EHxopBxn23Ii8aYTXPaMBDVsjUCYMjzzsScH9cXn1Z/RWVIbq6
	 7FbWhatTpmXS8SMc83Oc4V+PHtDZ7uhfM7sriVg9yHQoTu3/nxFymhameqQJMxUjo9
	 CwsX84iJee1Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97928CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971719358.990.3720926030149248773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c0509442076b2e128fe6a4ea7205103df70b38cff72a628f4f3a67e21a7233
Date: Mon, 06 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759717193
