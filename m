Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B314E403AF8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789162234; cv=none; b=O8n1GD3Y8UJXkM4w+tcuPwfCEpZmWxmb/AcLmPcgLSuUere7SrMqr7qVc3XLlO4AICmMVttOrR89m3Td6zEyod3prKLgfzkSDc9VG5g+ymkeMvrPIgtgmtrejgKmSldliSk35bst7wdcBVzEdmrkyMOm1cUlEWr/bPU+XDllGNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789162234; c=relaxed/simple;
	bh=zwJoWoAaJ8JkdqqGQeaiHBzT00EOsTCiwBFL+pX2S0A=;
	h=To:Subject:From:Message-Id:Date; b=jlbJXv8AIPjTYlgtojBtJWgMJJBM6DiQ4WFyxDgjO5Gxcj7es/TDkaPb3/4Qj6ap8jdzkxl+DT1WM0x+mKYVoqYt8lnmJ3sudaYjG0tT1BqvQ/BGxI0XO3DarfQi25zUdUE674cfvtSAeCg6kzMOcq2K4a1Ho5iy9ln/rjEFMnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEbCyx6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEbCyx6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07B8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789162233;
	bh=zwJoWoAaJ8JkdqqGQeaiHBzT00EOsTCiwBFL+pX2S0A=;
	h=To:Subject:From:Date:From;
	b=UEbCyx6frGAhxzzPP0dytSOU6u19kJs8RTXL3TMFobHKNGsujTvvIhoc61YNz/cMJ
	 iqYXKOdvv0vTby/1sOIDvhsnkMLN730n5gtgYFHa1sSM6Obvf3DPiljN2Iql7BQBIL
	 yqhRvvgtN40+mjtLSrM1l2Bzdk9ppQNkasaAgmwy6yDMhh/ixnNNTn2nfSkYTQlkIR
	 tqXw1t3ohfmen/CAUJUR4sjIjAzh6gnBqWzdIWU67HghBrWnIQ9thBBrsXIuzvxtbm
	 /blsgJ7ZQktMlPSoYhSfHlg9xtsaqAaghDD7CbGnyscXmVy3xf54uBziGRGiSWS6gV
	 rbA/yyYSu3W2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB035C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916223369.11458.587830751947425025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b111893ee8a929e0cd674a7e500e47898b0252d8fe6498b0131d15494155d4
Date: Fri, 11 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789162233
