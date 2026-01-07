Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACFC2EC558
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767801234; cv=none; b=iFRk40dWwBszoZmgREcoxCzDwcgv2TutD27kvyOpM6H/qh66I2OYgTRkOCBYh3jEZxPEO4LBT4sefDa5ENllsAg/ku/kfMvRthXN1F5nzqIASiBeZB5gEJ0dwzspzQO63K1G07CuIxfxm8ToLGCmgRJy+j2XhZ39zM9vV+Fc+n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767801234; c=relaxed/simple;
	bh=a29oBkJSoAJtdv78zl95liuZpxLWNErdD9kprKf6v3g=;
	h=To:Subject:From:Message-Id:Date; b=PO1q1/izttTDNXsUaG/o3GDJ4O4jg9nVblDXq+QEK4kM1O21jn6w58qn5ZF7bpMt6sA+fpA6eEyKC7Y6HwNcp6cMXVMfZNLodOEvXf1irt5UDuWwdIs+1alJUpS0I+8XkEg6PmyEse11TjDbk3tG1cKA729GXVi9lwe0W4WFyWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwHTnhpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwHTnhpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE04C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767801233;
	bh=a29oBkJSoAJtdv78zl95liuZpxLWNErdD9kprKf6v3g=;
	h=To:Subject:From:Date:From;
	b=MwHTnhpgxjY+PUrJzl0RqweRyNIN9E2gK/ktSB5k+QCwBuTbyRdiI7hZ7u51zxa5c
	 pi8fe6D5bARNkhJWKBdOarXU8QAuAjjd0MS9mM1i1Lax73nvRa8Oj/VRBdI+Bfyow9
	 t4LMiHrY0iFcU8DQ3i3SVPKIaW9LHFOkyUF9nsrjiyiFODMvCTFjiDvC3p8TXMF41h
	 qe1AbdMw2ubKatpFyar2CS7C2sZ/sIDYhAge96j//EMh8VmOAuEOyOrhtx7iJe01XE
	 ypVc5tmKourxZDASGhu9OmiGWhIImtYEAUCEfnn07/mzZBcIdBCMrvBKsvtXcOhN10
	 1v/hy/u3rCnNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27FCFD647
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780123357.323.3438065616692663771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aee0eb1b9764fc9ae500dc0bc4a86ac2f1b4d1f533181ad28985c975ac7e6e4
Date: Wed, 07 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767801233
