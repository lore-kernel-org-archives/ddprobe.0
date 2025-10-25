Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2095022A4DB
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761410994; cv=none; b=E4pxdRRjGddr7ndBYJdmalM+MbTOxauG1MQ1Nljbho+HqO0qEhbncePjBn8za6ZYZrSMaWmZmSoDdcaNVgnFxiRvv9n8FzcvTnkPEBsTmfW5am0OegvOYkFRB2nq1TtpxmzDd6sHmzBeT18G7COo+TWiT2khGVpi6niNvjXCY10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761410994; c=relaxed/simple;
	bh=wfFDR/f5RX1XaUaoZYCbOXlDDNNHv2K5Lsgl2DIwAPo=;
	h=To:Subject:From:Message-Id:Date; b=pYidAFfVd3jlRuDoOFhrjpm/WjjWM8tLaEVS2hpk10DjMsbHCrSfMrcrGEcUz1XIqPJpAqTYTCr2UmGZqvEGuLRuUJpa0MSkh6PAjONjkYQ8FdHLpsS4yGsXVIJB5onrIfSDJRYRcoLWojcSOFYMRWNv39Pl4mPC5P6rAjnGZ9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psT3ZJnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psT3ZJnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3138C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761410993;
	bh=wfFDR/f5RX1XaUaoZYCbOXlDDNNHv2K5Lsgl2DIwAPo=;
	h=To:Subject:From:Date:From;
	b=psT3ZJnr2jBsZZ4ru5wEcWXkwTujSH8S8pJpKlXvPxbBcihCT6CjcFZLETjcGcPdO
	 0Hkq4mKGLuh+wB+5qFTu1o9sn1WR/iB1AtuoWkdrGbs6gFkX6aSpJj4lst1/eDlKgK
	 97iyZgmccpHr35b7sOac8qegvtd+IS1z7/EJwTLn/4QEKCjmSBYAQaMLRFn8hfQfe+
	 2eUNepWcstY7sZKC8nll0Rdthiz1zvqaj6A8751XgRpsKYcUm0M5ubyQoYQQTy9OLS
	 4INol1oxGPVF+cZ/xMalKhkOcDr5d2iGHZDYaqiFxBwAGFpyaUORv+ctphc6N/wNDN
	 OzQw64RpgA0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90293CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141099358.23647.11116786465852800145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b67da9e8d76aa6384a43cab27dafb1e95e87a9b68651a64293d932e1836fbf0
Date: Sat, 25 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761410993
