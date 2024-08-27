Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D215B115
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724792154; cv=none; b=KQVGRLIHbpuIMa6FahaCDDch9Ck6Y2cpfTLrG7Ye33taNs47JL+lbcEHqN0I8PYqccQtIbUTlOU8Cw/5xQeM2Vh8IgF8ije8cW7tEX8fJW+1LJAJ06tog48sNt2gTnzygona1Ks6WUlryPQbGlYcCIRu3mCLU49EY7aXGw17A9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724792154; c=relaxed/simple;
	bh=+uwdvl0Tey6k4uJYKxnaNjHa2p9ZJ2zRIawsXDKsjNA=;
	h=To:Subject:From:Message-Id:Date; b=HjNY8A1gCT3BBJc3l0MdSJx3yA6A0JcsmLCSX4HKGHbja/M/XaCXzto08vndeUKNTqU5XTIvyYV6MvBcexEh8tqKPw28kPzJZRU5/Ri+Shvc5F7oqrn0s1PLLyy8zxsFXVzk8Qws4gGqlzmKwnvZa6+QunmwQl7q7N8MwAvmRoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiYY/yRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiYY/yRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF98CC32786
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724792153;
	bh=+uwdvl0Tey6k4uJYKxnaNjHa2p9ZJ2zRIawsXDKsjNA=;
	h=To:Subject:From:Date:From;
	b=UiYY/yRKKrqQV4sym9BgArwZ3NXuC9MrZiU9mLAaw1whHFlGErPzZClbU2y2jeo6X
	 mviIIfHkzzwLcc1p2Pa5ZSJFda1DXEBbPQU4OC5RLoA9gWS4lL/VCRHAC4QXwc2MXf
	 Haqa1zzt53OGB4p6uoa7Q6rn/ZhOrWfy/ikeuW+f3CX1oF/R7ra7VSIU73V4l8fIsK
	 s2Oy3m79h/fHTxiziCVF6yo18GUgTbG/5DTsR+9jk2STjn8qQYlg3y3ZPkVqp/NyHm
	 OX9sLg80DgmaGONJZSnlMlA+gj1XEwz4EJrmtzQ1gj45FTuqeEvTCC5i8iQDuSZI1G
	 Keg1v+pgCEadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6687C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479215367.9446.8565134225694192107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43979add3880fda748ef8d40b022ee1fbe94ff520698e78eb4198a134889294a
Date: Tue, 27 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724792153
