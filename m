Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A051366
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723309554; cv=none; b=YJHK04EvcyTrL8bteGnmrNNz0pkXp5wf6CldAyI78Kut0aFmFSg5H9l1zs4D3ZC2XCakL1sd3M+vyMFvK4ZBGUM4zekgwzy8ktkF1TwDh0Mu3TBz+f4k9cHiSwuhDYQMtujcgQuN/HFbI9wql/zz+E9cgZ8JL80X/xLhSFfaXpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723309554; c=relaxed/simple;
	bh=/0IjI43xJvq5jQ7dNJ+6Yu3ItdGucST0tZqn48y/Pkc=;
	h=To:Subject:From:Message-Id:Date; b=qblkApx9++3xIHQpaLJ/KupPrXR9UgIQl5EIE+ofQGJFTqOXEA8tC7rnNbf8Nu99Ic3VZw3ubJ6XpGrgYWqLyOkR/LIb8u2B6DEYW3FOAIIfH6/tQ2tKbtlXT5TIFjJPY1OfxIWL6aTNRXvkG+hlsxorf1N4QikPkALWVZ+DhOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuePiaW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuePiaW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6784C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723309553;
	bh=/0IjI43xJvq5jQ7dNJ+6Yu3ItdGucST0tZqn48y/Pkc=;
	h=To:Subject:From:Date:From;
	b=SuePiaW6wM4u7vj6l281ZpTbcmQqaXgvbFS2ZDkXijruveeQOKiIwAZUYK5S3tosK
	 Wqb/i6h4UWNWgkskJ2+VLwHsN5XdC64mlUmpmhCi29QbAqhaNIXYiZpsKDJb9TEgQF
	 HTUdjaCioKoDiiTbm1GtVkH5niIscjO17KVJZ+szStiaaO0sg37wjUyvSGLb1wkS/i
	 DKGa21YdEjCcu7i/+EUtunoan1MAhf33emodftvrFjMknvuiZrKDejxnQ+O/NBdFcJ
	 0BIygRfLqrT1d2618RF6HuyQBtrkzfp97rLWzgiseBRWiA9/PS3RkWm7+qUltP05q7
	 dciQW/0XlFvZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAA3C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172330955360.5157.8460956137174606167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1432641fe8e562967e47b22b36eccdf9f2db4812b0f56e0728259631e7a088ef
Date: Sat, 10 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723309553
