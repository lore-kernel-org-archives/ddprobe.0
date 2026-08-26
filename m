Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54496285061
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787717434; cv=none; b=VmbD5I1+CdCxliRMGkQLcTTYdEQu/6oQMJB58bd24WOtCCV35jGB7ah2NGVV8AYMYQMEuK0L3bubZmcyj09tT8UEcLav+i0NW15PkajUWVmoyzzNYFGkL/DEzrnBYbaNmIG9XtcKiXfxomYeRw984vXMcsUEFQHTd473V0v9PbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787717434; c=relaxed/simple;
	bh=R0VDc40/dsRealdz9/ky0oU3JoaFQECrMAF6Ke+X0Hk=;
	h=To:Subject:From:Message-Id:Date; b=PW8RWGQyXwvuQyrmvwfv1hrTzlKCuXlPdrb74UmYkdwv3X+E02UtHmusNSA2r2fJQdY8O8E8qcPm1c/vEsZTFPTv6QAjVWbt1OJ7qp1kY4jewo40mpf1AhvV+VowPU7WmknENk6CiAhIlIcJ4pvWseFVCFW3MxONufbofLkxLQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxbuKd5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxbuKd5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EA9C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787717433;
	bh=R0VDc40/dsRealdz9/ky0oU3JoaFQECrMAF6Ke+X0Hk=;
	h=To:Subject:From:Date:From;
	b=uxbuKd5VdE5SE+N8llX9kS067VfSsABRbOi2DVzz80cUIGnXCLlmuWxhSzOHXotBL
	 pgqSQU8y0W3QN04sMjfg0D5xYedf8HIg9uOoConGviL3i+60zC2Rs0xLjL4ptSr3FT
	 GnReyuqKkDiBW1hs2yr5cmrVkI18/UnUyPUb7y42P6HwUt0YR4f7CKzzUMpEMSC7vc
	 GBKXR82eANSeJxSwtCA0Wr5psuwP2mx7+USSyUOB8CTH9McBtacn74ABFySoQL8UdK
	 baVHg7PAsMRrB61s/dXA/wgUqf1y6NrmRp/i7rHe+iTuGdtykcfiKjH1H4EfGZn85/
	 bi08ejf3av0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2DC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771743368.22374.7977728131317653407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a71c79e8b856070d65564b9979e95764b7504b440796ff57df998b26795b16
Date: Wed, 26 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787717433
