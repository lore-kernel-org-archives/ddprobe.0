Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A452B2CF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736346354; cv=none; b=Q9dZCr5ANMCTv3fp6UMom10FV3F2VYsiAO7apuoRuq2Pici+t4Q8AnXDeMwWQCh7YBZn6WBm28H5/PWjKf0vtG0KxRqH06JtH7k7iKJBH5hKNn0NYmo16PmdTmq80B8gV2jjV9Osi7p6R2JV70iQ48IMqmQvwMEUVOWMsYP7r9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736346354; c=relaxed/simple;
	bh=gPRjzMKYXu+rhUt6Ker3bwbddxByO7HGzn0XBqN/8IM=;
	h=To:Subject:From:Message-Id:Date; b=eCt0iq0a95ggmffXvsBwhlUWTv+e10eYg8qbnPYsbf+todjY5o18a5AIJh0tNZORo4ND8Cce7AfM3WLbOWeS4JNUQd1/9hIqjXfnAkp5I+EyIkHm23n4Zneyj/U1wnCnWeT7UuMiMYzfIgBDSOmvpgxiMBIJkOhailhMIWFTUHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uF9d9a1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uF9d9a1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18A3FC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736346354;
	bh=gPRjzMKYXu+rhUt6Ker3bwbddxByO7HGzn0XBqN/8IM=;
	h=To:Subject:From:Date:From;
	b=uF9d9a1mq8a4l5Kg5ev9gniqlrhB3PiljNnVEhVTahpm+rjMyhdE7NIvkqM37Im6I
	 4iGgt8SmCZppN6JJj2hWX7lMHI+suhJDHKNaUZuDK/yo2HH37tAQb9dAu0hX0teBGb
	 ZIA/NJiZV0qBcvS3YWRIRwLumNE9nj8iVWqyAWvEgI4amY93VnzHqfgNGhRMIOVe5F
	 bAFVlTKOvwyETrG2UqlUEnyk5QCJGccf4f7uBJNk+CamvwMBXfzOS6H+rTkjWUhXUj
	 zJD0GT33mRhkY5tqkyggE658a8N687ef0jZSr2Tflcdu1WjSKjj586AfHE60OjF99W
	 J6vGlLWJpXwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D36E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634635380.14457.14318983149586943772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e414b6b7b71142f5c5f47013e8b9f9e1178d7cb7ce00e7f6fa6c31ee01d981c7
Date: Wed, 08 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736346353
