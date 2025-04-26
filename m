Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBE2256D
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745706595; cv=none; b=poUouvTNx5wXXQXq6/iBxU2Eu1YElY8s7TtNqnN5SainHv2UM6EMvARNK2LKd8T6rFq+T0occL1rNnosJEcsbnryeXT0C77bTw44G25wC7Pp+o52LSZk35u8GKArBoY/ibXBcHnXV3I4hVaroL0WqT9y18zdIJObbE+sF+ALipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745706595; c=relaxed/simple;
	bh=Xs5gM/cvqSl3OGGWlhpmg4OJbq4xY24w7kD/eEug3x4=;
	h=To:Subject:From:Message-Id:Date; b=BuO13qrUcG309T03hzyhd2BRkjU7hcW0gtS5ipFgD6JOQzPGo1O4sfn8TS+J5aEQKslbQBPApZOnojlRS+Dq53VRAbZSbkl2PPjUI9KuuPwB69VzuV73tOe5sh+35qQx9YjMcRuOiFarRsiRFcLGvW3kcZvKTCuM9apB9lbZKJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2NqTg0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2NqTg0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E0C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745706593;
	bh=Xs5gM/cvqSl3OGGWlhpmg4OJbq4xY24w7kD/eEug3x4=;
	h=To:Subject:From:Date:From;
	b=t2NqTg0WZGC2CZSwWQihCRNVHqPoGlB7rfMTAzTMne9q4Eaf/hCaUYhcaE63eSfev
	 jPkgLp+kjLuKUq5wqLlIiat7rTtFveAjWYN3ZcriRpMSXewp5JcLhoYgFK8mNZatNg
	 9nFEpamKzkDW24/YvcM/Y7gEsl0D5yeyY8zvZzblffxZWQuEPhEYHSSGtYZAX1n3p4
	 0gO3CixhIg1j32O/oL1JPZaXVGuWd6QNYItKYHCkTnpJjAcTUbZlvAsMntvLcivSH6
	 cx/2smqfWAKyVYxKFD0OdBahAbQ2yMyyKkML4nZVYBzT8MMR2lsBexLtIT7ZTi2hDQ
	 FoJ6TzEbSZvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570659357.11894.13518681354390617034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cb5a33dc89507d1dc3fd55d243e09616ffd2706154664700599074ceacec1a
Date: Sat, 26 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745706593
