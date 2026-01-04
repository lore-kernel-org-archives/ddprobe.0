Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4276523EA87
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767512034; cv=none; b=rN44llL1z0c7WYthJuZtMRZ7x2lNujH4XROjrSdEq/v2unpO+GleMlZXB5LuezGd+vxAnsCZ7nEK9teLHguny7elxOg0NtOK8hiN2UB4CBnOa5b8MkqSOA2vhr6IqbBPRTQhSszx7rbUuE70g6p5F8/88AvpIRMKV30k7gE76VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767512034; c=relaxed/simple;
	bh=sMV3Rqi7+1PgC9LuCRkhvE5xeICfh7qs8/mqeV0OB6M=;
	h=To:Subject:From:Message-Id:Date; b=b00vR+ZsoyadP2UFVQ4DxjWARnYABtbDrHkNBEkMEuqL9A2zi4azVHVGygRLqHAA8HyzFLJZI9N+dFhYXF+IBOV9zhJbEmsIxKx7zjS+zFZitIwpm0gkUFItnwG7CpGn+hBeuJVoxLdDydP1Qs6syDrDvd+SD43Fu/5MfiXLoNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CruOMgYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CruOMgYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767512033;
	bh=sMV3Rqi7+1PgC9LuCRkhvE5xeICfh7qs8/mqeV0OB6M=;
	h=To:Subject:From:Date:From;
	b=CruOMgYxIRfiSeOZZEc/07jRKyimV5zj89oqcdBAqUoQrpMwduhXdPmym+gSmZsf+
	 RGkI3v5d8IrG8qwrWBBBV6KLj+tWQQ1IFhqeFfUio0VoZRC/z/vMFA4nINHYuvZIEb
	 Y+2AuIBnviChGfJuDUsFKLFYvXW8RweRXDg3fqG+zouTww3bzW2fsRMhxeWFla5Kby
	 bpoO1hnJycBQuaw+/NczSzYopQvIaTiHTufhzTWeipjesGiF6od14rN9hjjVYRYW9r
	 88pupiG4DlSHsurL0ERsULFBiepFKSb/uAQE/tIC3zz2DOY0n5xj488885zyXQFrZt
	 wWUapcThwRphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6FC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751203357.6120.15539517341794402133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde4b98b5084cc92003518d49c23a21399a51a848c3bcef1fd7660de9158d374
Date: Sun, 04 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767512033
