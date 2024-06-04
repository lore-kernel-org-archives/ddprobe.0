Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA6F4A07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717496123; cv=none; b=gZ4bFShWWDoHIlc+330yzCWKWgr/mBZX1PIAnpANfjKpDl3R1wntbXerWmLActzoZc0CqjgXrp5/u2HLFHs7R3SifQlL/GngSg78WYLpzB2JNSTtFiT+ues/f8l/fLiYrY32PM9S2CtmjIldNFfWjErH/o+2vt+mu7MZlXg4wEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717496123; c=relaxed/simple;
	bh=Utndr3Zp6CqgiNX/A/M/eNKpm9NhcjDP7EMavksEWtA=;
	h=To:Subject:From:Message-Id:Date; b=bkvB7VtCkkBXOrMJJOtOG52EmHzVU0JEAkE8pNhT6YCqnd1BXU3g/2xXI6L58EmuyJzb8YMw/UC71XpfYZzXNB5sg7dRNUvZ57MBC0tdq1I+2/td5+gxhcI9iBNX6wRtUbviViWuGW24EeFD2jNEr0XKKv+VP+QMHRo09rHPZcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scMeggCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scMeggCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC900C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717496122;
	bh=Utndr3Zp6CqgiNX/A/M/eNKpm9NhcjDP7EMavksEWtA=;
	h=To:Subject:From:Date:From;
	b=scMeggCVuB2H8lRCdf+3vU7kuCjaI6oC2XlGMpYZhqPq6w9CfUv+JCuogZo31xOxX
	 rfcm4uh5HDFogWmPG8XD7g7GFiWXU0FUruDv2ReqiRB+xVmtYZqffsBpD0zPKhKR6U
	 Xix6n2CjUb/NrIF6WJkKurrt7STF5fX4A8K0TuqoDC4xX0LDph/xbc1wQp6f3KvdKU
	 gSdDWx+SpDkc8PkNWqBglB1K6D80DRXnvi0fDHobVtQX8T9mkJPVg83xNHovpvoDOW
	 iYXFzsrM3widyfkF/A6OEFV/X3B+mi4X4ecOOiZjOrPmthPHIxKR9B53/VNrLT7vGR
	 5peKYlpS4TinQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6916C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749612280.30364.11400766222913337252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb805f0ff05ca74a319772016c23916982637ec03006d1fdfc8a1df192b0703
Date: Tue, 04 Jun 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717496122
