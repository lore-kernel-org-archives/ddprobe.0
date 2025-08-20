Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31227221271
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755673194; cv=none; b=t1b7ProkLS9MFBN+kCzBrXsIFIzMw8odFTYfCH9BFSBRA43QY9Son3lY77Bfcar5vKKzQ0gCOnU84kyyRyJM9DSgFs7gfAEyzmtCH41vbuLDL+DBiKFgwLqyfBpLT0g069SC5/luxBt84k9p9MIeKun2Z4dahePhnSOb20VFbos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755673194; c=relaxed/simple;
	bh=RtVKgV3g1oBNJrVlRKmQDdWXelCg84WKiiNIeXWDBQs=;
	h=To:Subject:From:Message-Id:Date; b=c7H/6WkPvFlVJV5JojNWNtEJOzHyX6V4XdpHhUemOyVVs26DdsZDqGHKkqyMYHuX3s9ozbNouq1kkd12plGUU8NSz7uKGD3tiHIeZuyuoTbowdp9bHCLhIltIZJ5f17DAxB2H5svlY9rbwR5rcRrvUtnHuJsfLOeOHtgtAzZgew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd0aMRKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd0aMRKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7B6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755673193;
	bh=RtVKgV3g1oBNJrVlRKmQDdWXelCg84WKiiNIeXWDBQs=;
	h=To:Subject:From:Date:From;
	b=dd0aMRKTzbjkaTGAkrxAl921DtOwqvfDufDkBD0XOVX7G2LnZi6n8aaPSqKwTzX4V
	 kXOFnY7vqOBq6O02Jy1ma8ROm9rd7kqJcWvv+o2j6LBlrUJ7ODGKaPhu8td8bzZY7Z
	 ebRi3p+Rzxg8OopHhxoX15a04pPQrLTQkdJp9/pvyKI6qm0tvAncyFmO4byu69Shp1
	 54zm0c2gZe775tRIdAIwpdks5+wBlogIWs5kMlsNDnC6WXnvZugWdHIhmhVaN+7J2H
	 QwfL62TWMqyjA++ChHYyIG1cOBgntfjSVu8cIpZ6Qw1YA5jCmpOIVxuIgUuUJhAZK5
	 MYzbqq/6CO3Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E627CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567319357.20879.3078652541301764462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10507d75713dab6d892ca236ce6195d2f9b6df94f1244b81db13239e11317d2
Date: Wed, 20 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755673193
