Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C89DC2FB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754705994; cv=none; b=m329H0X+82qvzvM4eVHI82A79fNoyELBFwXaWEhqitw3N8ZIiWGJZeFL4+ZVVFJc5JLYkxfOUtnG1b1VI06xMazmLdjFMytH94Z85l1vJUgShbBD8o9LsH+jrLfh7akCVJGMIqhNMDYW9nsOT9B7sTq01HbYSU1kQhlN2EQQSN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754705994; c=relaxed/simple;
	bh=WJcPj2tIDRwdAp9a5IfGl2/jBoHzsHmGrr2lA/FDD+c=;
	h=To:Subject:From:Message-Id:Date; b=Fv6AwoGFfOqmH1YOjgsbA7fjSviv2e3wHe1Frxm75l6oDXNtXnE8jVcNwkmO3KFUB1gSiL5tH6Fs/fawyMB1HJlElxAAGxE6OWLxG89n2hbvxYma61Br8AWGtUkc6rTPyDKUNZtZqnYrK26ayNnCSTKG5WoNbf/Jd91Z6TTyh2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX50BJZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX50BJZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301BC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754705993;
	bh=WJcPj2tIDRwdAp9a5IfGl2/jBoHzsHmGrr2lA/FDD+c=;
	h=To:Subject:From:Date:From;
	b=jX50BJZAM5qVHiJcSmzaQ9XlQ0D22gYas7mo3WKrCMiqencbtCmekf2F15UoJ+NhF
	 MpaifBoWRxIzixjS1B2uoVhTRQKaa8CBbncZR1a83YRNPfwridAkfOOdT1+Z6+eSlr
	 vNrpRuYLxgl88r7zx3WYqetelIKHH5x4Bxzuaw+7T8Y/MGgY0AwixjuceJgpRKezLj
	 VQ99hYNUr5NYsw7NZrpjHy4djug2ayNVQVwLUKnCgWKzR7o6zJJ6BA9TLfAM3FKXE4
	 C++oRADJqb9MLB+5YDl23wUmvXgmbhIFXPpYpD6oD5fq3cPemfpr5hUoVUziNCwnMe
	 jCrbFxBUX3a9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205DC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470599357.32102.9944555814582495635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09103088234f35df0bdd0b32895f692b28053ab8d70ca3bd9d67b636b385ef91
Date: Sat, 09 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754705993
