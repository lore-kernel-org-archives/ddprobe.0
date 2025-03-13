Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1EE4D8C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741830534; cv=none; b=Z88gEeqrN7uopdUtX1pmUphcPzg3ZBivkvEhwzqeG4QXEB6Ag2yVYlv8maDMc4ltXk+epznsggyfjIafPJxRkFzzUTcoJxS4GvjlXFmmw/4lIS6YC9saBLIhvKfYBMEadiqvesclkOE337oiWvYqtIb8EHH5UvXM+Gx22Kg1xL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741830534; c=relaxed/simple;
	bh=1RCECpVfnME5bUXkhmmQ20JddGViKxB7hkG+2QHvro8=;
	h=To:Subject:From:Message-Id:Date; b=OyNkevyOqX/halTOp+6w9SMggjy1TNVO70+nsIYCoJ0Jhkh4IE5SS3DI9yQewgZu6AgcLd50B5W1J9dlAatrvbMV3XH3dZt2hs97k//2oJO/tpvULpCeGBiGOJl/BWD+ZZiq9058E4zZGa5EZHe7xtFMS9Ylw0xbWLE36dwXcAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BghdCgsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BghdCgsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9DAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741830533;
	bh=1RCECpVfnME5bUXkhmmQ20JddGViKxB7hkG+2QHvro8=;
	h=To:Subject:From:Date:From;
	b=BghdCgsrIf6GvBChEsDX/BfNzj43gtnMjlDhPEZPAzyxhh2yk3PAnFDK1pN1VlfqA
	 RKqf0lmX26LQ96NkfiFcb3A7mDQfj70w1gNlyaxG9BJ0bv7HeMEvZmIWT4UFs5DTDX
	 TI5OHsq8SESrRsyvHHt8BliqgegHPvMLbbyjeHNDmIkv8PYy8cBhZzthta6fNiSaU+
	 TFGDXPEf9QuHyD4zZ9Mef2mF30NQd6AMHU/fyhHGOdWGmGKJeg+a1WcLu8HYpITi5w
	 yUHYEgRQAj5Z+gFjjbShoa8Tk5P2C7bDhHYSX5miL8lzUVx4Z0bAhOeVBOnz/4J890
	 sK7rh2jDc5gWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F262C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183053359.31305.17753337300657341331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08c9e6f385d28942d13cb21cf3035227edbd63017f972438eafcc5c922c044b
Date: Thu, 13 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741830533
