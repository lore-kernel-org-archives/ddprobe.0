Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97F81A317C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740595733; cv=none; b=myD74NmLJWz6JBK3HJWQcP6cOuKiqrtgepSMrkKSP3MzbMdIXb/jeHW8kHvmIu2P0n7QkMu1XYIHs6hV0fbXDR1qnehl+UootOCyryA2It1s5tOi2OGvfFP8zA3wSF3m3+taJoJ/+3JIlKRuW5xwqGiO3EZ1vdZgRlThIl06KpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740595733; c=relaxed/simple;
	bh=Q4Uxu5/Kq9jyXKt+OJDR0dmhfVs9VE0x/KfT6GXC7dE=;
	h=To:Subject:From:Message-Id:Date; b=P0iiDDjiBTO6z9jGA7qbegAR3kuM1ZfAJJPzvAEe0fKFyidda2qOvnUwCuiRmrwI6+etxVcEqLibghK93cnJ9TdxaFaCfePRi601QlPOEv6gthnfp4L6tQ4UjHKttUbqYjyIgmagDixMuuWkTKdPn0hV8qzM1L5c+AqsvKPOqYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpDSS3i5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpDSS3i5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD39C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740595733;
	bh=Q4Uxu5/Kq9jyXKt+OJDR0dmhfVs9VE0x/KfT6GXC7dE=;
	h=To:Subject:From:Date:From;
	b=SpDSS3i5Jq/g8a+iBhd8CkB4gVQZGmmBHHeAHI8V8YCZiNlwiWVQ9XGU1l3VD+8gI
	 ZBdH/TRt7GRgRoaQN2Gw8Nn+tgx/xN4HOxxrC9IofPsaNTcU9PBLZBp6Z+CLY2aE/i
	 V0TBFyx21tABtB5naRVC7vwKzAsbWfKRi07SGRVPC85J9JQrwKysh5E5HpYi6EmRMU
	 YDsHz8g8Ud7EtNdj7NhjMsNFA11XsuAYkUR9xZaFL7ygZRBL/Gs+QekhgCHGXbVqzY
	 SzQDaiOfqTRNCtKDVcH5wWqSQCTb5QPLa31ebS5uqL6/P3JdNBfBh8kOrA99Ym5oS6
	 kxvk7HkM2bv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4BC021BC
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174059573360.18109.1715887217963776282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ed541b6bbe7a9f0d2bcda377bcbade6019cfa01312fce3a82207b0327d22c7
Date: Wed, 26 Feb 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740595733
