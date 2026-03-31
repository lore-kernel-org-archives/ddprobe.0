Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FD63B52E7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774956894; cv=none; b=coBU/mKR75bVrvM3PI9YqZqGGbYcD6qPWv7gY9uDF+mSPxSj/bggs57V18oZSX/GLcfvbIux7vZj+6/AOZDRulanQZpXXHYVYTAyCkTHeP33f5czKqcfLwHEjareYjhvSLQNJflcrsTV4EP3L8T3rabuVOc7Sv7JK22JkkbKzSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774956894; c=relaxed/simple;
	bh=3ac+x5UpEHy9pwFitH4Az3X6JrM4fbLLYQ0aWgS7jUc=;
	h=To:Subject:From:Message-Id:Date; b=Xg1dducTu+qeZRUi+8PSL2IGVYPuCDZpe3H7YzVp4Asq8g1ryUP8xdsYHXSElsqiwQMlXkUSXupH2DKuS3guHHU+ygv3Ge8vIv3NhdRSubH2uaB5eH8El5zFqcoBzoXIS7NTXDNK9fYYlu6rD6NYmefnGwiMQGqTaXMiupkHSr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flgAUUo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flgAUUo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA46CC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774956893;
	bh=3ac+x5UpEHy9pwFitH4Az3X6JrM4fbLLYQ0aWgS7jUc=;
	h=To:Subject:From:Date:From;
	b=flgAUUo3AERRqUmuN3KK7x4V4nFloZpukBRwbVmiiHN7v0Xx77EPN0e1N4EnUCQY8
	 WylkuOIWDX76eGhpe9cNpWCLCbhjSmDzMcLctYz/oBOK8FFkMdGiMsiiEtGKnyFvbq
	 BXTzl2xt1x70CKjYKxWi20JR3ACJk4/sqlxLWNxYiXT2SJjyc4wnOlGl4ns+7Kje28
	 GdNsgkduarw/TnwxbUvMjJ3jqp+ilEaWOPi0vZsEjGke9fpTJ5/oSW63XA/fJDImMP
	 CuU64aHmL8VBHeJ4FDxK31FQhdZM7ymZEr+UOZfruvWS9eYl/j4DoFzZh8hdUFhzJG
	 cfxYvw2BWT3GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D001061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495689360.31495.7690063873276184388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e13b96f58b55d256da86e0c45ae2ed5ffc45d4440ce508cc7f21a66a07c7d23
Date: Tue, 31 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774956893
