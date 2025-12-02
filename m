Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA72248F64
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764706974; cv=none; b=MI0rSkhjdFtXMaldImrcdBbAogK9JuT3IlM1Y1ISxZIvHDoN8p6g8cSnVcLskJLm7wRYPpnNxbIDttRIV5V88azNGCw5izMIpH4XKuZWQvZZEWt/IvcW3FIgFXxbeJ6s2IA8a2rgvb0ruF9ceFcYuRiuIDcFcTYo3e6DUVCBj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764706974; c=relaxed/simple;
	bh=gYFyhjG/wtrsY1O49rp3ycufdPbenzg1lR9Rd9Ee2x4=;
	h=To:Subject:From:Message-Id:Date; b=OtbDGL02rh5h+5hWrmKCEnsalicaIntPlNx8dHOyGeQfx+7j39usgNuQG+X7ALDq676SyCjp7SwxI6adJDWfHeqBy5fN5Mz6AsOKcYbuPhwAVtqerV7LIX4zYu2uWE8/exq0TluxLF+532Ri2tcbNmvzqd2NJnSB9qUU+b2xMZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1TejH4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1TejH4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764706973;
	bh=gYFyhjG/wtrsY1O49rp3ycufdPbenzg1lR9Rd9Ee2x4=;
	h=To:Subject:From:Date:From;
	b=l1TejH4T7JK8Fu0aozq5JxTkJ2IgCLZx8OcPkxfz4aCoB+iYbVzQWh29XYLtq+h75
	 3HeTsth8GxdB8BrWIrjRhzNxXZBHwPO0mX8NO4voApvarW/s57YGfTPO6qaRVLptfN
	 088XLJKIbjdJJz6C4lCE+natyKegBnu/ZM8FqbwUockJS2B8obHjejNnbgRu5IPwJW
	 OUGfPqVVum5Im4aEkHzP4AVuAuUdzzTmnripIICpns4HVgp2AG9w9HNDVTTEQ0Zp+X
	 qCuv7V4R/sLZM72xcME9b0CcU8sxo2oDsXe7/TmTE/at2Q+EPO4ms+PqKBCSrNYZdG
	 v8rceVKSkllYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A0D116FE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470697358.5907.7843184907988191279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4f2ddbcdf2d1a0e0071a475a33753c4f5f01790210348f7e597b48128a1ccd
Date: Tue, 02 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764706973
