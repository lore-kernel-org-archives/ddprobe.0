Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C481DA60D
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788590434; cv=none; b=Dvs0PUEePZRU5WonbxIQUPz9B9zg+fSFCnveMFIwGU/J8znAC+XTDEUjb3K6mdcZ4+FezVaVK4WaNpgtTlHqKrjwE0SJ3gcsoXfdH35pc1M7P/i/6oQB2fcAX+T7zKpB3O6oAcOjWFigcFdFeczKO/w3+9shFTiFEXugLi4xuYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788590434; c=relaxed/simple;
	bh=So9D+UuAqfWhrvU+kFKljB4K69RmH/GR6KEO3S4lfGQ=;
	h=To:Subject:From:Message-Id:Date; b=B+X+2C++hw9z0MJh9+tFsoX2fwCPnFRZQ8UoUW95wMDTEHXL1SkP1pTo3cquf79zQMy7O9e9+dBvSRRoJMy7UkAWJ3R8HNbF4iOtutcgee7Peu4uocJPszIsbVvWqeBMW5IQTYQxd0DOm92EcPW+5ltkfqmcNTTMUwfXf2lzobg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2LS1hAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2LS1hAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788590433;
	bh=So9D+UuAqfWhrvU+kFKljB4K69RmH/GR6KEO3S4lfGQ=;
	h=To:Subject:From:Date:From;
	b=G2LS1hAjvcZi0OAZoKjS+5mD206ivpVKXAgHGe8b6Pa3xPI3Mklxx41hquZ5J9Ka6
	 3MYjjCeEf2zphKEJFYAPOlHBH2d32ae6ZLFT8IyVdqOobx3kz5erR5kMeSX5SqMhDv
	 l9tH1k8VxRic76dLzh2kgZ+rSwBLzB8XWHk/HpocjRl6I1eVZckHy7mgEfgDYBkhZQ
	 Ui5tFiM5lLyrcQ9UdYfDuKmMS76QsOvtLNjM3D2iUa8ORqb2jKhUnbubmCsDE+4wru
	 25Cdx5BE0+S1dr/F/RobX2pLqNPkcrwe25O2DdCcYBRujcKQJDHnkFMScqqbscL1WG
	 rruOpOMOb+NtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A4CC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859043370.21675.16277501740606639087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b849788ad7bcc310f449a372de3c00a2c876fff2f05657b20f642713955930e
Date: Sat, 05 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788590433
