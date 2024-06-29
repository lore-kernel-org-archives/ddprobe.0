Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EBA1CD06
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719632063; cv=none; b=RLMZAzn7RrENa13KcfZ18B/0FmvMRh1J8nXx38EOWAVqrhWipUJOUPRY26Dr+Up7Ny2l7QhkmC5qz0CZat9hwesqAgxk0158eBU2PF/l8KnwbyHXr3nNuP29ub6onHscCW3KndDN1CWTY6+zs3tar3qDhaEregngIJyrPNw5B1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719632063; c=relaxed/simple;
	bh=gULgTWuJoKbcc0Uxh8+eVJ5V3KZESOVDMrlV4/36qRM=;
	h=To:Subject:From:Message-Id:Date; b=hS9re8+M8CqimacRkLmi8dMbQCvvTf5XkJRPb/XZBKha/OjLW153vtVSc6arh7Uv7V5JUr72pkLN/zSWqUBiSQarzaa2+8ch+dRykR+/bHPnpRWmZo0e4TyWazoT9EfWVnwYB5AVM6m6K0v0BiumFCU2BISHc7B3HGOjYnS5UR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjMb/utb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjMb/utb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F30C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719632062;
	bh=gULgTWuJoKbcc0Uxh8+eVJ5V3KZESOVDMrlV4/36qRM=;
	h=To:Subject:From:Date:From;
	b=QjMb/utb+BivaunxBZLdDTklADo9cEDeGMft0k2ivFKQpOA36EBBJBi4IvPJEg90G
	 LQt27IZqaQ8SlQf5biYlLBmqu2w3ERfPxySIVdI3yFlSOf4fGBj8UNvKwUWzub9UzQ
	 yImH/dZ81jrOfKFc9f+FgsdwXRjX50srS3ynZMNuHHzDc/lKJ2oTZ/djsgV3+gxPID
	 CTUpzpBjT4Cvkd8CN2rboakbjMQ7psOMSST6u42ZW9xYOJ1aTfvpeISFPDv5hOMU2z
	 gYtXa9a7b2ZoMvkQpqD0KMmGbOznlz2hZRAtDHVmj+ijbQbMzvRRPnY4aAgkGGHqDe
	 9gUxLFyrnxgAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9541C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963206279.29053.1025650948443995083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afecfe91a78316b9949132529637672ca3de84ca26bd0738da9646934884b1ca
Date: Sat, 29 Jun 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719632062
