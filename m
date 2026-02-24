Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1535039E175
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771942494; cv=none; b=r04VcsHi7+eTY+zl1KC61jT+G/Q3Yb92lwON+G258eYfCbWhzmBxRjzNMvN3IljooQ/hJescoWxyXAY65nacng9wuvH8qmnEwvFe9WEgCfV9T9XV3f3A3nWzG8Gcf2jFyHrSQc4rBJrNvSTJJMtPkPkfYmFgCXoloAaLwbLh/Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771942494; c=relaxed/simple;
	bh=LdxitaTsEFaG7JGWom9m9g7dm/c7UwgFMiRDDALEeO8=;
	h=To:Subject:From:Message-Id:Date; b=MXXY2a9Ez8VHNpQx8lobh+eSoQcacmmBVrEmg+4dImIIg5XBoE2p2RitZz1b0CO6bmHlU/bvoI2N0srRIMvy89Uv1qnNMHg+6QQi0+D3TjaLI33FJ4GCRKIb2KEbHNTlzY3UmQSVrlSATjFE5yltgeAh5hStz5ZjnXWRcYlw+qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgmBk9DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgmBk9DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8753C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771942493;
	bh=LdxitaTsEFaG7JGWom9m9g7dm/c7UwgFMiRDDALEeO8=;
	h=To:Subject:From:Date:From;
	b=EgmBk9DTcTnYCJxQDZeT3JNBkyDdudeyXiC74QS5B+CHXXI72TyfGDm6leuztm6ch
	 dyniKn2s0zVzBVuInd8laae9NTuTW/dpZ2v+xtBX0hX4gWfFSYjIl6E9YokK0v4GvE
	 P74VZ+1xhcAeGottMpcgcJi83t4WWqfB1HEqXQbifNLGiI4RpXqxCO3hD4S/yknwPZ
	 7QQeZRIBr8Cc/9mBKhKRMtoGnGTSYApXPIDqTRgiCk0cgFAPTtYPUlgP82vuTDb2zH
	 JgnJMAhJUSIeZAKfIOQYrS1wdWYqhuK5U7NARLPcjQDUD0Z/UEvDr9WRJSAc18lmvo
	 Kb8KTJwcp/yEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96819E9B26B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194249360.27166.18108783975459251982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a597e7547c14f1eb3dd96a251f943cdee80814093368015a248846f9a524d2
Date: Tue, 24 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771942493
