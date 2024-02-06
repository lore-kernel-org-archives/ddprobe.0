Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1477E17741
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707252497; cv=none; b=Q95p1VJnv3Gqbvl6TigMQOzm7pd9PZCtMcmQT6KvBPaYq85vv7S+9EgHKjvOBZvLZGuJwxFVrhvCd2lYJ2sFLRLua40TP+LaLONQHvbFYwS+X9FdIoNSCAyV6eQn7dbqlATo3/Yt9TTuHC6iOr87ffvTtqDc0jBOu8+I9htv6w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707252497; c=relaxed/simple;
	bh=gL3VcRmlRqRKRhBxtR526fw1yY13rPuX8GlY6V0fhOo=;
	h=To:Subject:From:Message-Id:Date; b=DXtJzEJW6jURc52KAoxuoWM6sniwpeHnJv6gTta019CDpPwd+Bllmv2dZqFLlCK4pcQ5fq9HjyKQqWXXBdlMfaKkFnk7cbrkixrdToWuQxnDH90NKawj5aA3yN4RRBcwgw/8WzqHF21oaIYW03JglTC7SUqJCivZISwyioVCzK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQQTMxRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQQTMxRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A5AC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707252496;
	bh=gL3VcRmlRqRKRhBxtR526fw1yY13rPuX8GlY6V0fhOo=;
	h=To:Subject:From:Date:From;
	b=hQQTMxRyTKLbil6b2+06pqqdqiaiGwqhd0jxvZp/OaGcAhUnqJrzJzT/GC+4j0j44
	 7ioGiFcBmM4To1r+dHHItcX+iVjWp8E/vc97LTpGa90th+CL7dHR31lj3z456BNUpH
	 VQRiu6nVMJR1AxaFjoLkGdZHyoHxhoWlLnVXRhMIxSKxDFtmUKjdoEL3kYr4ANAerp
	 qL9ML9lpraF5b9za2te63IrscAmoClocCs3yNRwG668Ss7p2D5s7dcseOI0+eh7C3P
	 LTk93+bX4wL1v4xh8MBNIRbQ/i9RxkXxQAIHDi/TBu6dLf1phOB2E7excwKLVnJvId
	 9gNv/ei9Kk5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F87EC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170725249638.30456.12578113566234234988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2752825df222f5acf01e144bd10e003ab419be5eb4d0a937b1ac7255498fbe1e
Date: Tue, 06 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707252496
