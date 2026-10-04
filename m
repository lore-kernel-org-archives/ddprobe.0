Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC2C4A5EAF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791145235; cv=none; b=ui77DvhwxWGwocpNG4mLO7gDAcEr3FR7CSpSI93CWgkN0/UK3jZLnZgkfxoX2OjWQ8Cmg1rCr1nmy6V2PXFXoqLJjcTcIrS4AKzcjwt4XrGKA1Nas6QJugsABMEUYC8Kg1iPM0dpKa2UPqTD80t0L4FaH6d8/l1mXup/8tLyoqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791145235; c=relaxed/simple;
	bh=F9r9RESm7Awwq+hY/Wo5OvN1fbEn/lwE+X8LM/wUHN0=;
	h=To:Subject:From:Message-Id:Date; b=BFTQZLwMjOe3NUE/bvy65W1PPPg42rV2lFsF2B0xsTS4WlSsYOY7xF9AxsgCia+p5CMphe8p0GL8bwucMbad4JRbFkw7y7sKisWkPHY5pXnWURAekZH79h/wDQWglA/aIQ1NDQmunAQhzNleQ+Duabejdld1gpLqAxNUcgfuV7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ozpv4Ap5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ozpv4Ap5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFBCC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791145233;
	bh=F9r9RESm7Awwq+hY/Wo5OvN1fbEn/lwE+X8LM/wUHN0=;
	h=To:Subject:From:Date:From;
	b=Ozpv4Ap5yALxSfBI0Q2Srf/gALdMnJqZPoHg2mcsedDiDlh6bY7V0YzjjvZaafYlM
	 nNMtQzNyBgOkyJn6cCxFGuXSWVcl8bW3W7lA8D0qg1mv61FCVGsfX5UXgEEt2E/I4Y
	 EqoQYiD21DokIsFfeONXDwNS9A69Hxmjo8sJrpOlz1uIfLv8ch2VYb6C6vYGwbDydx
	 rIMeh/qBac7L+sRlyseXUla56abWBFK6hG7H8L7FnWF3Z5vqz025C9BJs2EykOYIcK
	 1R/Pel7QOgP9qcfuiRhywS/BINyIvMjIxcoVgW1N9P7p4KsayV+BmXaalEeY7SFW7t
	 fVW1E/iQm28zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C6DCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114523368.32583.11910057485129510926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5540cfa4942a333244fa370e1ecc4c0b5b39325503dae1554e05a54eb890a93d
Date: Sun, 04 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791145233
