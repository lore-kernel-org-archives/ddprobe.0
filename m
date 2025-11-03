Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4FB23EAA6
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762205994; cv=none; b=t22TSNnkc+1TkEUSxJgG07W57JMSL/+TweIyfC5e1VaD3PdxP78hW1rvSp4jOTfnvDqouo/bZ6tvSn5qJUO8G54cLk3CJCgf3wDcl3A0MvZ5RChvjWSXx4APvXUGJ220Qw4oJYmSxIZmpz+ZrpMUEyfphiJmLK9/J6lH74NQAhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762205994; c=relaxed/simple;
	bh=hYmtu19Z05h7Yrh0aemEcQLYxKfP56vv9l+zzUq77WE=;
	h=To:Subject:From:Message-Id:Date; b=T5FMhSP9gjyP761oLcYiBlY8UFPAnWsRS3RkAgIGQar9a2kL3gW5vGy7gPUlvEcWHZL4MbGZly6767suIK1JzFo+o+ddHZ895yrdU05IkPdV1GvIvL0W9tdJIERZeLl9b7P2IirHBKaQ/Xw8zYefp6RvgA8Rc2SV/oczZwUtRrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=If0jrjwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="If0jrjwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EADC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762205993;
	bh=hYmtu19Z05h7Yrh0aemEcQLYxKfP56vv9l+zzUq77WE=;
	h=To:Subject:From:Date:From;
	b=If0jrjwIrdQSZcRiZD+Is9lfWc+TiXifmT2z5f6MmQ/+gsAxVmuNm9fEa9g3akNJ4
	 VhM2Uy6TFfYgv9pNekKmHqKkTyILrmMI0h6cyDJTsIog+uY8IhwY0VYQRxgknHo6xo
	 IJ9EWbote88hgHqlGYY4HHRriPm0NRUIB4LfPB7LS1zIe4t/3Be9JFoEGckz/hLwXP
	 CmhF7mswCpK3Vh2XgQZvsZLlps7sFM4cArC4T7pT4XqAJGanIgRGIeLypE11DC7+cl
	 fZOhxQ+z61/FYpe+wa2cnnP32EXTIBtDmHHWk/ZFHE5ho9cHVED8SOSvvFzpGeV2IF
	 HicrW30ip9haA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94179CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220599359.26405.10516272839058899929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d550eb06fef2956cc572e0c4584790f3b4ade2212ae7a2c29725769ff04c9d
Date: Mon, 03 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762205993
