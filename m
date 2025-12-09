Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AF126F462
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321974; cv=none; b=ptPmpU6YNMtqZFPO2dm3Ccg0PykkIUaflWhTh4CRqhYjcdMQJGrJt1CKYiZCLo5I+BK6ngOSEsgx5kkOOa9R0qBCdANtWyW8bmEPYTR2d4UO4iteO92oX6V1bbyi8ypwy+efr6hSNuPvgyRyw4NKkt0n+xlFst16Uzn5iyPqWKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321974; c=relaxed/simple;
	bh=hh4PkJKsWjeUKsnZWFniQS3ypNTFEffpqPu5WE3E+9A=;
	h=To:Subject:From:Message-Id:Date; b=t/ddpkKIW2QMI0g0nIwj7ZzuDI7X9bCNxiSQ9PZHKyeVhZeiUlwGlIMfYretRf2b0KwadG3fCj4Q3ObjqNgQ9B2PKazBeUzPTlTLw3pcJCS3SztUMXwRu+qIYHO3ztcCn/lhMrCYcCtZyNXKJMtJciWt3s9dLaa0VahGWIneIXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIzkBAsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIzkBAsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5822C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765321973;
	bh=hh4PkJKsWjeUKsnZWFniQS3ypNTFEffpqPu5WE3E+9A=;
	h=To:Subject:From:Date:From;
	b=GIzkBAsGucXhU5fagz3u8+RjJkIJ0JOzC22O000fGVTpLuPDo9p43S+VX4NA17MKu
	 I4aPP9INxW6p75DSBF1AVsIC/JaUcpKBI0BF0HiD9Amoc5hoDdA19YEGmjEzVYzEQH
	 Tti9s+EBcwr0n16t1JGD1UDhLHHp8fx5HJzg3UaNDR1UqVt90jz371bJ2XbodQaPIF
	 W3xD0k0q2+sk49QpHKAABN5Ggjs+ZsoJoCUkY0w3kaG+SD2ExjRhjLIrw8bYQ9dxjO
	 Whky1QkMteJh6azm1YCPB/44HeHVdDme+eeDq1LOj1oTWlTe/LfJu9ItCCVteAVxRU
	 c8070K8mnvETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95278D3B9A4
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532197360.16241.5722135967068571258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a435d74d4becdab310c52b854215a529c67566aea43ade32780bf2130ed556
Date: Tue, 09 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765321973
