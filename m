Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808DB2FF648
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763226654; cv=none; b=mXYUj7+OmgwB4hJQ9Li2VHjmz0I7IRih69HHzyVbdXq2vx2rAUKK5ZegTNHWZo69T9tg+YWz8C5PUrqSo+Q3zOsPTBOqRQVoF+MR0qiJK7RblmkU/5ia60sFsNPHil6pFdgKT75fv/T2ILGM6PmynmFxSLdFZdkaUXP5Sxd4YFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763226654; c=relaxed/simple;
	bh=WlmBjJo5WD9YSlVjfZkuaGNoIB5I2vuP+yfxHWC9ASQ=;
	h=To:Subject:From:Message-Id:Date; b=YLKPJ6RxWGCyhvk4QacrVK1mC3uea1l22bhuMMJFay6Xi3thW0H6pFDfa00TDj5z6zcCTbx9+Yd9Uxxaw7xnlZNJ4nONOPCw3StcnuXw9JlUG9RufmmiwdMgE+CtkIA2Axou6Ts7Fs41HbRH99V0GjmWnZWDEPeNqoCfnI8I6ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzUMAWSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzUMAWSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C286DC2BC86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763226653;
	bh=WlmBjJo5WD9YSlVjfZkuaGNoIB5I2vuP+yfxHWC9ASQ=;
	h=To:Subject:From:Date:From;
	b=lzUMAWSblNQaf/dxS0wIcdi2uRuOFElhh++vArKY0jZREMX7Z1OLGua9cXU6591gs
	 4hOQ9uZympLz/HqfXO9NLmWCGs42Bhye5l9y7zrWNwaymAn7t7OPYQdAK3WAEhCR47
	 zw5p9yx7SqmANE5UAFBmJuxDJc9g5ZVnf0Adwz+eDqBn13vzI/E8DXbPlTiMnwRP38
	 UrwuAxsJxFeIYgM4TFcKv5nROkrZf1Wc2zalXZfM3LCgUS8qULQ5DgWh2IKckU4yjB
	 PaUOUXbTxxBEkK4jEKEf00BPJqHXGU9WyjS6uFqww52GJ1OpWpKSSYl9t/ML16pGSa
	 EMxpZ3lDAYcCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9C6CEB2E6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322665358.25412.18307086398343524373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8bad49c46de73bc2c776322e641f49f28ecaa48b1a69c5abe16a37630041d5
Date: Sat, 15 Nov 2025 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763226653
