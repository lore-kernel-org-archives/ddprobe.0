Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604C21534F9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717259663; cv=none; b=uBf2ggWGTB1c7Pks4CnD/YJcXXqqXFgIhYDkvG1GNjBMsEQHkxLI003mc+f5yiSDIHGErRDKmkBo7I9Ki/U/mbIt/eilAtwc/HR91LM406PqtByZOOIcMFGMbJlMUYf1V71RUUcEuihLjN2PhI6frlve5FnkFLSOA4aIuJkYHLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717259663; c=relaxed/simple;
	bh=/XKBmWHWp3epekNT+/HRU2wtuzo7HfeNzXeG8dqlx98=;
	h=To:Subject:From:Message-Id:Date; b=iIsoGL2ZRZ4YzHyZzCAiCfPMClslhngdUi+WtgZJo94jh70N5xxNuzTigwqLrcTthyfhewDS9reKPz0WhrKPsORaymO09vbRaJMsqql8jU/O4tyYsK7hRI/HXWPFyQeoJTDJu9VVw1px+0SuChQ2wewBgOnm4wvM4h4z6pVOjpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgjTciXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgjTciXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F8BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717259662;
	bh=/XKBmWHWp3epekNT+/HRU2wtuzo7HfeNzXeG8dqlx98=;
	h=To:Subject:From:Date:From;
	b=RgjTciXcNukQMqOH+KK8I0j25cGBFsoJt5QIL6r5BfQ6G/Xy6Xbgb0lhSjsNUqhiT
	 O7MJAofg45gYzoQF9MvBr+rY9XJMaA+T1nqNaYUkTUAvWgCJwE+yB6KOANOd8NzmCB
	 noGW+Pxq9TDYz8021/3D4ZmM/ZwfQyCI1GFTAvZUwdGkgkzS69Hlfe4heEhWsvbU9w
	 17MrLAiJ+IcEy2Rg8QEQj29FZnMCgM1mL6HfrZpgBXXIzv5wuA2vpUY2fdev8zxk+V
	 iOxH2XFKiIHZ0C7KEoPNRE+j/h7ecsNA8tc/23jqggrCzrpLKzjs+dDE7XHTswcL1F
	 nVLdaRLFYoWyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC75C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725966282.4464.18030670881228830784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516c489851f3647b49de3cef1e7086cdf0f5ebe3c728e7c723f28107d524a67c
Date: Sat, 01 Jun 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717259662
