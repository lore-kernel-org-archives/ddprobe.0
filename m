Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359FA19A2A2
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730231154; cv=none; b=fMQx/MuEU8yYIbq9/wnqgEhBiq0FBWU6EeRnsk+7+5oSFkERwXQ36EJNJ6QddkolLW4SKJK5iQ5VLxriSqkVrmGj99wdnW5Pm/McR7RIZ+hlW8U5e8eEGwVNpeVv8WcUfwOafwx7rAfW4qgFIBp+7zzdl5vcfosOFwpg1xPFK1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730231154; c=relaxed/simple;
	bh=TC7lPRjSzCHRf2CVUa3jELXISE33Q9A7EMBx4qDnRfI=;
	h=To:Subject:From:Message-Id:Date; b=ngqjC8xnB2fwNyv6vX/4ffG+XHDUkHsfYkAY9hrZ7IxbAXRigAM/z8DuqrUNJUln8sCS1Tgphg8+2PYD0JEcpLelNTY38A/pK9rM+WwEB9qGjKXx6Bc/ERhGq8evJWlSP0qignpLLXVeIt3da5SSfMoOzf1PkO6RsE4+OVHexps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLa+oXKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLa+oXKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF62C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730231153;
	bh=TC7lPRjSzCHRf2CVUa3jELXISE33Q9A7EMBx4qDnRfI=;
	h=To:Subject:From:Date:From;
	b=MLa+oXKBs4GYRR9jGgEv5y1yyXLJGZfQNcz8yVstEp5p1N78uUh8m1CGlJBfXSyIW
	 ILnjg+4Tm7QaM4scrdBi96Z+UJdaqpArHejTEEJOhw4MrDLUkLT6TsrYdYQBWUf0pN
	 jBVvVBwp5MmVbJ3aRxAo38wJkmvc9ztPxcBRxB12DkGM4+5SeHJuD4ozzRayEObcvU
	 JSK3wE86Vnz6t9/+ETo4/2H0KVL1Tl9IpXSWMRuRyMWeoISCpv95wmnzcWsleFEV3T
	 z9F8Mq7IQhSCwBlxLzmsurQGosAuNEX9f5SyZiuyIgwMWolGk2FBRXba+/5lGg0tSX
	 kHh1eT0lBNHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E82ED3A697
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173023115360.31113.4740959547666799424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4529cd2190e36ff05ae077d5b0e6b64e6444e2e368504d613534926a45cdb8bf
Date: Tue, 29 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730231153
