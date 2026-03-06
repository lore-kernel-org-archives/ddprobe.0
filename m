Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFC6331207
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772771093; cv=none; b=niyNiPoOql0QYWFJ9s9JbxyuBYkeFbjIXt/9X6odrJNrqM6DAtFiRQwpZJgMHIHOy2OSDkmwTVUy/zuQw25eX9Z14lank3ij9oAbTB8vCPTmAjs9AT9QbXKm4zowJbt79E7zwWUlnJWmJ+9ZvsHbmaEa89rm+TQ44vnYlF1fMUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772771093; c=relaxed/simple;
	bh=WIUR4/d14sqjo058eWf3lkG7ri4/qGmSn2jAv+ETwDc=;
	h=To:Subject:From:Message-Id:Date; b=Oo9Soiuxq4wTLAs1oudnb0xMYAMHcSB62C5inFRghxee7y1/qdWWQPkgL+ahlndpwKZTu5rbdlyy88sN8yJTT90anMV3jzfcIq9seCTAw0C/RzzkWyADAdERSae9b389K2QJJoYtPEStcV7fgxtQnJHuu/ATJNOzw8WclI/2T7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDk/i297; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDk/i297"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772771093;
	bh=WIUR4/d14sqjo058eWf3lkG7ri4/qGmSn2jAv+ETwDc=;
	h=To:Subject:From:Date:From;
	b=PDk/i297LSelJHCeiQkdwGD72qnb+DamJf/9aSJoP9t0VnCkWNT2bY/zjSF7PpfEy
	 v2/ikt6NOrnsaEzVSivLR408EaWifcaPfhfd5K5TUKUH/E1pofMkQkh62f2xwNwkTB
	 oF5ccEsJqOxRY2mHnbeCM1oAb/AtiQDIX58x3Riimueue9KrjelbrAfLvnLKYRpcw8
	 DW64Sl69rGH4PjWI9CYQ6MbXH0H0DyqoXJiyUkVOh7Gu+TUu1FMDmpcHd58fqoDpJh
	 0YwOiBtzrUCiUn0NR74+9zQuMU1azvgYxbE02fyXbX2tkC30/z/2czgco1602jb1NE
	 cvXXyiNZwAqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868CF513F9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277109361.19851.18048162254595470336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc31244e76a364202c2a4af2e3532aac89383dd94a5d775d32572a8979c520a
Date: Fri, 06 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772771093
