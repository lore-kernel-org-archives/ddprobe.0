Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD4F2D0C64
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764057174; cv=none; b=aTG+3NmFVt77JstFVDatTe/2H3AiL0E9WmzZRj5+8vL3zb8sK2TeHeehJIlFjmuwO7cDqy7CtUTOb2ER2Rzl8Ux78Vde3hdhf2MPGqxgunpLHzz9RRsQCO2ctAVoD8lAYu/48EENxtN9ZhxJIwNy19HX19Gc2+jNEJ1IE35v0m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764057174; c=relaxed/simple;
	bh=6MCjS+Pj+7G0N/QwTKt2gsJIsJX+I7QcVkuUI3vhrIQ=;
	h=To:Subject:From:Message-Id:Date; b=sfNHbablvwNNrZXfm4Z9JsX4/fm+cwuFwidBGNiscSGHsXl7bcRf6I4IZFmGEaLrBa5tMoedexeUZl9AaSvc2d3GjWXEZKjowMtBpPmh7/2eLVLZFVbFVLT1mmh6XCXi/d/N2aJUBgEroKU+GEE6WL2KqoemhDI9sZGcRQwpxCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbkZki4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbkZki4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764057173;
	bh=6MCjS+Pj+7G0N/QwTKt2gsJIsJX+I7QcVkuUI3vhrIQ=;
	h=To:Subject:From:Date:From;
	b=IbkZki4gjOjvz3KRvREBLdC19DvTsLj5eDqrSbqj07Upb5NDTiLm5/jeWyseeIXFN
	 zDlzJGYjjtmaKS2Q+9MXGqIsvgo7YSHYUsZaZlefaQbp8iQ2BXsC4gNyBqOEadtoKK
	 rylVozgugACPKwykiCY73DuD2Z2xMQu+I3k6Nq5Fhjn7oICle63RXEakQ3KSjdGKco
	 Ow4s7uMWNVjOMDAKxsGVIywr9EPuphcvm0KAis2Nmb6c8HZul0knKvpxnSreAGrIzO
	 6eghiz5MbMG5sm4EtDr2RUIQs8fknNjTfKwzmrKkzAJyRqJmTJTWAR5liTXaBPQ8QH
	 /7cPSE3sY3a1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266FCFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405717359.21019.1867288833261136649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f698960131358a7d829eec7984abb80da4da6552b3e92c1b07e97625cb998c6
Date: Tue, 25 Nov 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764057173
