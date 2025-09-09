Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B71A31D380
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757453994; cv=none; b=KtXk4uooEGFJKw+T6YWVaoc041XDyDtRq6Sd5ygzfBcoYpMHOtoaj21CLDFNS5yCYmFq1V2xc1zPf5Q4T7AEKcRLyyFShdB3OvmXn4W7WVxxqAjHp9lTudmrYS6EW68Q8AaD8MCdK+ygumT8aUVkMM4ZGq/S8ixFWcIL4FmK38s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757453994; c=relaxed/simple;
	bh=lLXqEk6mYRUmj9Fq40qMCaPFnSz0rDlcdFnZYTigRRg=;
	h=To:Subject:From:Message-Id:Date; b=dyotfhPf8t0UeQTWGXwDwM4fsmOaPiQyZVkj+aJNZXbR0yQA3txV83eLsZdtgkSDx/TtUX74chBMD13ZqRfyB3ptTpgHJ4Wqh9aYFRxbZ1PCXRGzg6YZ6SRododNJTcZ5Gi81AjR1z9x2MKK9jDgMcOo6ZtGT3HvenC1WG89Z+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjxE5WHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjxE5WHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757453993;
	bh=lLXqEk6mYRUmj9Fq40qMCaPFnSz0rDlcdFnZYTigRRg=;
	h=To:Subject:From:Date:From;
	b=VjxE5WHkN+T9gdQMNGRkon/mSHHMQzLVpkg+49PQtnCtDtygr7X0p9tnuuwNf8tek
	 N+d611+co1wYVDxlKkeXHsKwLqkuh225Q0y3yiQaEgLZmdMv2MCoJ5EkSADDC1lE0Y
	 5r9bmBQYkhScQEVp3/RtCB5A8MEhi4gexEc/PAfae5qF9ulJSoQOAF9GURUJp3fv61
	 jBL0IGPzWj+i+OqfSOFMQGmjkKtkH4HCkoogt2mY5WBUvX+CsUxswJanIUfBrRMhKo
	 CGp6hGrF9m3Hkp8t1VM/jp5a4ahRm0IRicms5UA0V0RWGUy6MLPZ8CLSf94B0ga7qJ
	 LgSzH538O1A2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCECAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745399358.5195.5428423281232085113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5e0c743ec469d6168bcc5ea107a8ff7b6950a7a950a9fab3362ddd4619befb
Date: Tue, 09 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757453993
