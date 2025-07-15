Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D063C212B1E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752583793; cv=none; b=Ootbe9LI7pMg7QsWD2rxLGzSlwe9uqZ4novaZPiXYM60/1HmW6t9/xxR94eulKhthPJYDZ3Rhvp8S9vVKc26G7N7ZHKilQAK9PKax8AGoTezoAnsuIn4ndUwp0MfjNdfilJCcVKwlOL5Qr1nNmFVmr6IIBOVcCUwYnJUQTGgLBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752583793; c=relaxed/simple;
	bh=hyksEOBbbJsFDCY52EFMhxmZfL7EoHtAEC2ohaefrWo=;
	h=To:Subject:From:Message-Id:Date; b=CVEeg8GB5ethP5Ckm2qNVPuS4wEqFe3mwjjkNj9uM0CXPkPBYBeKLn+qnWr6gxJW0UDzrE0fAuIRxSo5HYaTVdOCIBAPDzR5GmZxScoR44Zo/8fqUkZh/27ISO3Z1pUnrQ3JS3sp5qG0KmvzjMZiesKdcLlirTcgWPbqehxjDDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLD1jG1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLD1jG1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752583793;
	bh=hyksEOBbbJsFDCY52EFMhxmZfL7EoHtAEC2ohaefrWo=;
	h=To:Subject:From:Date:From;
	b=KLD1jG1TL5ALEguLs9Q0QMte9W7DMXI/xydhelBPfr8HE6msN3db42tbVN48S6ow6
	 5d0FF60Y1I2K8ktWx0OI1GCW7mNCJVuLcD4WJlt2GdpmmOG7S6jebHXJP9lmdQXKyt
	 Z7j4uoYYdspeUGS51auDa2fA+SHeS8nZRVJpJqroHe6mBPXBIok7lJQyJO8yaTkKmj
	 T6SEqk9DAQOR58Sf0Ck869NEs/CLxGgwznYZCrTwXaxtnIbY+LKLKh9YSYHdsT6C7w
	 EAxXVNXtHQib9k0l2cif0AmmS8GJDkOzhKl/wcfyoz33Rhl6XeRfLsv3IgBxROn0Tn
	 /F72xTZ2PyJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D80C83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258379357.8852.14486607003733429616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4929f11ffd13f60c558ae4e39d7fb8786152123ba15c28c9e2ad46a4edd9bc1
Date: Tue, 15 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752583793
