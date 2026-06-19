Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3EF375F76
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781871394; cv=none; b=Q8vKGuHV7AlZQu/3BBIFFw9oqAh9tIszAINx3LY7VWpr5szrFeTDpU4EFZRQP9HpHpmSpy3mfjykrRNy6Hyjh4LuYCghepVVyz5ldnDfBu3lS+s/JAoVN0/NcrsGmVUY8LF01V+kTmtn/4D/62zQXbbqsqOR3ByHsWdeIIeDyOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781871394; c=relaxed/simple;
	bh=tDe8x73BeyhCapyxbDkb4TAntXKG+BIOtUBHq3t2qhs=;
	h=To:Subject:From:Message-Id:Date; b=RYEeMke4BhvPXd+1dV4t8JIwrS6xWEe+5489K+VK0aBqhHPUwcc7NXXYQpCfIKAA8kjxy/QClIt4yMIjmXi+fQqO0uBx3me242Dh2smZ/4SZfGf5TkoZUqBCs6VRvJ/b9wZoayn9g4eU/RgtClPYtbOsUBeSumZIfGB6xrMbwdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br7f4EBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br7f4EBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7293C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781871393;
	bh=tDe8x73BeyhCapyxbDkb4TAntXKG+BIOtUBHq3t2qhs=;
	h=To:Subject:From:Date:From;
	b=br7f4EBQNV3jZPxFuABvlpy3TfGyqAXkLxHyO4OXo2RrCsFpddznsTaipQf7ypC+k
	 9GQvIAUa8EgoNbT6I5Z1Bhxzrg6wqi8ccv2KeOmAJ4d1fc1b2Bd5YTa3XQylv6deuM
	 PyHOr7BQ1Z+PKxGfTCyzeOYKtrhIyMecG3Wo7strqKy8IhPI0Tvvl8S+ii/BjFKvSH
	 5HCEMOU5jhxC+oeBqfnWRZ6WML7fpdgfyimBQZsG0r15Bev+o6pvUEKj4npTm2dudh
	 EmAPALWqu/P7LujWUkDrcJyQjITvZshwNfrQ2YvVITaYHLTw91ljD9ONvB5IldvgTh
	 fvg7WCj1vvcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D4CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187139369.30179.791412062910704966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078939778ab16d486c1682e2eb5e84e36f79678a388897853e78091264ad6ad3
Date: Fri, 19 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781871393
