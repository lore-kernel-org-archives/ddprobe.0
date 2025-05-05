Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3220E264A63
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746469194; cv=none; b=SGmTywRwef0ugHFcP6TcQPxgXVfUvVkDjZ7r74Dh14mgjF2ZQtgO6HmbFTDkfyjvFo0leSEBvQnpvngORTB9shUxHUIK/2Yg6mxRbApoxVDoKPKa01Ba6LsGZrQ0jW/VCeWBcuds6l2U7TDq6asyoRLYtF0a9aH8dbZzaEmPTNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746469194; c=relaxed/simple;
	bh=VtHvYEz5C9MKqvDRvFTc9htKlFwGC+BlZ2y98vIYU7A=;
	h=To:Subject:From:Message-Id:Date; b=WXGXmT8xn5/00x+7zneOnQ+icu5HKdO/plKcjtjHkzZBE/A9e/XcwJ7XYWwoIWpurglMKIJnIhLLN+N6eUFO2ruRvig4/dJ8KuAmOFBwP5hrfxUKQiF5JbW6QPn6z5DH+jSYig7FBSyisu2lgmbur4TJdwiYyVAa2QuAXTlLit8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwt6JLMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwt6JLMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F717C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746469193;
	bh=VtHvYEz5C9MKqvDRvFTc9htKlFwGC+BlZ2y98vIYU7A=;
	h=To:Subject:From:Date:From;
	b=uwt6JLMU6RUvXTEH6WlTi+aNZHqeo7XoEpp0z17XhQvQyHhxplBpJnN5mnDLskqIK
	 Mz8SEI9KbAjCerhVtX5wHbrhhdHjX/eW9F792Vl1HEbBlSE3l9DHn6wbwWYEekRy0z
	 Q0lSkqKI40gMwtbl2btRPR75B4q3WHcSJC+/G+q204Dd5uC2HQn7Dfi/P4bWb9eXiX
	 +Jfprw5TETxVITngyr/F6amxpSTE3nW5f6Ec9gjxTayyP6O9gPqveBqhZWUjnR2Vjt
	 KIdYCjcaRbV/J06+ct3DaMy2dBlmO2ahKlQw1h8Q0vfgR01MfNUkTiDuIuBiwhYWET
	 vmThCgiX+kVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C0C3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646919357.6608.12880723105329804890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddfb66f5b954762655440054833293cb1749d467c790fa4f594682ed000c279
Date: Mon, 05 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746469193
