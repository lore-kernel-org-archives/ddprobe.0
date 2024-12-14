Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420771E502
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734198954; cv=none; b=WV19EBLF6sk5/IAyHtR+PKbtBYGpCr28rTulianINMHj+a5eIRMww0kQziO6epMx7psSl40XQclqswqQ1gh0lng35+suuN9uZGdej9S0MD1ihh6fAGbg0HTSVxCnZceVt5BXLvUwRyVGvyfzRXC2v6En943t06D1RtOFQrS2I38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734198954; c=relaxed/simple;
	bh=ucAU+2sS+9Sm3mgRP8u7rwiwgfu6LKtuvcn+ZcqhjJ4=;
	h=To:Subject:From:Message-Id:Date; b=IW2L7KSCrTKfr9NK4v1AKhts8Z0kIDFZVHUe6CYAiPW+olpmAt5g7NFa/e3YqxT8UQPT0nVdo7nW8TfyTTTI6fJc/hW1fLD3ITTQGgLTGPo6TyXk+1gKUz3i0MmPowI/wb3my1900WbKIbn1x9pYr81Vaf08tUqZ/T5+DJ+XUPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXDItQIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXDItQIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3904C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734198953;
	bh=ucAU+2sS+9Sm3mgRP8u7rwiwgfu6LKtuvcn+ZcqhjJ4=;
	h=To:Subject:From:Date:From;
	b=YXDItQIZUZ1mqxKks6D8lmr5LZ0REGUCSFwxrlwMUuBQGHh5i6N3WFQeORXnBwIbN
	 tk/aXLYL/SxE2zDJEHdFsIr53fpzBNzDTIk3haiOx3YJgz2OG4vvElyD2FwIkmWWeg
	 0mfnEZz2f56tbqPcZjfWPV3LRk9S/0/MQ+hEI9ygEfqHZSrQzPMZSREXARAt00gNcC
	 ItpvkkS33k/iymhzmHmmF+a2C258z26atLAjq2jazamy3qLOIcyOaM74wsWsTlWski
	 bu+3/aYqQJlnPVFnm6Vrsy7YlR45SpJCgskIlsqM2Rj6+CUqXz0oH567cFqYNKw52O
	 0FdW3JiqhjKBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9854DE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419895361.6710.4175585423371184928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb7fc049a284b7e0a7aeb4a0ebdd8d79aaed9bcff623033e95fd09454b713fe
Date: Sat, 14 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734198953
