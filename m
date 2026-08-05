Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57828213254
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785935434; cv=none; b=DPfImzDyQoEtHhw6qMNrAKLr0LUr2K956oIA9tLjs8zOnOn+CBAigeWV14mPy6co972hPl9Uh4Rljf+0t3boOej92KM1hOXJGpmwyckAbHdzp2PMMx57GjPCRQyFCDORG1ml8I3RAds4olnFDp2C9zh7MQ+Y3xX4fO0XZI38mMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785935434; c=relaxed/simple;
	bh=cxFzMhqqmw9CiV9mWVxDdBjzZs610IsoRBUcOkoyRUo=;
	h=To:Subject:From:Message-Id:Date; b=h93ECveyvLbJpzunCwhRHWn4wbqpb68OzsYAP7ykPiQUZt8yOepnt3X4DwbK416YVtHgUnpVFK8nDbxqALsld2slNL8GPjvNsWXmdpU/UTOSnPmIjb95oQBmoHxX4xmRXAbCPQ27GICXVKvLboOeYVeDpVrNdCJuW/pHTG5vbLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvc5yqTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvc5yqTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1488C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785935433;
	bh=cxFzMhqqmw9CiV9mWVxDdBjzZs610IsoRBUcOkoyRUo=;
	h=To:Subject:From:Date:From;
	b=pvc5yqTX0iCleqiRbdd2Yd0nviU1bqebZh2aL2AZgZJugXt0LocrX8NxEjoBTn2F2
	 JM4zELUD0pwvN0miUCcY9LI0jyqWvMAPLTyF8CoTlHExkuI0yNADRJESsCTRju99cq
	 kvrffdnqJJx0UT5BF35v2tZgQxUqGeFZOEHAJbxfaj6HiBAbAswqT/av9tyJJIBzxE
	 ZqHjEVpUmOMs09OH9xSj8KrgoKjcdBVpa6DE5brCar0YhGXvx/mUT/4JMpST0jrQ8I
	 +LxkDJC/oZ/gIgh+YVrRk1UsSTjTkujPvJBcaobhV8Lax86HiNA1LMIGlSAcwTQ4Ls
	 IKI4ll+FqrqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC445C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593543369.22253.1282823376751020301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401cf69b95388dee4e7067c0597655c7aaec7bcd70441c4b890eaa5dee38a312
Date: Wed, 05 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785935433
