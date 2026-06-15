Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E57313272
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781550394; cv=none; b=ieN3PJ4iwFKH9jolt+DcA5/yz2xee5GhLOLNsDaFxW3NGec9WyB6RbmFlNUW0Wpkbq+W+NKNKvLIPqXiRKbG+IBvlwd4TvHw1nTU3nHGdnc8kR3XKp0REwj0WPbTEYc8Q3oGbaUpkACiU0kRJHFhHTXwZssr+/VkjckUY5xnUG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781550394; c=relaxed/simple;
	bh=m23oRQROsZ+aH9glw4/3wz3qlOE6+pjUHG/LZ3Sd48M=;
	h=To:Subject:From:Message-Id:Date; b=uKQSspjnJmylbyZq2Gt/cI/yQqc7rUwbbbxbc/H4iYhLZewJe3MAJUUWGLDThnJsCRcRzeJ9V8DCYKoj/Id1fA5IRIP5xeogOoXiKa9hjlCp5f3tfr3LH96eXtsfoImGiQuvPhuNiDQrzNv9O81CJsGdAzgXuDbMy6PMR9RdVRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlg96Pmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlg96Pmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8626C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781550393;
	bh=m23oRQROsZ+aH9glw4/3wz3qlOE6+pjUHG/LZ3Sd48M=;
	h=To:Subject:From:Date:From;
	b=Nlg96Pmb13tfx/EZ+i7KFHA+pe/pW/vQOk/Zy+VLBKW4OhHsPJk5q76i7v7YkL+sW
	 aKpLJubmHJ5DzogmFlfjspL+LwTHxZwTeR3E7Hv1SYkzd9SW6GJuCpYOZIKVC429bn
	 InCLg9DIlGrd0Kc+tj1knPeHeqfRw4+86q9u6eINW0hkflHCnTROwe42AXhneEecBW
	 mdi1sRjYwmxhqBFju1PsFv1pv0ewGRLpXcHob2K2Qf8U0UbnhvVPeD4IE7tZEl5F9W
	 dE8QHMQI1hyiWPw/BbCWkyaRs75rNp+BUGeI6fgRXIIjkJO8XAm+7AFXelZ4UukooS
	 NWIHlqkhiWKCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9971CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155039372.17341.11344133304364326397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1799e099eb7fd6e82e559137cd2ca0130ef079062333fbe30f3d5cc249d1fd62
Date: Mon, 15 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781550393
