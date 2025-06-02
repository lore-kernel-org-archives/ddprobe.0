Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC50A1C5D72
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872193; cv=none; b=lrTi0g9Y1yMHP+bdd8Xlo/k+BknJwdkKhxixEzzp1JetGYXyOOZ60wn4FmeKOwJ2+kuF/zyyCcqZ+C/U3CmYbnaLAVlvwkRx1/No5iJCGGB6aVctyBcHaurHEZjh/kN/EgZCTiSyMAUlA5meV8ybfPkJuH6tV/uZ/iU+xF47Hlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872193; c=relaxed/simple;
	bh=4wSLcjl9KBb74fBpbjFTlWq+0JACHlSxe2j1MeoRZQg=;
	h=To:Subject:From:Message-Id:Date; b=li71Yn5A86FlSe+7LeuJmRW1A/m0/4bXGwLInVuW3k4rGh61hrAPUBNdTHIKd3AYEvY6Fsi0BkPRW1x6abZMY9qWuNH2Tnm2Dg7/SRd+VB93SARLepxqIB4bP2niNzGYCEVXHUgzSHtPpQu3Y8YL9q2n6pmdwDKbM/Lg3gEpunI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNcP0gOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNcP0gOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748872193;
	bh=4wSLcjl9KBb74fBpbjFTlWq+0JACHlSxe2j1MeoRZQg=;
	h=To:Subject:From:Date:From;
	b=nNcP0gOEtV7SpC/yuA9UFNMZ41rAa76t78JLRn+y9YkV2wA/h0xxeTbFUpIYf7KfB
	 Je6TIPuF4RTjA+j+ImOWOoLZ0hcH7mvBX+bSH90bJ5EcrhQbWmmDLB93znyxfZiukr
	 ituE1zWLZsYZC0p1qeRYYFPaMhdEATRCrcX3qjcSFJUyuTKIaLEQb3q4e/HOvRjhKr
	 dwhPaRThjzOcy/MDHky8WlHH/mOWEMYEpuXGqJodaIzdI4fm/qR1CU2HWghMiEnQzN
	 L3NJrNYApOtIcp/cPNtZx29kLcQYCcPLBOh5V5mEYHY2qq0DDYVIovvcFOe3fbd/ih
	 u6stqvfsk0JeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015DC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887219358.26676.11498226594157396998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2612959e4aac9976252c0db095bc674136541b860fbec9d4c92c1e843accd0f1
Date: Mon, 02 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748872193
