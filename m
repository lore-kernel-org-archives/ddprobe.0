Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C102980C2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765270974; cv=none; b=jLK4jJtovIcWJ+OvuBZLhKVgowp8MuxWlg3uaV3oP7m46R0Cp0p4abnHTak5Ow23r2vsXlV8ZSObRk6hsOvmzUvRAvSHgUnrEQakV1N/VfxmcRquf4Boxjl47GmbarflK0awz5B0tOxR/0JUvzuxFb0jseu/e/GJ0xCoLjxsgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765270974; c=relaxed/simple;
	bh=S373Gaf0NQ6bblksHfg9BDuz1Ap8MGpbBlIE6zCs3sU=;
	h=To:Subject:From:Message-Id:Date; b=fhF3q3wrcjgc4bV+sR/KQhvOvr3AQccibHo7iBHM7SKKZ/Ny5MsBsI0EVuFllIROmDQo3EF0+81cyUeopOeJAVoqj/WuXV2H71rRjo2JKMWC+rtv1TrM7NifWg6ptVBGpdHLPO0ngW/nxxfcwGvK5Rab+gF81HD1Q6ZQ3tFc6Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnkBRNdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnkBRNdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765270973;
	bh=S373Gaf0NQ6bblksHfg9BDuz1Ap8MGpbBlIE6zCs3sU=;
	h=To:Subject:From:Date:From;
	b=XnkBRNdUHR4KrE6YqTO9N6r5fVTBiW4t9uqraJUGJOuK0ELJ9IBOAzkNvcK9f6uxY
	 PPZJJRs/Xh2og+leCwK8iK6GajLhj56L3Fyeu+5KjeXCLTJjG+E2dSiJXKYOw6Y+v5
	 dEmujdDKF5AOVRJQ7CRbOhli/eMUM5m8EmcsR3VZktz1EQqlhq11zfsozKbnoOCnXh
	 ocb3fD46VEQrE5sdFnqK4cFuyxvEF0MlJi5tDPwiOYcY1yEKgfge5rHz4+HKV4l/j2
	 ZSs9CXyF/DSOrUI45WGSjC3Hwh7TV+OkyfOwBD4mad/uU4MKL/T2MxmEu43wgzdqTA
	 ebmQ5xJ5jAyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925AFD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527097359.6082.3436784522572033038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2969ea1377632ca064d5125313565de2b73a3bedfbd90a19fd21ca972a0271ca
Date: Tue, 09 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765270973
