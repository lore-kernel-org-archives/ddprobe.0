Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD853BFAF7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779778354; cv=none; b=SWxLBFjRcUxAjGNmNo0nF4biNS2XiBMrJg5dGX3s6Rf9bQaD/1L1DJQ0pPd80x1uvOZYuE4uQNRXHoUC/w+vHcEoGXoNCYFxvhL9dtYe/EMG/jmUVP+TEd6dCW/A2ELCOvT6eRTSOz2ga4NtaZhdYSEuM/3lwXaTU+41wGqkyJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779778354; c=relaxed/simple;
	bh=pnP4BAQ+JfnBCopX2kYBdB4r1EBfxLc0UfHeZQjahQM=;
	h=To:Subject:From:Message-Id:Date; b=L9C7RG+hhaTSnwbs8po6iBTyguqF5yYfR5E/4pwFgzs9kkJPrJMTl+wBwL6aujnI4mGm+gMLDvImgVDxLWsI0gitBpJFdDCnxvRuXjE6JDPpxUDqjuInI0GP22qoC/Yd8g4F4NH492RLxYh2/tXtZ85Mg9UutPDKkFRgip6KgQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td53mBYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td53mBYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25DBC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779778353;
	bh=pnP4BAQ+JfnBCopX2kYBdB4r1EBfxLc0UfHeZQjahQM=;
	h=To:Subject:From:Date:From;
	b=td53mBYgFwSXod3YuPlxERpXPpYw3VEg56vD387DeaCNPyiuk24O0PdaE1kunhtCV
	 EbEd01wgv0CX8HP8SJSOJf5EL/olAsG0ucTbXnZe6yx4ApCBZmm6nuhjMtPp5aPedf
	 wm6JTHqfmP0D3xyll0vzwCJ/XeJYKrFO3i9Xf74IEJKUaEBb5TxXdVQBxzvy3oSF+C
	 ulM/dJzDuJ8NfDWy02hYAZxvg5hI4E0zS/9cCd8iJHWPBLyadFnJOSDjLCeJgb6wrR
	 nwsvl0p4Urz/Z7R9/qyoXpSvPj2p2K4+6yrXU7BSNX3w8g/7TjwfYCVnGlG8UHZNxH
	 BG7ZrA/yHa7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A2FCD5BD1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977835368.13450.16250549944173289895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187601ecbe2aca1a81b573af1594ca51bd243acc66e4b10a4ca7f63c9984f0cc
Date: Tue, 26 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779778353
