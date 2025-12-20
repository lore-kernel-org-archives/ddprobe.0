Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BB31DE4E0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766215434; cv=none; b=l/rp6C2GsM18KKSi0MgUtQk6CSS5oFPn2rnolOCKuShSSGl+uvF1q5XI/W4/6aPVWxig+cfGgd4jYnJlcSlnfO+q5B80OmFD0j25Oo/gCtZg649cT+mS6sVlCu0VK6s6RzHkGeQYLYkqu1x89eI1QtwtVsU1fsNLhW0SEwt3J6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766215434; c=relaxed/simple;
	bh=YdaRX+R5ev5LYZD000/ETL0Z0kgO31lQptfwOc6jFsQ=;
	h=To:Subject:From:Message-Id:Date; b=OL3qDzHxaOFAFCMniTo1M3PhCRuRDlj7ZeXG4JToH9Fy86E8jIJu7yl5y1biXGSM2Iq3aQ638XkzCL/5ZDas2yjSad67dBSMZbr9wWV7rtlAn1G50vJfrvj9lwhlFTgCah/piLPVZ0pas+3sPLS2LjdCr7RuvmKT/evWD96SzNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPeqGGJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPeqGGJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6389C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766215433;
	bh=YdaRX+R5ev5LYZD000/ETL0Z0kgO31lQptfwOc6jFsQ=;
	h=To:Subject:From:Date:From;
	b=hPeqGGJOK/SYkZjvQqixG+ty977slTClO1MPdHODu9tZxm14vm+ZLLDZhv2w5xHJH
	 n4qtDhd8h/Xzrh4cCYmBRmhG0LEjASHxIIBVVws6jzMXs/Y5iLnPBPO0PT8UQh63yP
	 WcBir1wkT+mX81KLFfph9DeZUiQX9im6Wac6Flh7IA1DIF7mwEp4v1uY8IsuiAe6jw
	 JgeluHljOpWvb1C0K2Dy8/pxCYc/6HklkjWMh9ZjhOZcyJH92fQI5SLoTLbAp0SdMB
	 482Oi3kC79OqAiNO7WFe/kx2gYcV/J1sFQofpoDBR18YAuvP5q7a7CUWx4TWho5bcR
	 biaoTDoF+bw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B50D637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621543357.22577.1215955334266659637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8555a41a0c15a5f431f39b9fddf2a1eb9f1e90b5067ffdf2ff53bac39fe0190
Date: Sat, 20 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766215433
