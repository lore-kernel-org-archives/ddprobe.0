Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F351BC41
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724117755; cv=none; b=ququbXCcoRQLpMP2jkhCu/2MG+8bsS5MelrO/Ykit828jq36ulWeydpMImOhg8P1v00hyLT7xfRdDqsKAjnVgJ1iuZ2l4MAbwFwvQFmE90naxUGp+J0KKW/EM2TKsBg/tlaWJR0JGRO0Em9VYPyMIZUNc16gO9Zwbv08UNhtT8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724117755; c=relaxed/simple;
	bh=JEvOlFEop1GIGIGSHm61qah8eBeZpzmMLdbLmcaEkcA=;
	h=To:Subject:From:Message-Id:Date; b=fFixdsiO+LHxCgEq2FQm86E/lMTOSRVYELNMsYe8KC8fGeBpPQ7PgvHPgxpXhzW/IwY5zB1FS69aBzztKtoFKWf4DMnwInLynSMYacp7P2LTGJf5n4YTeKKnyaKqk3/A2lBtgfadK5qQ/skcbZrGkm/evQqlNUwMb41DZfq3+is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYs2AT2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYs2AT2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA0C32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724117753;
	bh=JEvOlFEop1GIGIGSHm61qah8eBeZpzmMLdbLmcaEkcA=;
	h=To:Subject:From:Date:From;
	b=bYs2AT2+S28iVt6Mmvpb9d/NDrKgsUC9LOp50bOoVDGuhmQuI9wqpOmnUjekP4suQ
	 tI2LXZTRTsuSWSrHtBL9mIj81rY7hFNZ5pI7bgbjhNFocsq/kGTDyx6vVY6PdLkwyq
	 5Hkv1X3ZLQnNacLGETlSi7wY6PKEvpg39/kfoTqDvBDFOcfiO8qjC5OqHIEVgPkoBI
	 mAg8t03J9I+P3y1UxtRanAcafkcefJq1OUMlby6VNllOC//+kfY+8Vy2sx7TXRZ7MY
	 9KyIrNySy0aLKYw/mdnDttgBf0dDmeBMuSjaKzr4JRrnZV2xCPjzok3+ojmLFSDzUv
	 O3zrLL9FDWHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98805C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172411775361.13383.7046670008931889522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316cc090809f4d92f579dddaf9733a6b234db1f126f0b2381412f1a399f77715
Date: Tue, 20 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724117753
