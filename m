Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAEB3EBF2F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771287294; cv=none; b=iTEf2v4HTLY2awwGSzYeDD8GGXpqZXeHgFsqgCSc5X7k7nOsPb/v0s3pm0bratU5Stq7vhIuYCfHGmxBsjKHorX/MchHkHMQO0KcB45g1lFHe2X2PnQy8z6MZ2VKtDi2nt5LVHXQ6HunHHUeybIjk1E3aeqYmH67U+oXyEDTe0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771287294; c=relaxed/simple;
	bh=2mlJWJHHYruZ55vUZib+DR9kF23qCqwzv1gF3r9Q440=;
	h=To:Subject:From:Message-Id:Date; b=PQZ4xLTT6Ct8jHK7Gq1UsUu8PdldiaOIZZBTguxl2ElrSpH+d6QZArwUPaoWRL1TsA++7uqBc7Np9pdyEir44DpXPTQZthhiZmzTF1VgW6wbP38BvRU5bOWGIVHjo8b34zAMhzgQtlREqBIqLSKj836b4glE4TgJHwkkmE24Cvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcQUKIsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcQUKIsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CAEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771287293;
	bh=2mlJWJHHYruZ55vUZib+DR9kF23qCqwzv1gF3r9Q440=;
	h=To:Subject:From:Date:From;
	b=mcQUKIscktfsay8YZ1NQjUGFQzw1eGDY0K9fiIvnMlgIyiD7Nd1iM5C8d3LQYUJTN
	 E9LGkGTW+2EYWe3678m8oW4v34PsQQTfbwHgBzGqwcEoAbtw0nFmgaGd2fy5HtwfyF
	 Dhz/pzkxqp0j2HPPYcV1ge7K19GTYCQsbPIPAc09c8Hut4b+cD5+6Dxx/RRD6xtOEX
	 GTy15dKl3Aq+vowybDV1498y/39Cpn/NAJ1dDE2n918XZDMpbzZ6Y9neqZKwMJSpYy
	 DcGEiew6v2JQEKSYI0fkFHXj4HdEtE2RbWNn3T0zqcaN1UDFdCBzcf/SRjHrSSTxzn
	 nYvbO4b5H7VGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962BBE83844
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128729359.24778.7892928617068033850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252079e16762ac3bb7400002adf97b31286d5ec09fb4bda496c02af6a2b561c3
Date: Tue, 17 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771287293
