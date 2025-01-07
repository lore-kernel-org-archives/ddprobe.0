Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADA31E47CE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736248554; cv=none; b=L4ML8SbxYWIoRZfWbOXwRn1qwedpI1nR6W5WpJXv3p2yyKl8yn3RJJRcOW9X6rv8WBUobyg2SO3vAmGPJmMEmSXA0E3Z/5bzVkAfC8LhCX88HuV9WfDvfJiS8qyaZB1V72eqzS6yI+7mTzI9I7X5YQ1FihTHdDfwOxtcF2YNfKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736248554; c=relaxed/simple;
	bh=1w3a1FwpynLmYUVcmuGpkbYE1Qsie0kwEczSqKADGKI=;
	h=To:Subject:From:Message-Id:Date; b=FvVcMZibLrD2mKkREp1jZtQM99Vs9GSxBre9KccWKvsoaS7vzs/GPOl8uOh6XXQpUBszmZYoyj81K/K4q0CqPDsY/kDOjTRRY7G4XAcZO1fBmSLiTvs9Rj97S7SG6Hn/HLWa2IPS3gbkMrKFUygGU+lWk693rZ0Br3spH3O5y/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWEoyQea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWEoyQea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8584C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736248553;
	bh=1w3a1FwpynLmYUVcmuGpkbYE1Qsie0kwEczSqKADGKI=;
	h=To:Subject:From:Date:From;
	b=eWEoyQea898YlrXVTmdw9hCbpUO3bYfiSss1UUp/IePGHEmt9gKd7ODZoWqLdbDzW
	 9FysHvsZ6hjKLd5skMxGdn9k6DTluivGKmw6HmHrXcevrZrQaOODdGE+AU41dnaxir
	 22V0D8as6PUWkRZnILzSKB5tYixuarPFc/36vlx3gni8JsLR2tcQBJ0CxRCfiHKxTV
	 X3XtGhgBdA6V37o+4vVAOmmPzZMqeLDmidYLcnOyGXuaGBSuiVihrjyG9LePgUvBIW
	 OXPWmGiwn1SawCAk+X7FfYjfOIFVw4Y8VoHynuWCtnSlQaLYIv5lhIQdGihMah9Rgm
	 RJvGsak1OEdlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB0E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624855359.3840.6336575068634919783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e14a1e60b70712cdd65ad3b6c274eb7caa97fd4f1222a5fb6abb4114bc4d1b
Date: Tue, 07 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736248553
