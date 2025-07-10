Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284822D979A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752191994; cv=none; b=a091nV3Qedg7y2H33AkcUin5rIBHg2UcNW9eFkEj+DUXnugGnco6omvPOD87FqzRpZnbhhmy/FiAYfC4cFLiWp1oilrlEsZkgRWU5ckebv+2NP6AndIdNMb0+8j0/7bjfMoWTaCq0Obabo8C2vE5xjwGHFYhGyJg7fKBi9ef5BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752191994; c=relaxed/simple;
	bh=jXvYiVgQMwk54F/Z2YZbQhhNp20DqSGENl402ZpUFDA=;
	h=To:Subject:From:Message-Id:Date; b=dL6H4b222mVZLcEFAUe5A+tiG+UGY9J4BQ4Vp2k69hWfzAGk5stxqE6L8EwwdF+dqfvwN9lHK0ytpjS5VE5u4Yyq8kb7EwkdazGAjtaWGe9EeHSxBAL7sR3gT3bd2Ocxjf9uQIAMwSoAClW/xFn8Bw/rZ69YQte4lQX74afLZMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeDZRC+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeDZRC+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F8C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752191993;
	bh=jXvYiVgQMwk54F/Z2YZbQhhNp20DqSGENl402ZpUFDA=;
	h=To:Subject:From:Date:From;
	b=FeDZRC+cf2rJ0TgnY3iqas/TTC/Sfx/frL24tusQtuyRkxSIQmd4r+nG8a9VNZ8tI
	 0o9Ntt9LJXXIq85wEtwPF1uOxck0K8b1J5ng+F73MBdcJ3wpl9jorwehncYUDtrspN
	 pzx8ZQJVebwdcIE7C/rGGnGvckrSoE5JUkTo4BDis3FJ5yHtG067kMvU7Jw5pyUfTH
	 EdNrLrsXjtAm3v273cMxu9hoOsWzTXxN/OFr/VEhF2H9C1k3oA1JhOS0MPA+bMsCzB
	 UB/PqIf5Ybg5Lp9DCRcjM9wAazg+G90dQBBnYdLiJO8mlabaB6SapZC9JiprHW8lF5
	 ljwTuExp1aN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BBC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219199358.32318.8868724648625809254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c45a930418a554e6ecd132ec5aa4d847ba8095a4dccee37290c0cca17013881
Date: Thu, 10 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752191993
