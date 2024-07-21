Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBBBC8D7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721594754; cv=none; b=W7H+Iz0abZNU3RT+KtlnixhhHxCmM8lK8KSCWX7hcvbu6UgnnADL/GMD+PZmU4WrDvzepwavsGag5P+pBxQMdcF7shqgYzHLXTL0zplKCBXYfhSklvVONpHL5hXTROWJuB6iRdbxJnK6EdRYyVO5VsCjP0aBymnNJ/hAu7uXPT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721594754; c=relaxed/simple;
	bh=TJILN0lan7knpODl6MSTAB/0zhz8UEKrY/xfxUy+wvQ=;
	h=To:Subject:From:Message-Id:Date; b=EAQnjSAEwGhA6PuT9Q95kLg1sGq88bWtyjBp3xAv+6Wg0aYjjqicqtoXJfRVxvcp2QyEQtbh39TXD29fdPX19I1/zF0ZOGrMRaPzThCdHbxwmB4bIG4AYvQ37FC19JkBhRjs1cpGdPz4Ew1+8wNrc5LNRQH78mlu21Nn4qk08GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+F/XOny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+F/XOny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98C5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721594753;
	bh=TJILN0lan7knpODl6MSTAB/0zhz8UEKrY/xfxUy+wvQ=;
	h=To:Subject:From:Date:From;
	b=A+F/XOnyvuyQDjFcPo9YAWARznnJqmY526/IZYe7v4/y+seIjJm/+ev3byi+L+Qfv
	 PvHcHxu1VlEq6T5LhbkMbRU6Brd74qh5K+wMHC+jQ/qTv2dE7Mo/d5QwX1lXu+EwXa
	 ZqCReytAxo5j1kKY/XFvgQ/4JDiWji1t1gi40Rn1wPShTvA76QkxmKT+xjYM24omaA
	 B9Yr1fp2XKt4RHLcn6KJzjxTca19z/NYNZKPGSBdHtY1pODNM8EDlz95GtBRC3Xu0r
	 6HsMuP2K7K9lxb3VigbwIyAKFns4i5y/uV3fuqpNkYtr9Y42o5NVUz1trWaDnjNIiy
	 SUoI5l2SleExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94368C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159475357.10257.6167246509010230148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ec99753f8778fdfc0362d2a1357f14cd261a0a58d3fd5fb0d95ab107c44972
Date: Sun, 21 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721594753
