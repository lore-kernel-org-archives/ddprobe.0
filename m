Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A512367DF
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762717194; cv=none; b=XY6tWGIeS8PJr14KwLf8TXK9L8nkefffalB8OjY5fR4uTpjFzR/ayTdiXH3LGsuk3mFZzXBnG3gz8Oz8Dz6fP9k1mW4IiLrzpgy9G4HRksHuXvnwqWk/glhg1XZucFjuyMiqEn06/KCAxczyiZ1Mitj4uXM9t1WVfr+XSnlLILY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762717194; c=relaxed/simple;
	bh=Jg3gLGe7EQaMzaKfDVSx21iLG2Atb9eP35fMsPSlsU4=;
	h=To:Subject:From:Message-Id:Date; b=u9s4Cng6Hp2ZQprM8qsj8+s7MzxzUNxNKLxM3zQVZmuO4Em/f68bpUHRavMxLPzNFWQZiiWb7CzU2n7KpeBTUHcy5PNa832tkqLfomn1q+fbWg0A2FyehqNyZyJRsi0Aj7tK9UCk0JYtKxGEueez63pEcliKO4Yr8ztreT8/I+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cgrq1D0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cgrq1D0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA044C4AF09
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762717193;
	bh=Jg3gLGe7EQaMzaKfDVSx21iLG2Atb9eP35fMsPSlsU4=;
	h=To:Subject:From:Date:From;
	b=Cgrq1D0i/pEINy+1zwXGXabY4/iDGAZ1LTlVn8IIU44V/RSmQPoRbespRjz43FnPO
	 Hj3Kz/SYQWSJaYxxd03UabVNFmL6zgeCY1epEwuO0HvNKVSNfN+EQONyiyzqDTeuun
	 Py5bTzKe2eIBrjcAX1m2WJguJSgFqiPMtZ0UAKVJePakVChsTtVeYAVuiRx3ol2kZS
	 GnmpD6aYa0mjF21S9lIKPGj+mVEo1bYwEA9P+6VxCo2AHn86dWKekP0izB762G8y9y
	 MTZ3Z3MOlbReztpVW7b2WSabmqFv0k0XTkITyaF4AJH9DmU0dHRwWnVQDM59rpK12V
	 SuKg/cF62norw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94267CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271719358.21802.17625620357512341838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b190040f9e6ef7fd4954e214d28d3f86b333f16818d2eef53beecf1c12be4dc1
Date: Sun, 09 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762717193
