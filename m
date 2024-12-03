Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC00189F3F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733261154; cv=none; b=ZVAb/Cxlj9ohv8lWLfKesYqGOtA9cNSHYwd+0Cstl2OXMYGniSFBFzv6felweZaYWbhAhSecp5+cXD77TT/DOXezK/e8mtZqH2cRaVJL65BpCJmyv9dSsBLvodwlU19AIwopYapbfe+9xWoepxeQJgmsyVlTF4VpFvBUxUDPD4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733261154; c=relaxed/simple;
	bh=oKXGMhK5Gog7wJ4d1EIttkkph2sSOJROvqtJ9LseBDo=;
	h=To:Subject:From:Message-Id:Date; b=PaOeluqUaf3Y9vVQjDHvPmGoTj5SLdOCZiYNoSAHoP0U/nC00gN1kQN/jXBe+FW0SgHRkrxxVknNg1WczkNQoksg5RnGAg6QJmvKkbGoif+K6VNPa74/Dlhe2TJ8tzCEo99Y+IoUeTqOHrjFRzCii1gAYWvaz8Rhy3JP6sb3gcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SE/KiOMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SE/KiOMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB93C4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733261153;
	bh=oKXGMhK5Gog7wJ4d1EIttkkph2sSOJROvqtJ9LseBDo=;
	h=To:Subject:From:Date:From;
	b=SE/KiOMCu2mrCxOnZ+ijGbxyzf8ZBTsv9IxKdhFzDeQkaKnDt6HvjInTIQUSNBxqg
	 91+Rf7KdrbD3q9Pr+KIAIiVkwFTc4zHlIBNsZ5QCrFFb94SnCTfjDRe31167PY07tV
	 1rwO2csNOdtSTvUen8Iu/SwvHI9O27KBZO3JOL7Sdnxcs2FrCM9pl8BWhFm6rQuvZS
	 q2OOc3hJlXo5fI9jJrSz9c74L9rYQh6I7P7Un9DqjJ+ADaCpOg03gY7dnilhyvyf8Z
	 So8mdvBrvo99J0XyJO1qkz6/lLn0hEFoiLBvkmuyS8HCWPDiqAOqY/chqNco5N3Cgw
	 FyGV0S0WvG4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98298E74AD9
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326115360.15828.16845674174397628807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed8a9daa4910cee07605ac7fd99bcbc4a07b0ab43f176213bfeb8ce89e26f59
Date: Tue, 03 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733261153
