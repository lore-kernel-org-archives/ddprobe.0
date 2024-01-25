Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30BF1CABD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706177897; cv=none; b=h44m7G/XHZtZ3L+GoKdVvECbxGpGODhos0GjjdP8tzCVqEohiEBqiW+YwuuNR/bkfFicKoph7AeDRSgocKSOagTBThD43Z9DhewGSwlRPMDwJgWQ8nna/F/f2/6obqxufzxcVUKlN3cRZaepbjXXGnVcURMYn6XGtKXfArcgQIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706177897; c=relaxed/simple;
	bh=TdHjFvQ3ZLFH9uP4rQnIWssl7MPiwDmf4hn6Jwu2ing=;
	h=To:Subject:From:Message-Id:Date; b=iL9YQgU7QkZenChWVPfFY9R9CN4+o5ceZjy2CoJsdNnLHDsvBRUdK22TuoTs9D/nwYIYjZmsPP08GkGKeDna6jmoFzkcpt8M7pQyw/1Vwt60DxNUvG4sQxNLqBypckFsf9fJKJRPdHyubd+Xk6pKExTmRLGvItb9eyHIrEMqdug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFJFHgzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFJFHgzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76329C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706177896;
	bh=TdHjFvQ3ZLFH9uP4rQnIWssl7MPiwDmf4hn6Jwu2ing=;
	h=To:Subject:From:Date:From;
	b=IFJFHgztc9jjHp8c1xZKlhfGQEhn4Kp0oQSz+iKUy0bcPgMwrzt5YRFvNBt6B5G96
	 7bSCU4CH8pSRf7fip1mrRXviBsJuuMlob04e+rwnMzzaagjinR76oicYwx9hVXqIN4
	 mO2iMcIWwT+c/HAX++TCPRS3DtKpgObXyZVmXuyBC2Swq6KRdgdSNhtg3297llO8hR
	 2/jzG4s8SFyk+WM36bBbi5uv44zM22geiQusrk2vl0Q/c8RiuwrU0v1nC47lafdn5f
	 zIMQf2BT2ZHzqSR4NM5crqVulBoVjN+tIsJi9Xbao4aNVpyrdIJqootBpcVRkjTSje
	 lpzinGf8D5LOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDE2C48260
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170617789637.17798.9082941060352659094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1181dd29d83b45ca299af49cb7f7b854657e2e92fdb475c58ab6d0298ff78f
Date: Thu, 25 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706177896
