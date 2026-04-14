Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033DA225775
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776172654; cv=none; b=G7aECjHICJWuSZXzjOK8UKLyF7DM40VCBARznYgKz/IMEGIbb8ZJPDkow0cCmaVxUfb1dVZ9TTt+a41yMxsgUmpBn4mZ6MkgBNpC3FPEd/0WHT5KTYqxV05KU/u/xw5HSr+rdzdY3cxv8WZ/kvCTPwspBJmzqRqLNN1DfvhYL2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776172654; c=relaxed/simple;
	bh=dsekNZNlMF392t8TDR8Ba/Iw2ZQT3FKeL4rhZbQGhFE=;
	h=To:Subject:From:Message-Id:Date; b=G4fCBidiXpQJgOqC4sbXyEZl+gABWxJ8TZaJtuDPL3U/bdEl3joedvtnqop7SJ8yD0jFTIwBBwoKfMdsicrUDzLVbDo5oCx6/975Q6pJLWyiP71J42DpsMj1H0Cyr0JEzetcnJn7ps0r4DlevriIz2DHRaHuDRCaN89aromwiMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J690LePP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J690LePP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86ACC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776172653;
	bh=dsekNZNlMF392t8TDR8Ba/Iw2ZQT3FKeL4rhZbQGhFE=;
	h=To:Subject:From:Date:From;
	b=J690LePP4fYuRbHC08SGZt3WSdoiTzZuNxqWU7+QYegcHXrTeH2jRaJ5E8FPqZOlp
	 3NQImz42GnE+jQVuwFDYwh2grQnsIEIK7WwV4wfT07GBX9dJwfvegE5Btb2IYkcjmK
	 CBVVdkCh6gHRUYUEeY6eQST772m1CxZwuWBzXZbvI9q5I9c5IgsV8LgdeOaYoaJ2Rj
	 5gp1jkBobERhDZHkIypIOYyZPoVwN6qjfqFUiLtJKTrfQzB/u3PUlOMWOg3K5ADjYU
	 GSf3QbhcjWJ84y5G/0lsxtnBmj/IGXHbcHSdDa3PS0eWXKoyHF9phvJhHvq21Diyii
	 Pm756kaDHHgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9071F9D0CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617265368.16728.11254694478902972291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693f4bf73be6d09052c049c0edf9e069978e719064bf84eb598361096ca10688
Date: Tue, 14 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776172653
