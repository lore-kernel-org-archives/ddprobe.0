Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528B627280A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791434434; cv=none; b=hadQImhRKbMLqHUykOwWbLyxUjVPgjz7vvw12E80l1+9YjxJEO29EARDeZK56Jkjt6iyLjcqUU+zOb56f/tZfBHWB80DiWN3jMz9fTXl3UQZ/1gc91P8eBAlgm2SkFRpb6YBNx4vqfnMU2YLQ4EKg5QT8lx5H9kUoBar1a7RjHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791434434; c=relaxed/simple;
	bh=OQh+sJQpFDyjqTPEqido+33gfTpgnR87QBXoeF502+o=;
	h=To:Subject:From:Message-Id:Date; b=nve/bojosEJZeBWt2snieFI/kgAghQjB3eB8i+gms/zKhDUTUdUk702TxgZQYR6pTNvqEREjmiZqkFmJBVvxdXq1z586rzJCK7FMj5uTf47jyUlSqLDsTg36Ol1OK6VH8iVNzwS34Eo6wMh1usgWSeOE4Ht0/UFsCmAs2SGqjc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT0lUfq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT0lUfq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4446C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791434433;
	bh=OQh+sJQpFDyjqTPEqido+33gfTpgnR87QBXoeF502+o=;
	h=To:Subject:From:Date:From;
	b=BT0lUfq9DboiAJ48Ck2X9WnvFeCIuQFEyHoyyE0ztm1RgSdqiFhwjsRnxhov9waKd
	 f1DOGuIxfTvBeMB353zjGsHdfVrrNE4EV12kjjYSBGqZ6jVgL5hCjTen3qQ4bPi0Uc
	 DtWnF8AcvVlTk3pPRRzzRDDrbRzUSNKZU8mW6L5JcZDycLLwehfU/2BTkm9YBK9hli
	 OXoP6nrfqyo+Cmt8AARy5ct9w33kSQX/zH36OApaq5mue8GLuLiqASSbi/7B2uZzRp
	 rjfF8WGZFrqdISY3IyqoIXM9YT3DXGGYLbe8T0/V8Xj+zj72CvCePWAgJwhx7Bd/Ul
	 iZPGI5IVEOg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0844CA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143443368.2632.16239322454602045756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e683e25cffa156a941bf6a7412fec1bbe7df2a767946eb8def9e0e565dfa501
Date: Thu, 08 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791434433
