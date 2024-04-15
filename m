Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F84E5D47E
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713179363; cv=none; b=fZ34NMv5iysAY5RAc2iogiiTM2Ra1kfOA2UZ9BIva7FjJZgvh2jlVGKjc2ql/CbWHhLAaodrQk38FOhHuLs86w31+K8aS/BSdtWP5Ht0PpR0YWCwfVjTxI/tYatwut3nWTOJSXxQKh8o/PYbfHJmH6pzwJ61gVkocBl8OtCPl6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713179363; c=relaxed/simple;
	bh=7KqcxVpabW0FDNx21n35kW54dArBVYCknOoRThR2buI=;
	h=To:Subject:From:Message-Id:Date; b=YGT0944PkB+AaLjeKLUXe5tMiY+D/DP25/DJf7uQKgT/NNl785kZ6wB/k9QvR+xgyDNnhhVxO3BS87hsyEcGbqyok2jzXlYFMq7eY6xSgMWVRkfVnoVvkTpV7+o1oID25R2ZQvQh54cMEicnHRX9vft/05qQIOrfnNCJUdrJWo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2hpSS1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2hpSS1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84D6C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713179362;
	bh=7KqcxVpabW0FDNx21n35kW54dArBVYCknOoRThR2buI=;
	h=To:Subject:From:Date:From;
	b=O2hpSS1BB6scEjSox5RSvKXFxAi2WZXKo8JJTz0DgrqVdO3zngjg5eUpfQyMM0pNu
	 GB7JiILxOAgpEa1XAkjX7zaABOJWXwgBP/BdAisWcKtrC9FFci4ifNlsUE6JV6LQsQ
	 z+6xclGxKecifN6aNytv/qoLaDhQnEvMPEdNc0V8v/fpixrUrKFiYmW2M/OmGirrN5
	 7IbdWOuxRIWkvnEsPU4qni5XxgxLzDq1YJ1gn0LVsVdU/2AR0IWJksXFgKRvSsplv5
	 BxEbb3bVNVUC7eKimRIKlkjlyBkNkJThkzRGJCSnb+o8TXF736gqdbTns9rffnwsJH
	 QWY95CjFrpiAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1D6C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171317936277.25403.4993406806238121305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a3e449c42e19dcff3768440a523d897c90d665b68191860087351f04e8c6dd
Date: Mon, 15 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713179362
