Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A2938B7D1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768892635; cv=none; b=e23VGA/3SDkixDDk/Ne5x1EI+FWqz2+8Vl9puS0c7b4sXOS3df02NuANSLM24r/Dw6dEIW/8CEKgzC5ufbQ8rlhDSggIL0uqAhdUHWBKh5AQPGch+m6/GINqiCQLnjgfTHpAbijCwXg3PMaR/WsaGfnDFtLTpJCcgtThz6peqas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768892635; c=relaxed/simple;
	bh=jJ9YYSQVRAFqamZncJ7RaC6HkmdttEHXSHE8RbU51SA=;
	h=To:Subject:From:Message-Id:Date; b=U3gvOtQ0Dr14KsCqc4XXbo+qb489oT7HuwUe+mL1TzRkA1gjzGmrFnk/fOMShODsfW8NWnBiZUVbYlnIJ1sy0OEvi6AE/3sTl9g2ehEK1YCNe6fE5KHJE+TbDRNc9fZZ0lidc0as6Uh9l/7fW9SwZPYCZfkajqB0pax5m7tE3uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMDtwTEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMDtwTEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB99C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768892633;
	bh=jJ9YYSQVRAFqamZncJ7RaC6HkmdttEHXSHE8RbU51SA=;
	h=To:Subject:From:Date:From;
	b=TMDtwTEavURzsB8O76vFIZJWjuATM9cT4G7f1U4TShjbVsd6B5udeVvBs2RMsdgRX
	 KusuAhjsJltNnYbp919UT+RJ+PqUcVGUZO18AdrX/MzQvoBnubNfwUN/PheRuGy3st
	 xiSJqwJ6kheoq81qV+E+RIXCsf9hFO1csazXE9xsL71iBvDT/gjJzRn66Oqjb3IVYm
	 4+rG6RXGUP/jEomT8Gm3byOn2ipGmyFBnwMj7wYUrWli44UGuDRiwyXTRkbzFBG7Wb
	 zxuKZQWhG6LWMC5Era02oAqEm0Jzia3ydwCKacl89xf8rTizaJklsJA5BkzuT6GrvN
	 zzGtR18SDg1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FAD2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889263358.31258.16860028713422951983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72115bc1e7a85c723241104f8ad40454533e311b994eae378885c571480ed868
Date: Tue, 20 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768892633
