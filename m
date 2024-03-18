Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96414C84
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710741496; cv=none; b=bxOyXUw1kN5GwMYRRlSAPq6ZJoXyoyN7Cr2fwZRtfWVgiybKRwSE3HD9Zz+UMI6441dpacXQFSItIgoSxC/cRyft53RT71YpCyLM1NJzvnppVEAFJD/p+nZX3ekI0fxNkbZPLiX0uh3vzgdak9UfT5m/eSm+Trag8KLQI7riX0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710741496; c=relaxed/simple;
	bh=k23JP6fpeMZEV8W3m6PdbxOFsEKpXoWl5/f5tSwxzto=;
	h=To:Subject:From:Message-Id:Date; b=YUqkkTc0i/hOASVdQZK55CS9M58zR0PBQfzY0xTVMNwnvdCdo3D1PW7ee99Yjm89/oF/wYaxtXIqicwBYf0yuppiv365jHR1LwIB9NFF4Nl6TQQvXnRyw7H2tABkjeIL8MrIFfNhhvmab/PFB4VnChvQhSEWJWrJIGzwMB5Jf50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4iFtm7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4iFtm7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E0AC433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710741496;
	bh=k23JP6fpeMZEV8W3m6PdbxOFsEKpXoWl5/f5tSwxzto=;
	h=To:Subject:From:Date:From;
	b=V4iFtm7jlw8wpUEoGZOIPdR5lXrA1sMfg0c0RWPzG4IQoXfQ/pEgWs2LrmkmxVRxL
	 U/vwD9g9dpfRbHP0nB3V/F+z4q/tjcmKs0Fjvw/NmX8nq4OULutEDK74wtv0DEedXu
	 GqV5ORnakEMc+i1JMvNyikBlXb5fo97G5CUb1iKYzeu1MT6TgPv2Lw3cDnFArWVq6m
	 dJ4otNXXivoi7kxztJtVEhdWCKqc3cDgSao/Hl8NeHo8MyIY+dLoCmljGm7p6FTpn0
	 r0ICeczWQgtSVdyWTdrZvkRfy3x5vnk232jBbpqTZqLHXKAON+ecbferiGc80HCKlN
	 NI7TtOSkq1PdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61965C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171074149637.3590.12470129968790189389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0946a66d7ea0d94d6e6978a9385a869fd782aa3a643be8dd79a9f816844c201e
Date: Mon, 18 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710741496
