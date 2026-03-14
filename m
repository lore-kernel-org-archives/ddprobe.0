Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0BB29BDB1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773530694; cv=none; b=lsPPtIrnp5EjdjmJG+30CKaik9XYuvLiIH+rJ339BD8xc/8FpTPjl10ZabYdNAsfgK8vZxs/puKenOvQunNTHVtf91qfLwoSO3R5WdDqPjGyt0nkI3+m2aqze6h9SQhcHGECLsfyMbYmLjEhp1NSQHp4mYjtNJTZ/VAFklRmePU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773530694; c=relaxed/simple;
	bh=EsEbUno/u02hrBaPeeSdpZTDnV19XgNonk79iEV1Nwo=;
	h=To:Subject:From:Message-Id:Date; b=RRCb9s+E5C2OSN+44U+91wckw32AfDe0W7E31GAUxGu8tEefGEOqnQhHPE27GCSppYlInECKEHyJ8ZKGZbVcqequRw687WOvgAKY1a+OOpjV4Y3H4kl11A4i7nc34917oEYFpkb4juc442iBpQ6MbhCEWae6QM7eHOaV01G1LH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5W/Fkdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5W/Fkdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B2BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773530693;
	bh=EsEbUno/u02hrBaPeeSdpZTDnV19XgNonk79iEV1Nwo=;
	h=To:Subject:From:Date:From;
	b=o5W/FkdpKNZ1BVMlfUIzgqQi0eb03Tp7tLxKr8ZOcH5/zy6c9IDBlJo/p6y0sKRFj
	 uQsO3LMXgdxnokrFFeRDv9pR2POn9riknEPL7NWUuzi1VOesSX8QJqjSvjru/q1O2J
	 aA51NIi+ECiSSCj7AINolyLYfOvczZsK+cAUEXeup1zOXbTLD9q/IdasO66yWt0PQc
	 luHWUeg0UOteEfvkZAIn1ImlDfrxTsOr4KMjyQBKvLsZDUfWcP9yJPB/arXPH3TyYn
	 4Kob2Os5uYxYO76hU5MVT/mQNpamciMbhmRyPULZ6h8Ygdux21hF/bJbS72mD3wyBH
	 /hRM1xP0W5uzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC010854B5
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353069357.23635.5871880336521152144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256430cf9a7f018aa09489ad7591e371fafe1eaee4dad8151fd37cab488581c0
Date: Sat, 14 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773530693
