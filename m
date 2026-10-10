Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B27219DF6A
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791647434; cv=none; b=Pnf/LA8SD31KUY9fsBSNkp05PXrf3SUyEuoLO1DelfkTzd3pP6okXyDNFh+r9stZnLntohs1aWsR+M9oI08hLifTR+qpJUUqmtW2v6zScER9FpeUJDWvHZZCExM1IwxBQU2JvxDbdYqXMcCGXjnxJizq9y9BWlG4Ef2F6VBpZlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791647434; c=relaxed/simple;
	bh=X9NdBM5IWTvMsjHj663OAYBodfBi+sehNSs/H9jo9dI=;
	h=To:Subject:From:Message-Id:Date; b=esIiLcwCKTxW5K7KMJ9JZdyuM8RzFsyOQuymLRWbk4dUUKrxVGMRfYlkctCyaWJ2YMjI5EbYmULbIPnQrF+ifcR/yUt7oFlMg+lgh+kDBdJZkzkxMt4j05yqXTRUI1MR7604J8VjXivBQjW0whQRDM1aqui4sZoDO+Zk4UkrJW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K778d8Fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K778d8Fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D48C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791647433;
	bh=X9NdBM5IWTvMsjHj663OAYBodfBi+sehNSs/H9jo9dI=;
	h=To:Subject:From:Date:From;
	b=K778d8Fh8eESQfXWRcL1dFWCr/odgQc4UQHYC2qOV8EWIVNodd+tNY58ifG4NIN8D
	 Jvp+D90luowveo/A8S0404sUIrx48d6CtcXMPyWVunjt3QQ/s/I6f7OE4jWYEyrd4x
	 0AJ6pKUnnOHsINCmo4Hl6zDYS+HoIZANJgstd0+y3WHy8GV6Vg92U6/kY22Sw2lyou
	 30XmTmDgSq1rb3tszt6EkaoeR1Aft/nb49USrSzVAGPEMX+UvyLP5hisu3lKiMJqxe
	 9BB0UsUn8dVDH4+b+kdFYx/RUOekWUVfw4qoFeLiDWmsIk5GfZdwIfAS6eDdOVo3kM
	 GDWqYqI8joiWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E35CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164743368.23732.10375168801923586520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae6383611d925b91f23290ebe439ffed1d8a886706ec65d54aa2821edb3d4da
Date: Sat, 10 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791647433
