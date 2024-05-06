Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478541EB36
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714981343; cv=none; b=pBa2zIj3/5KBmsxwiabxZdF0JPvGJs76N5E/W9pfWfAFbpq6jAbTCKxvCLtwJGaCcZWmmDVvMz/v9T9vGXpRHv07dLUynzDYU0YX3M6vahQG1e1jkrdXzzmcpj7XN1//dAax6mF3kGpekWC5Wh59+bnIuX7vwU4tY7G2oi97lIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714981343; c=relaxed/simple;
	bh=Il3aCjOmk6F/zm4tsAF9k2usUC4jqGaH1hZis8/VTx8=;
	h=To:Subject:From:Message-Id:Date; b=U5YuL5o9t9kdnV3ZISEcqzJf0G0M0zu7j2eIAxsZuUYDVAH/BQ1dJQofjRPAIHuTZLRwVSkZ8C+Emkz/gvmsbHYGh2RBsZnVMZV6g1GkDK7LOWjT78QihzVnptFsmH6QUjLPneZ8piig4BJDg3HZrW4NORYKEZiPAI9bZPZbMSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlQfDccF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlQfDccF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D053CC4AF18
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714981342;
	bh=Il3aCjOmk6F/zm4tsAF9k2usUC4jqGaH1hZis8/VTx8=;
	h=To:Subject:From:Date:From;
	b=DlQfDccFru3sRtLE+amHXjLfJIvDp6baKVXLv+85m3asXzDaFPd+6COBj+zbA96PA
	 TX1dov2IAzhCY6Z3NzzPBAxYBH9tOZ1TNX1gmCRWiBzjeKc9j34vrk2hz0uneNAPmO
	 VHI7mu8p2w8H8pUlLHg26hzeRKJ5nHOk9FX0UNxqJryF5e0f9KgLLPWo72wfRuU58U
	 1kaITDzLhjptkdmF4kJCb9Vz/B+1PF5yEaQ6VQx4IeRx56URfzwHJDzd89CkBQYpt8
	 rwh0GFZwOKl5hwmPEsJB0ufS+Ku3qMjxrkImaazS950vyreG5y+/t7vuTvV0nM+/BM
	 wtKa9nmezjDRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF103C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498134277.12718.11301642412109842579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fd00c38d5c216fa4d4b4bee3fc4a5982f84775e8a426cfcbfaa007c6981c21
Date: Mon, 06 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714981342
