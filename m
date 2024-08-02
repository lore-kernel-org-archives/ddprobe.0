Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE533DF
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722630954; cv=none; b=saQs4KIEPui0lYbAizVG1hUINqhBirm8UiqqTnQuvqb4uWW39bqnF+ZUTr5+YySWselVl1dCNrS/13xAErWrgJ8Nkp/MPuJ+6dFJ3y7Rz/H0+zcwFEofwvxpQZhXgO9TZl+O3H04oIINSRgpRRqh7MTnMhcXclrWnJiD9YQ7hH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722630954; c=relaxed/simple;
	bh=ZPQCi4KmPphMNW1YznHp1i9hVEqmRT5zzzICSQQ8Zn4=;
	h=To:Subject:From:Message-Id:Date; b=ijjYQ5hn/rVERx34/bGMJVyr42ZRH+dOYIm5toyPquJLNvSKvyYCmf0MMeZI/tUOLx3uFtgE7IbeOcAlju02oIXe9v3QIWdnOUzrhIXusUYVTPuF/0AjJCq3xWegwGhIXpQ8ZoYba4XPrOg9L6rTiMidPP0kUdWFRQ6+gp6p6rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnphOEpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnphOEpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B0FC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722630953;
	bh=ZPQCi4KmPphMNW1YznHp1i9hVEqmRT5zzzICSQQ8Zn4=;
	h=To:Subject:From:Date:From;
	b=YnphOEpG8ge3ME3jvGlG9MsGWOJUphs8w0eeCpK7UQXm1f1C1k2rLCmFVnX9Vu0Rl
	 NxB5tNM7wBfy2+OuEFe172TrNrUa9OeaSaUc/CFOhcogNpeWXMfyhQiJ//sw9tokMW
	 milFPmt6Ae9kVRJ+Uo6+z7+rqyUSoQATvE1ewTKuv/waoBYUfAJR0P/DSyHAz10WNu
	 SQ1jLxHcgu9+qziH288cSC1MwhP5Rpg1dwxMV3Jm/vt93+m7DeOS3nRYG9uJ3TJL5j
	 BMGrS1S0CXPfJbm98k0amdXzt+gtetz2ivrx3czDbPvVH9oXZos+CBzw2Ik5As5SGe
	 suYOgshJpAGaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5ACC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263095368.5206.12261609087683222581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4910f3e57a0c4d99618e4c9484e809c30dd9c20dbe17b2e33d2fbfdaafe3699a
Date: Fri, 02 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722630953
