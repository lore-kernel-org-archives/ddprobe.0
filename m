Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1053C38
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765542774; cv=none; b=ObnPUbtToMYxpILCg6euPeWTvhn6sr9kjDwAziiF2QRiKXDMg2ubg5PGjucUQcJBsRvtUccowguPjRUKGPJZ4DR7u6n83r/P6iyQQ46q49KeOu2U+mvCQCQFoFKbOQnPBZC+W1d6bOwo/532b2tXyM99S2UsUD817JbI2TkJlsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765542774; c=relaxed/simple;
	bh=UXKBnnU25xt8dOAnPV7rJkg6jNIG6d4jLLxl1tZbQBo=;
	h=To:Subject:From:Message-Id:Date; b=QdGx1JCm9UZ3+S3pDR5bRZLCJCSI2ZGdL87Dc8iEoXzZwWKDwrUyzjM7YEN+vGqOZo2qVF/3HDdLsk76imTlBOKI086v9SIbZZ5iBQM+vkgy+prufYsHarZtCIF3XwNAX2/+8pzLw7DCCzHjSZr0NYs9xtN5CMM9qQyH0C8sFX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo8PaD0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo8PaD0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765542773;
	bh=UXKBnnU25xt8dOAnPV7rJkg6jNIG6d4jLLxl1tZbQBo=;
	h=To:Subject:From:Date:From;
	b=bo8PaD0fgyDdnHrPP2CEsxxd9q8dJ58bP7iZTfzdaVoc9bqUkhykIFqO4bZ1gos8+
	 jyMTnPNbIjGOTOAkkKJCuAz+qD/ecvbUVnA+GqyYJNl1xko3I/Qqkq1ZufbmIK0ioK
	 s2ngXHRE/q4eEbZFu91bWIMNy6m3rRfQSvrGLfakQP1tfNri9BXanpNZLGYDse5+ie
	 4CM8vLzRZPmmm0by5/HRpYSLH9FuOHXYkvpzLWNwUT5+9sMt768YbTJAKXiJxH/uFW
	 JGufk/gDlWOPXijOGnpWEz18zFU+WXbghyza7dJUWg0D5wH9IEtZ72d15O6a7MQXfj
	 hgkLpzcXx+r+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197AD4921F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554277358.5008.9003147839892242748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda825c561e5c2b9dd0e50956b50b09b094fa9beede7bfd4a305ee9610d1f56b
Date: Fri, 12 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765542773
