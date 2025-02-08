Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B81E241129
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739041555; cv=none; b=FDMrwPJ77EE4o+iMZOKGvTUCh0BsQsQcLUrtPpigmH/DuNCgsYAonb07dqSHIKTFFpf2n4GDThjkWa8T7rwVuVltGFF2D0dxaEyUwqClhPAc12TY0kgV+IfURcNQDb9R6btwh00IQqIZ1HAi1nN+ZeFIWkt7VLTSdlKB9qjJKZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739041555; c=relaxed/simple;
	bh=148J07k+R7JGaY8aPY6SdOmNlZ5EIcrsEbVFuqsrn+4=;
	h=To:Subject:From:Message-Id:Date; b=rdDZF9rVXjTY4MIy5fubavwQyeKgmaA4g0ehkyAQv43IILc416VOqiLCmMmmwvYzwC1jf/IfH35sPlsMUdLUhTSOZnD8D6ywVsoF4ZfEPpX1mQvdX6x4XwBCfBXDpWNJVPpDLF4Ee61fExR389eJlFrVhlet6atfTHt86Nj2bQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQzNgj1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQzNgj1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D2BC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739041553;
	bh=148J07k+R7JGaY8aPY6SdOmNlZ5EIcrsEbVFuqsrn+4=;
	h=To:Subject:From:Date:From;
	b=CQzNgj1jUFJ4IlmAR0TmGKGKD5O7Qti7wrKIaJY551GzPYqTILeVW1EmCKSSw0ULo
	 7wuuT6sm/pWhbgcfeuQvq7mF2NncWCsykhCUOq5fMn6Yn0KwuOlUfxIAdZq1Smx+R+
	 kM8XPMDAjNLaqe9h2RzMOlnW08QHxZ28gIh33kC8ORqUgjnhpriorUwU/XkBPmER5w
	 T2zuu/X8tQGy7ibnERNpm6efdrNMYHpqeDI8msE1uIMteSy/LRwWOrCIoeeTf4kunV
	 75Pk4UktXYbAFWiHJ4C7/4skO4iGqnrwVYD/+uRAMAwpYS2Y7tzT+Wf6Hx8zD94Ryd
	 32VqbQu5+0iVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B45C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904155367.672.12555890790986898313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae16f9523f4d115c7ba194ec56846f82130c8f7f2a0fa95fd8cf366d497304a
Date: Sat, 08 Feb 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739041553
