Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4053835C1B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790850634; cv=none; b=QLn52CANhg137mnjNS3FYgcdHG+pz1AC9FC5P2Gl51nj7JStIJPyO8UYl5GAV36rxWk8cn98QHhQ5iNRCJ0Af3WGdaH9SX966U8d2MyUWbU4ut/d6+Hz7oPV4+hUqCIDw3xYrgpcpaGM7+rdZAJfAizEovVKUrbDzY4vMVCaN0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790850634; c=relaxed/simple;
	bh=xmOFqabktXu4nvltkd5xT1Ok3cBPBiJkFyIA3caWeyM=;
	h=To:Subject:From:Message-Id:Date; b=i62eNge3I0aFwtqc/+Mr48kR8tqUBS0r66aw/ABhRRsrq0taxHHgfZht10cW5UYU+wkrB8N5GZtoN0efyIh6+Jx7EhKrJ/M+218WKMHtIc3SAOYiyc642hHojoEA8yTrELxuQYbZdhBCK7zPtg0NwdPozm5EFpSooy/oAZsCZAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQrzogU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQrzogU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDFAC4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790850633;
	bh=xmOFqabktXu4nvltkd5xT1Ok3cBPBiJkFyIA3caWeyM=;
	h=To:Subject:From:Date:From;
	b=GQrzogU/4mqc4ya5FtkHFDNZZyQjT8aDIn4kv6oVcAofYhe+4rjqszVtBJH+vEV/M
	 uchwy09P4flVVYfEjHizrnivJ3dlj+ff+mH8NYmeTSCYBM2dY6fiyRtEDHvrtjz+5Y
	 1wPENa3DKlLkCBrUbh3oXycmTlm8AP9wRThwhP5C5WfQ1VY1/E0rbrjbHo+7DSbS7S
	 kBj8anglqeSxq6SzGS9zxUPG592siS7TO2q3UYMbaBjXGZ9cheaqBp1C5dk4pX4Xyp
	 unEsN+hkPsYf1ZtJWlSw52jtzse+O7DxFh6oWRU27DFItcftWaV2cita8/0LMygvs/
	 5yeuqbcpGc2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E17CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085063368.5368.13570677322946072132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e86d06b1588331a3de66a8fa7ddbeeddeb405b273d7e6bf98f35f9bbe27e35
Date: Thu, 01 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790850633
