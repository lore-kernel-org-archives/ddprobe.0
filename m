Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D24980C
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707010097; cv=none; b=VGHzdi2L0WtjZ9zlH33Bbu3eaoodTCajZ2eFFAtKh0tWe8T/2O4Rx6McUr5chkdacJjb07lCiTlwDe510TsL2lsbXk88A2Kzn1JH9WHkAhIikLtNX+zd1jFp0Hn9wTTrI17U+M6hJQ/ZkaLnMonvM51q2GVyGUbxt5tY47RYBWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707010097; c=relaxed/simple;
	bh=z/EmnHeCEUXkgs6EMCuQyd6iII69sxYkrm0jCSwhVmU=;
	h=To:Subject:From:Message-Id:Date; b=swyw43wY8ySgbF5h4nPYrJ8bVK4OLjSXtw/XgOlessjIKbnawaBBkDNtja1e0/Ij713auPOYRjGMDTGCANrNCtz/qRSN5ZEXk4keUuYx9MoY1SVONgDd1u9fpAnfAz0Udjl3qHqM8WWTQynxZ/sl6kRpbWCE0hvDCaD2EI4l584=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZQoBV0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZQoBV0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7892AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707010096;
	bh=z/EmnHeCEUXkgs6EMCuQyd6iII69sxYkrm0jCSwhVmU=;
	h=To:Subject:From:Date:From;
	b=mZQoBV0q3MlKwQlvaEMKjiv72oYtxS9ur/YSb+96Uw4CZJH4kCDW8Z0y+5UjCU0/U
	 +ETVVTHK12GknMiPz+nj6JHmHV2U0LjCVyAsNEzB4zv2qHxm92cm80Jwv6e0uq606f
	 4EbOWnook+2Xb4L31OWG6bRaQUuXP1eXSS4MSNyjrPrPoZ9hq9dghskJzqcSiCONfQ
	 TvRN2zmfdc2B3ANGsJJt2qp6owA1F5WX6eO+Ctaz2WrK2wmbemszQ1XWvSZegKtfQk
	 rGqFcRvHcfJuSnY3BC5+yR8zjskM1euylvba8N7Bgyx0WoeQT/SJPTWgZe/UpWlsI5
	 CjnHFz1b2HfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEA4C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701009637.10826.14760466414113441860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1732129ae4fb4e634ca3e7104db5f412d05c763e3ccecdf18cca36bb15b554
Date: Sun, 04 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707010096
