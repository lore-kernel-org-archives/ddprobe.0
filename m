Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE1827726
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736168754; cv=none; b=VQzwqEf5GNaC6DYujYbT3O9eFl7ubnsil/0n+viB1NoQ5LDkfxK6L+K2O0iZjaS2uiO7wTblE0+xRgYulojmpL6rvkbG+bNHEDQ2qV55sS4L3gAm2GRuPyv9GryCMlIMHeoJo2zbhIcgbo6gV0QiyJvMj/zNuTR8flH1WenjJ+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736168754; c=relaxed/simple;
	bh=gm+SoYW5MpyH/eigdo48hHtlNRQKKH/QugOpz/uN+lM=;
	h=To:Subject:From:Message-Id:Date; b=LbliRaw41KwqvjnQshXprqur4o/KGQk7siute9oF3H6pnTPmgwzttt0AXjUAIe8zyDopW7EB6bbmw65+/XrFf/XBUhmLgICtxr5yZtlYLcsGjkEczOitdqbEMIbXuVBa387a2ChurNnucYXdoW8Ufrrkiu9XwjBE2LyjT4p6Aqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqj++EIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqj++EIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0141C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736168753;
	bh=gm+SoYW5MpyH/eigdo48hHtlNRQKKH/QugOpz/uN+lM=;
	h=To:Subject:From:Date:From;
	b=Oqj++EITW2BreGipUDKhrLuh6opClmOUDn8709oMb1sypi3S+ABtHQx0g72IZSmY3
	 767D71zjwvzcyTqkvKZUCiAlfwZXstd//Xn1oLJon2bFN2VZWE+oB+S8vdztEuKuVm
	 LTLOSHnrSgUV9R7xamYY1Xba87sqQAtVn9yuHCh30vO/jh6nottpss+E9m495y+aL3
	 BE1xKYMQ38ANWJpNqmDB4YgV4h4JkbaWpyO6fAgaSEoJmOcwLD4Xsop/RNQfiCZx2C
	 FEWl5P8/Xa49REbXjnAckUMMAMh92/CamKl5x7E2WST538sNLPWEBf6NqOF+h4zaQo
	 2IrSkGn51QG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE59E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616875357.29515.18223370631533995570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bdb81d429bb712c4b3122e16d91707ce66a0750192d964e88e248851ccf9cef
Date: Mon, 06 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736168753
