Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A703286D70
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776130054; cv=none; b=jBerlqjhIiNzaTa+DoWfZnJWrs+P/lmLaQ7KWKoLlHePt/NjFD3weS5a6UKZDv7nwgq3FHajPwyergGG/UyGFeLlIBTxYPktSeDfEQwW23bKwRhYzKtuw6cS1SJ6fKQAJ2xHMInwA2XI2R4S9gRE0L0CXu3sCuedRUHctu5c3eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776130054; c=relaxed/simple;
	bh=LU0BNNQ9TfQW6nllpmVqbcZkrbcVc6zNLYyC8HrSuZM=;
	h=To:Subject:From:Message-Id:Date; b=AljD2/mACA6CHUo/37P0QpSJqh5rtSHP7XahW9tWTrQDTmVJKVqZqyNNQHnrY6lPPXwj/synR9aN1Swl/iluHmhoVPHQvpRDczit/bJZ69aqCJ64WuUTHcLd2rSYD+V1RqGNbqixMupINHyDvT2tozt8Wpfq8iNZHKekvBcV6PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dusLXF4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dusLXF4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55F7C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776130053;
	bh=LU0BNNQ9TfQW6nllpmVqbcZkrbcVc6zNLYyC8HrSuZM=;
	h=To:Subject:From:Date:From;
	b=dusLXF4CBXXFHF80DkyZ/15z1UuNxORGHum9nnd4ttT1D3kfed29uPBEw6g7ZolFl
	 TdtwhQffE14KYQe/OdQ4R55dIwvgo0vsxnqzitFLrq6BL8ADiI01Hno7edqShQ3paa
	 p4QEqqquTF3wnKeKc1euaUuizXq/otg+TyaQ7FcqjnZeNh2omOYHzKTHTcIwqYXHWX
	 gGXKIXyoL6fY3seN9mJigHirpsJEY9MJn/DCJqhSwd++PMHORFj0bSmVizcqjwdXTm
	 PNgjh03zxELjW84z6fYIygYpRFIO2K/Yfiim5OV7fj6RitQn6khFMpdAkb9JjZxkaP
	 VPOgVrP/d0yZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B084DF531E2
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613005368.24127.6145620254135832642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfadc4a304218190fb43009427969bf6accad79f47c7d27f5a8a9e8f53d48ee
Date: Tue, 14 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776130053
