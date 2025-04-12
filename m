Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624A51E87B
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744418995; cv=none; b=MEVjupMNTpQajG5Fuq5yBbYRy/ciimBz0QdohHYLijL9t9C/j0cocu8UVF6pnsLDYP6bJ4eStNzIAwLtviQIe+wS4KwvVFFuyXqU7g/18o8VIMzgvhLCmJvvjq1FTMJcffUP778mSyXt1RmOYdAZF6SpOM3h8of31avGKONG59M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744418995; c=relaxed/simple;
	bh=WIDbFoibNlJJAdNFCBZtmdQ4J3dYVwlnUrVfzxJFzFY=;
	h=To:Subject:From:Message-Id:Date; b=GKSfY+7m7vIDoWHpE0LAyB3ddeSNeXhGZvMD+ExqrZdmuAG4/+QsAwlAM0wL08LZ0sHq8I4ijmp/nfSVbMZncggMEgMM82MWnpQU4EBEEWuAciGFf9uG18bc+ekKhH/klSjNwZCtQhDSxaTPJZP7+P7HIetnZBfT1bR2ZZ8i5tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udxf01LS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udxf01LS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03A0C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744418993;
	bh=WIDbFoibNlJJAdNFCBZtmdQ4J3dYVwlnUrVfzxJFzFY=;
	h=To:Subject:From:Date:From;
	b=udxf01LS+S/ONeEqWp6g8so+523toB9KP733vzojoKqK0nRH7yT0b7ib4HJmkNuEt
	 9gS3nJlBb+9zZUpbGNj0ZsGi6D7qv9mA8m9z+VgNRzXlK6ScMiERsY89qItyolEid/
	 QxMcV8bfNQ4s0JaSPOQ9YAEkYvfYefQAVEs8o8jUGhGx+2TFtvLf8n8DB3RhxCxR5v
	 wWPjGl6oUPs7Hh2q+Lfa9RjH+H2TnqC7dcpaocOJtd7w38qInHWT6JeOSGxtEHcxJi
	 gQIFB2aRJ16XsqoUcpVftUok4Nq+TULYsAuTgAKzW7/fk74i74uw0K0qcZVAOVJdAU
	 oYEWeatUGlODw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99753C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441899360.9493.1413657624951023618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2784fdc6575ddbcad0a6ce428fd3f56fe14c5962ccaf0ee8b484b2349ceb9d
Date: Sat, 12 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744418993
