Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFFE2FC88B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763984514; cv=none; b=gAUQ3UjDTEq/h90j2uwXXpmvnokbFlgrYDZVBeNySLD1rrU9XibpcsuVWrz71Ga4o78ZfX5R17M/t+lVyjosJe9z6XaFvQ1enFEA1uYNRgyFXY381Z3tygSbu6osTXP6gIa6kWqCrDV2ymKFe+HCmyGzZIDxWQEQrvb3GBfjSPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763984514; c=relaxed/simple;
	bh=52LUb0syhP3jsc+XyjorFV0ZiJgrQMidzDvkLZiv/qk=;
	h=To:Subject:From:Message-Id:Date; b=i8xWXLFM4eHTvfgT2Dx2EMMwb2pfvyf7/VEmzVIivTXIa2mPxltx0jdJmIuKjNTT3n/lI7rGiuXXzqPnJBDMYZUuyAFXZyoUS5O2w/OfbLUJuIKtM4LVzHltv+MRlco20G4igUQMiQYWw3nlBamLUPjInKrYYB+qotrKtjr2w30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMEa4YBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMEa4YBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A646EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763984513;
	bh=52LUb0syhP3jsc+XyjorFV0ZiJgrQMidzDvkLZiv/qk=;
	h=To:Subject:From:Date:From;
	b=eMEa4YBABWd7YDI6L6iJuY4fyjN8xk0CmX25yuRpncZ6GvDlAarLjqxHAfxH/Di6P
	 sq4GmdP0/VSkV7uYwd7ODAnQfuder15u9pxraty+FzzfGNA3pPoN4M3yzkLiDJ2jqN
	 Gx/COG3aP8iDL9a16TZo5ybS6TbU3r8YAbU+gfJhwjoPXuJXzQ2XIfu09pySvjVy5i
	 C60lvcDvHrkdFLSq73Zw2tAL2PHWtVqLWs4eb0ozIt/WKB2LfBH32cu6cpi88zkgHp
	 zQktP03P7OoepIT29FmuidoT8RarLGsxPrLTyy36ZlsOYlUuB/Q596q+yWKEzwk0BA
	 /IXIOtFfJqQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92103CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398451358.5213.13886126269461586678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3911b54607099866f65cc7973974710d3c6c06d2774f8f49bec7e4ee230e2395
Date: Mon, 24 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763984513
