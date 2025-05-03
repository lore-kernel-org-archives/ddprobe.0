Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410D613FEE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746279594; cv=none; b=UvucnPT8LE7yqO/Mk2GNxVb/OdwqXwmrlfxNGqhwdLuPzDSB36xZZMCem4gDo2j57wdS+vTqKAgjaxUqpK/i2iykO2wK9cdGaojt9+yxRzfna+r8nIifrbo7cyP9Dz5MadkDN72G/wIRq0JwXCgi/v47DK7NHVVK1158WEjovO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746279594; c=relaxed/simple;
	bh=62irKmO/1I/32AckwKQJlKFSWnHGDiHbxWWm7B77HPo=;
	h=To:Subject:From:Message-Id:Date; b=fOOU8oh4SJG/jB1VHXRPjcCb5si6KZ8WjHsp+J6S/TEJTcY4RNWig8YJnjQs+1s/EK6YFX3hqAaDF8zE5JMatjnV8SAFoAqeW1W6TjHgSzYE+hC9PECqCYC/rFDonmNHuXeghH+mf+FJ9YZAHTD0mEMF9c/sqn6cOycz3xmXa10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPtPoJFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPtPoJFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746279593;
	bh=62irKmO/1I/32AckwKQJlKFSWnHGDiHbxWWm7B77HPo=;
	h=To:Subject:From:Date:From;
	b=vPtPoJFWounw9Az3i8qHQdEeGPB/Rn1baDwJ60l9FUIC/LyV23Z4A+848Tm6akBgT
	 SDTYs+wE5tanTSwvoYYZ4r04eKV/vo/gNqtAUC1OqMEPLr/3cYzwegR96DHeQKlkvF
	 CuXw5UMVExgADTLUq/ZLcMjvKK0eqXOpjWxWqdkklPLdqk5/7acijNvmR0fWZZDQc0
	 zuhIr8Vf/5hi7Ma4CtbzXrC74VgK4v/NbgPVbZljgHJTFltXePtW9oaHIUiFFzSknG
	 SUBF7B74m+XONp1zz0S8o4uxblyKFe4jvMcRBiINSW6aZ1H3NezAVP6j4qROcaXZ+T
	 XzcnGpA4eAfZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCBC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627959357.5013.1354054932690916694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8ebb3ee6739911caf8fa349de5c14fef6df0cf722d01ff268218168963302d
Date: Sat, 03 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746279593
