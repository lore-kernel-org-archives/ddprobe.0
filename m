Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B39A248F72
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759382994; cv=none; b=ryRW+6MY5bKfO2eVeVxK691OT6RXIt22gG2GcoP+47pZXEPe4j/BYYAxZ97pMmnts1wRjUq7zpCWS/rlxeH+bwQDur6TNdQNhvU52PgvzwinZ5nSkCH26Rvk5QF7fA1CWVQGM/RlU2+0PK4hGmf+kmN/mdCHale0tT0b2CvpA+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759382994; c=relaxed/simple;
	bh=TLSj+wr81svUD3kK7mwWlurroYX/2WPZed79xEvx0DQ=;
	h=To:Subject:From:Message-Id:Date; b=IyicK5vvIs3yKMtADzmTe+9+Zv3arI24qgRXe0jz8xdWWIYPY6vk5f93VFt56371MAUROEqjQK4fK4yEiI1dkyW/KDj5r4zAskLzmTn26I7UDJ6UZOvM78sraS5wHVTNGnlAO7KlLkgKkH2c+7g5EBPDMEb2VKN4i9KXldy9rag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkD5bq67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkD5bq67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431FC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759382993;
	bh=TLSj+wr81svUD3kK7mwWlurroYX/2WPZed79xEvx0DQ=;
	h=To:Subject:From:Date:From;
	b=XkD5bq67ZEr9b1RTdhxJ9bIjrBXRvDdouwXC0J6q5rF9yoAKeK8xVco4iLAKSxtic
	 Eg37wOPxYxes5GN1DnP2kLry+jgZFfogeIXNXF45wo5MxCSmyJZkw1yuYKZqUQn/ns
	 plwKHsy2eZelmVY82Tltx82D44Sj6hfrJ3UAutRe4l3CIdCmoSRUOVRUaqCMf5tW85
	 f8/9dhxyEQjJvlzW3ZwreKRqZ0uB0BBNoX4zCEreMM0jwUqZqg3ww7+Dh1oz+PDxDD
	 A55mrzSwLndJy0p/v9sPUB33Fi153OSeJjBA27YYZ2IrxGM21tqzU0G7TCj7+qRiCe
	 PsY6w8oKHQK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F6CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938299358.7786.9526474620734740015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc59dff27b8ba0ed462ea433387afbb32aa9d54bfebd06cd3e0688ef59213f2
Date: Thu, 02 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759382993
