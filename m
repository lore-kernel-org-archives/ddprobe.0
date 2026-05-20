Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518F52D12EE
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779295234; cv=none; b=pxuwjKQWslOzT7gL4hnNKvcFDo4W1BZZ7QMD8ABK5Gin7Ca15JTkr9ehq6XO48QKivSBfNIqytc25scVpRsVWnH2pX7Uf7EZIZVGXFK80kIlDU6aW9GBpak5aoALF2wY12syDAVOeVkCQEhn6MG1icGGiZk+7gFTAZ5yPoIcE5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779295234; c=relaxed/simple;
	bh=gWR9ix66kkkvjWkaSOQ+F3h+6wfz4gvJDNUYKOoOxvE=;
	h=To:Subject:From:Message-Id:Date; b=ro139i471XofFxfeNZn1bYtPqKm3GL0IRNsPzuQUeHJuFKJJHY7k65ONQbvaWN4QI1+wxuoPdx9WB8Dzq6gLTdYwl9bTLuIHADlWVkNWO0YVQhzFr/KTaB6DKiddQSNVpLbY8S7MQp/UBLpBGUyFiGW+fEQ2szgHLNTOzpGtgYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUH2aEnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUH2aEnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6F2C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779295233;
	bh=gWR9ix66kkkvjWkaSOQ+F3h+6wfz4gvJDNUYKOoOxvE=;
	h=To:Subject:From:Date:From;
	b=SUH2aEnCRW5c/crPPHmOSI/OjVzJji7iF7ptWLfv6gkhSY+N2G9iyqXa+dZnnKHCZ
	 YI9cs4C+5f+RI/vrJZYSUbv+Fw6hN9JGc1YcoWBFqtKH7waaNlUWMClj8PvKrrRaG/
	 RI1SdJGf4HDf3fG8R/RY+pwZG6vO+VLio8ubGxXMYoc5luVqY3z3UdNv8lhjdzfNHj
	 T64jZz6aRGEVOIyJ0BK5KU5Sis/8eR0u+S6AOGc2bxBuQI8o1+pOZcQvmc5pYJbd4z
	 P7uVjjE/A1waE5qvShwjWHI3aBHJNowwT5em8/EMhFSy7bF39KguQT9VcTAIDOi4Ez
	 vUbXkSCz+rCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF208CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929523370.12754.7140146800680699376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc79c537c8f6d0c357a2006823b40b7a48e83fd527f3a3314f6689d6001642b5
Date: Wed, 20 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779295233
