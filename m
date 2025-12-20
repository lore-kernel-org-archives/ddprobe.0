Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2270E14A4F9
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766221434; cv=none; b=JU9K41cjWyUi4zXKXYb4CtgC/AbNBHTVTFf2Ocy/4fBrGSKOb3Aq+ZyhrudyqAXmGIKhdbpW0jV1SLzt5CtdaTb4avYN1veOlPtyTKAz5yGUNgDfHhlNAUQrjukKIUwRmp/8Hx9grYydWlk3bUXERuBFF7Oy/PHdiBwxxtIsGYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766221434; c=relaxed/simple;
	bh=OOkbV/5UfZ1W3/IN1QCx8OxDU7WduiZT6NGWfznFWMU=;
	h=To:Subject:From:Message-Id:Date; b=JQg2Td4UuLCLHvWueye2/qd47//pqfo3ZFUg7ztyIKXS6BJd9/ZoqQIaPCYG13uX+TVmxVSW2X/iMXG6N19qUCc4oxZhhtSjN/N4coX/myRUqG38nT83gDIfoC0Ue5BoUR3FBIy8HRF12VcP7XsadoES0dfsFXlPSdBFI0Ue+UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdQOj/T/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdQOj/T/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E29C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766221433;
	bh=OOkbV/5UfZ1W3/IN1QCx8OxDU7WduiZT6NGWfznFWMU=;
	h=To:Subject:From:Date:From;
	b=TdQOj/T/RH7RuN6O1nLQPv6TVcajE4lNKlFSIqpf1U6F3SyQTA/zuTvNEPxqfn9pO
	 d9oBorExuMdyKsg+pl3BWbJgxqpgQzbEvOjcReO1ffZ844PZGOiP+W1TKff6fCN4gJ
	 52HS4w3w3fZS9qwM2GCyrr06nnX+oX23Ff1oqX1IyOsgpS3wOE6t3ebEYw0BFMkFg5
	 saOxTeAQ5v/jwaswdv5dtq+J6NYFLlJwYjdYzIRknfF1VgVlf5+1W8lBE8pYEqwS83
	 o4ONghEEcu3zHfA+D+3DmCh5ANnm1BRplhO6PA5ZQxGiTw8gHOAly/6zXEl5lxB9Io
	 PHQ+rZ6JTbUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC4E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622143358.25187.9615058303501224078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa6d8923f83d4a5694112f85e36dd7014821c7de7cd8d42af71968203d5b3fa
Date: Sat, 20 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766221433
