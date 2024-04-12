Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9FD824A3
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712928563; cv=none; b=lfjJkf2Frv04X30ziTjzdL/ioSQ3thsmzR+WCFXIOpWrwRO4jYNDR73VQJM7wROzzF9IIul+Dq2Dee/oQmaRUrM4lohkbZpX+5OCNpfXJkUR5MIRmZy7I7oRKpJZk4Rn5xLmKgV608Ph57CqJ1FekMaCi/9sH0o4necuYQ69ok4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712928563; c=relaxed/simple;
	bh=ykVv38qdsArfKUoWG1CgdfXQMpeKEEAw2ihNj/ynAEw=;
	h=To:Subject:From:Message-Id:Date; b=ke2lMTPjz6jts3edDSjDcinEEMOly5k+F3pSykM/4Ez9J4bm7YKsp/qe7fMdgYZIdFDI2zvBQtAqafKm1DCYteRsXImWvxepcp2Rc5+Elmr+f36VP/dlJgJUCsLdxd563WjqtwWIH+h86Gz7rIwPdE/enSPXcRYpFPun31OOsEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hz28/wwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hz28/wwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE267C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712928562;
	bh=ykVv38qdsArfKUoWG1CgdfXQMpeKEEAw2ihNj/ynAEw=;
	h=To:Subject:From:Date:From;
	b=hz28/wwPN4cYdz3TelVXPUKBoiCTu4q+TJbeyty/FwKxkfEPn6DJjcjIGv23tsc+6
	 AixlspxvomlnNSXZGNfCxoaHPRxNhDj5X0gpTfOQ39vebfa3ng8rIfYbYnYKrf39YB
	 S+ixkMua4EebL0wdqjcoXfDXyi6+s/CXbnjG8a2xcjWoFi7VX7ymJR4Y+B8lLhyIQv
	 2ssbDi3YXJA+htk1Rom+120Jb+L431JP8bEEWUFuUggjb2ovxIW7RQQZwAnrpGvmdD
	 wZW9sbekrty2D4TZdkVKWDW2JvIHZPEWqYMK43P8MOcmV51s38SvUnsCWorQ5R3gA3
	 Yv7i7JLc6yi2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9ECCC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292856275.12410.15863141173262047016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b496114b1346bee6ed491c3b2fcf322aec251b6a403f72fa69fbd8b8a27ecf
Date: Fri, 12 Apr 2024 13:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712928562
