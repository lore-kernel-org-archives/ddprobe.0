Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224A61E5213
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751889594; cv=none; b=kRt2y3U+2zBX+kHNOTPh+0NL2lST0lwkyH7+P+TYNLSFvxTW988k/oZvNqhk7+5a7m2wQNJI0ZWKq3hpcJivQPLMJZe2d3i5De3riZKRzg+4NhvYkk1XLSaB/TV2LuvBi92fctW4LVfqYybIJFV53Wbe3vjJ2MWKQprct3dxBb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751889594; c=relaxed/simple;
	bh=Ub7YBNH8cYS71X05IzIbJo1aXQpyJ/QRW9KgDDs0QKg=;
	h=To:Subject:From:Message-Id:Date; b=qgvrQfRbW0TaQ93ee3jhd6KYscxjnWvbr3/+JAWvCRY+nsQDjavLm2VCU/347GeCsbNv//PvNh5tcBWwcgLGGaJoIZ4hI9SK6h+3N9c7z9d7Zmaszhn2myJlm+K/vkBjVyxj1q3r9E/yJy611PsY8fJh6LbCK6FujdNaGg9LPoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seQre5xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seQre5xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A064FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751889593;
	bh=Ub7YBNH8cYS71X05IzIbJo1aXQpyJ/QRW9KgDDs0QKg=;
	h=To:Subject:From:Date:From;
	b=seQre5xeMf9ZguR5CE41xNPQa3JoEbgq4gFiRqKFkO9b3180Pd93xXPwQ63VEtx35
	 vOG99KiDdIAGDUBoKIdwzCHQOu2DXqJ1MIEgRSf3Q2nRQCLNOPeFMjwt5t4jTg8VjO
	 4k+wKeKA5iuD+TMBfoQk5rjF5RKaaP6DjhUb/Js0lJDQaBufVFRzhPG+FGibA8+1kr
	 GapRriaTLxYcFwQ5q3dkiQKGU70rfQ/+D87eWJmPt9kjdPS9MkGRpzvpiY9BGOAseY
	 e/Kzi7ExvfFioNQ5Q2tQ+VqHZmqXSs87hSJK5PvnXWnSrbR+zg5fe+8eCQ8D+5nn2i
	 F3i9NFMkjCd8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E58BC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188959357.3729.15104273135116342982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c81b7317388e4bc1efb105232b6124170eaf28bf7fce0ab55a9a4da85f6e21
Date: Mon, 07 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751889593
