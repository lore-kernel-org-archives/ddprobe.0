Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192933E0754
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782843514; cv=none; b=GcSXPlQwrTwgIL4MXQ8MXUeFy2K/NbxCesBHhTte/awTOozS9rSGDYIfmb+QKuq1DtkHy8M2tTMBV9Iq+0/b3M72roXJsYuGOEmceDCpp0rVHJ47jSM0MDXchodupRSAb/3cZK5xZS7I5PqFkaNSoSfNrUU/ST+QpUTYf14k8kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782843514; c=relaxed/simple;
	bh=87HQScfQ36SaH3yDxC9xwABv5Ad51BooLmsgH2LCa2I=;
	h=To:Subject:From:Message-Id:Date; b=SI+voX8NCZQbMUrzCWQlcwT2XSGXVpIz6NBbGJypTOwgqkVcXDOKVWPrhozKSYV904o8M2WkQzQrQV2p3QjoYpcvrjY5DDUNlj87myV+h+T/M4In2np+1VoFKeP55YrMyUJIBg9R1j1OtWQvjRNM8TJcWDFDGzCnw+IT9VjDvvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF7nRTDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF7nRTDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C05C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782843513;
	bh=87HQScfQ36SaH3yDxC9xwABv5Ad51BooLmsgH2LCa2I=;
	h=To:Subject:From:Date:From;
	b=iF7nRTDPlhYRezlN59SfHyGEW+qzAO5TolMSUvIP39AXKVjcMXil4vZPqcJdZKPYB
	 I1BXhxliLmSMhDrt8RRW/Q7IocSgkClA9J8bIy49AMMJfkeKUMsVJrLAD11U8egk+F
	 otwDG/izHRljem3lmb6UOj5IQoDVOsvrhH6DDohkKpq16QzP8FWJNvX7HagyzyyU5V
	 RomUvGEx1CvsFn4I/SBcr2mWe58S43SmFaUSziEIXMf1bPgVCZbHnwT1X2YX2UStIM
	 Nl6v9tSwSl7goO3MyUQ3hqdOxC6IBRKMQpptbBlYEFBEawO3Gj8IDIBi4nk9Lqnt8J
	 Av0dEnScYoaYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284351369.2814.13775955557123216821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a33be10622051cd331756b116d5538c68aba95bef6fcf941ce00c5afb3d6ca
Date: Tue, 30 Jun 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782843513
