Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F101991D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750519194; cv=none; b=rPwlKH8fGCeUXoDZOBvPWM8AckxYNzXxLWBeQEJTixJj7z9sO6ZXNM/5oDYNnUjLDSLoAOrDSGnPZra+wqFcwaAzbmLTL2ZjY+Tmfjdn61dQexdDLpxtqMM7dyOkWnlEAJ3wD2pckFQn5aOY4GwWUN4CCcvrFoIn+GGEbL9FgYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750519194; c=relaxed/simple;
	bh=XnvQeq3NWbxYjl5kiiwLmCDSExusAqPZaetQ8KJc4xw=;
	h=To:Subject:From:Message-Id:Date; b=izt8OXhWmvCehkTYButofK7uaWgdiIC7VllCPVyMJ2KTE97d+BLcEITzH6P+dWMo0F+V9QQh5SgRKG3qn6KUeQVGp4shNcfoO/W6pUGPugPn9kv0dIWoA7wTvYLhSR1TiGcjC/x7jA7EscmQj1UGIf9zXeox7SSN1KCyRGoUo90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCgKmMql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCgKmMql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF298C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750519193;
	bh=XnvQeq3NWbxYjl5kiiwLmCDSExusAqPZaetQ8KJc4xw=;
	h=To:Subject:From:Date:From;
	b=QCgKmMql8xL3NM0YQvntwlLmbIeoPKpgWLvr5J/DNQfLDB7whVocGdj2UOLD44T5Z
	 TIP+LWh/fH/z9RdZ/3WiiJsY6s2LekhWGElnXIi44hCVCcdWKjsTF467lMyDoGcsD9
	 1W8K0PsZa3hQm3HQJrHsNOgCVn5pjN+CddhtCcRkkuZJCPnd0+Apfuoi0oVc/WPKFX
	 fIqPU5UXLZVxQdfo/n3cBE6yoh/WJJCkV2Unzver6YrRz5Vq14y47xzUKUlP4yFHY1
	 YTvC4zVBChBBz5f5NTDR6SVthkH0AAEKSRIBbGa/XtJPW8xZDKaRb3g+qfaoYCZ1ts
	 RyVmEI6QasK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0970C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051919360.3061.11423097453910883431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84daf085042fc76a0427fb2e3fe29fae4ca6fea1279da644c6ca07a45ef776a9
Date: Sat, 21 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750519193
