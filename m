Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AE447DFAB
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785863434; cv=none; b=k7lvdvQFLWb3BdLWZn4edxb8Xmwdnf7ylibdS+fUEvrxn8J6tI4Etj8FjZe7paJUNc54ZEJ9kG4NoNffGBaKy9aEPJW6oaasTHR5GR7LF6cDMd2Lxdoct9qLzZg1b8kWy92vpZSgAe5+92CcGA2glC2XxWe1hjI8WtMI46iUFtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785863434; c=relaxed/simple;
	bh=IzLTjLIdIZblRjK+yde2M1+PZWvp+Xs4u1OsQzZbQWg=;
	h=To:Subject:From:Message-Id:Date; b=Cl0sJ9SchnXXZMiAVEQOKgIAYc7NaooHM3u6+imErJSrFkHvEPtWZEF6MnNDotzLtFvw42PAG74N6zbjySx4veL4+ORNcbfP3jPE4Fi1S1KTlmXDKPCB4GPuTJQAFNVCshCxY0dQN8IiCa2mwZP90rvcwGqaHceRmwnrcgyNaL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5zVFHde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5zVFHde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF72EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785863433;
	bh=IzLTjLIdIZblRjK+yde2M1+PZWvp+Xs4u1OsQzZbQWg=;
	h=To:Subject:From:Date:From;
	b=J5zVFHdeNAMMQVUKoC0vK0ilrNAsbMYn1JxYA6TeAqUFmk0I2zcpKco4vjFFJaZfI
	 POaATAlVk1MLcUEZnJ8Qb7j/K8k4rb2rUubHAMSYgfUsge32uD516QnL1oJqvHAqt1
	 5shbxRhTOWTHenlbKMgQDBQ02rZqAcqHZ8E++7IfvDgBvjWQchDeFK+nlp/PtJwFLT
	 yeenLK/VWV2uMmnGUmDYjx+qd9704VZq4HHmh304BVblye8RfeQ5xR0YV2uoX2sraX
	 2RXw/CVweH3NtbnIkLV6FEqGuANZRmxZn8oUxtshW1C81aSenlBSWiaIgi0zUI2jDu
	 tlZ4EAbrESAyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE1C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586343368.30312.2942331982852106944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f17850944836ed0c5d707cff62a26943ad01d34a5a276ec1dbd62a2b986c07
Date: Tue, 04 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785863433
