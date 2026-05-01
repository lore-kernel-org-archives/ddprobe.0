Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF67C286D56
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777617453; cv=none; b=prCdKDY8xpoebZ/egDjfCQamreQ9DqqQEVD0O69qelVUuo0kRVW3JA8mnoBhIJNkxbQAuWXVkjseU+aastQJGBn/96trfRVAHAKVZE91Qzqsf+/LnNsDbQK71wiDwJH+Nu7En0QFwCVFGZHiwYX0cImzPHgmWXGjLh773q9MJKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777617453; c=relaxed/simple;
	bh=hS6sNXMiHP6P0NIMqBaPL+SqiUlpj1+T9ot0iQSkp9Y=;
	h=To:Subject:From:Message-Id:Date; b=J3C2ZtwFONngj1WFcDKAdizq3TIDKFhZw9+z2q9FdIo01yivn7gyYHZZUqD31mzVEmp21miTQD+srAaSY29kfrMYk2J8EyCeyw/5ZjyS26Gco/JleniLSqqYzB1j7cFVQkzx2ccD1AaSVKLRNC2In78EuZa0//21AXP7nDfQb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ay+Vehi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ay+Vehi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3866C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777617453;
	bh=hS6sNXMiHP6P0NIMqBaPL+SqiUlpj1+T9ot0iQSkp9Y=;
	h=To:Subject:From:Date:From;
	b=ay+Vehi28YjHfaRDhubz/LZjrMheP3J9N1luLO2FiqOOX+Dm7CqbUoUJjrlpPDRXF
	 BovAEvx1XeTLgv1sW+ystQf4FFaQqRWP39INZwLWR7yI+n9CTIftIyxVotnCuvJpvC
	 KZTnFeK9JFCC+Y+jwB25Whh6hj8h4FLPZ4TJOV2/9G79XwKGDjyfvZ5B78usoI4XGy
	 ams64lvss5FLVPuoBjkiI7/EU6ESNISff9H3rV9+orvVkIPsgTqU2LOM+biMDxZ0qh
	 mg0fb03yRWsn1P7Ryi0R7opwMo45vv8rj5Kdu2A4qDgPJCLsD/oliO8hOdWUpad6nK
	 JDEZ+aDS9e4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A0FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761745369.22716.9361788684777166618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d1ea7d366889519f1c9c9d887579232da65939e0c4c4a3b27e2cd658d2b4ce
Date: Fri, 01 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777617453
