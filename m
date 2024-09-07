Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA0D1B85DC
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725723354; cv=none; b=T3ZHLWS9dO+6C2D4v35iqW7nIs2tyUQZZjbzD7eIyLQA8l5IYMzaY9oSHVUYbZbqN2Rzh9hjRzLfCIqio+1vtj4up2FJoEhYcqtnpMLefHg4pGYjhbTLO+OcyTdN7nrqkQ3+2hxUAsHv9iwyt60UViJQ3ZV1YzFeVHly49NnV0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725723354; c=relaxed/simple;
	bh=A7vhl9AaUGFRS8BY5kXdX3OgIh6+W98iBuXqtLLnCFw=;
	h=To:Subject:From:Message-Id:Date; b=mt492Bl049k9QyrXETurjLoGbSCsYxdIyO6dcWSLP3FdECDL7SBNynQoCqXpvMsbE64jr+Ep7xII+0riXMndBPZeJU1LQ0gzkm4DBsTmUBxMU77tmTaBpbQgsnMKLBzLTjQycVV0UjKI9Pri47QMEQ8ZH9qpRPZYYk6s0VGkGt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXtsVtXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXtsVtXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88A8C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725723353;
	bh=A7vhl9AaUGFRS8BY5kXdX3OgIh6+W98iBuXqtLLnCFw=;
	h=To:Subject:From:Date:From;
	b=bXtsVtXc84JNKl554dqqvm7ayDkDaZeHo+yJfw9SJfnRCAwqps4w4cQJLhw4smx5F
	 dbhVWd5imbp8jSpYeL/Tmjkuu34jAwTJ2H0SUxtKLzlz5gDcssddTEV0xUn4wWg8eh
	 4okZJ0DZVESJKtFa8X2MDbRjTfmrTPfsBx5SPXlNsvR0phq4PwIIu4EL7WONoHST4G
	 AvJpl74STTYI4gBl3PYqVrFnw+cQ3kPEjBCDDdxvLSIaDJmvcRMKWaC+i4/NinJen4
	 OCPo3uUWULcAw5KRVCO5DN5UcfR77fw1QH0VkUZnghq6PR/9CaOsnUz4bK57vvQNtI
	 b6xyOhLYVdTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B00EB64C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572335360.7543.1629571526578670659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cce84eda468a5dbd5e9bcbf196a73ae91b55307e1d1d34ce23e70a208f5b97
Date: Sat, 07 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725723353
