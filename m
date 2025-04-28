Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED928623
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745799594; cv=none; b=gKIBxA50tZT8euKxf2qehErYZRJSxVYYdXAFZfZthqpuYlfmHnEJCNFNVpdOcow84grmXM0f45jmpZNAGtKBjYeSCTKq//9JVpSv5gHWWXtoYt9YY6HrF3duHnwSFnRvkZJhDGL0e6NueWOHgtxy9OQf7psM6a3diqAZMW/Wcv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745799594; c=relaxed/simple;
	bh=kZLcsmy/WwpR/HoST2FzBjef9O0zy61lvmp9FoMbg9E=;
	h=To:Subject:From:Message-Id:Date; b=jHG0SJK7VrDww8imVYa33EfnzHB6URjKUD0BlcU1FR5pJvHZu2gPe0M0/hVzMpLSPGx2oImQvvWKhgmhNAe7gP4tlAG/57E7W+R2GXzhLhO752aRWEcHl6kN2H0tKD9XfCw8KhUXJrZ1w/EB7R29/pI+Izty7Z+E+LZjci1Esa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dK5FSCUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dK5FSCUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A0EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745799593;
	bh=kZLcsmy/WwpR/HoST2FzBjef9O0zy61lvmp9FoMbg9E=;
	h=To:Subject:From:Date:From;
	b=dK5FSCUU/IGNraBio++fJ5y5DDpRrf25tOctmm+JY7aZhzKSwHvU0WkobeGC++3vw
	 1gAIHvM8ZJiKZCuC3Bzv4qU5GNtI+q3xWT3jxPPNvDOL5rRF5jvEKmtQA1eaR5joqC
	 SMYlNLsMc/fCokvL6vE3s/zq/xB2hMwKelldbhiepjmQVre3aihjj0ZnJEzf3FLSYK
	 87kCymsXgqqOWn3USmo6l6G0zlYP8Nhbw/I++cszNf9q5zmPTlkGZdIOsrFqtRIJjS
	 87tFIm0aZ1158pdgyjTuXHak7wjYSAkpwWSofGGTHu/OAXE7g9DbcQ9DZpHZ97NhYB
	 hRiwWzi+S7Jsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953CEC369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579959357.18972.17262547098655251541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee4104429d7afb28e6d57cad8fff0972e1c19c3db08f02b0313dc96dc87ac43
Date: Mon, 28 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745799593
