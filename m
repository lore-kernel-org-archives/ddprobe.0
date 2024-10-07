Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B51E492
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728283554; cv=none; b=efz73n1+uOtNQWSXK2v28lbGHuRmP02rin/13WUttLISY2cI3XkEnuDdK5fRYhpz+5Cizl2LM9QhoWmLmyLtuhIDV/hPMySZFKYAU3CD6bGHg1L/hPwP+CD8f0nlDm5iid0aD0iMHVonfpc3kKMWgVImVxZKIjBGvMjibnOvkaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728283554; c=relaxed/simple;
	bh=Z1UMg6XBQbaX1IH8y/rKGIA//1CRaYkXCEWJrqGsn0A=;
	h=To:Subject:From:Message-Id:Date; b=A6rjCZcNZOLSFBIEHc4Z9JTRXWQN9itypF3r6rmOfnOXekXJYpg7ua3YIbfWuMi8FV/tDCm4AExM1e6toJR33UUWUckQoEuJrtMbW9/YZRqctSVhqXp9xv69H0VnKOmfpw0azzvgBdHCpRzL5dejXmg9tqY5/19JdPYbbtBN234=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh47wPBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh47wPBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E39C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728283553;
	bh=Z1UMg6XBQbaX1IH8y/rKGIA//1CRaYkXCEWJrqGsn0A=;
	h=To:Subject:From:Date:From;
	b=oh47wPBXl6HgDumDxhq8syPaAHGe17V6cf6Z0Xx/IObxajr6Qw4Brtg+7fsmnV/+g
	 49JVMS4AQr/Io9cqe67wutfh+ZkCwMIoVnrrQpp8aCJtoh41WMoL/Aefy5IJnPGj1w
	 dWxuICcevJ4XgmVGII4llsa1c/fX2sMHTS0qH4vXuW87LuNlLs8oDQKMUUF2DEC38P
	 MzYhKTzGTwGwdgRMPlphrB3hQ2ODEAuUBGqcs8xQxx+9BV0fZqRXXnfbNrKoVFAjd6
	 ERinBpDP9bv7K0GclWtbfdR+5noLog/jkzfpCCIsYu0J0OnUHrjPVAsGZCHcNJiYkV
	 26hmMABTue3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98082CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828355360.11559.5076390187698394599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99d1644a7f52ef3aa64d57b642bb175bc17c78003cec34002b524186a76962d
Date: Mon, 07 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728283553
