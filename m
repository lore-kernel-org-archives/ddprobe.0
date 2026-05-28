Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36B3F8717
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779987154; cv=none; b=ShoyGwPh3LTJSiWCTOCklx0IOgKkx4K+s3+d1hKQv5jVOLwL/o5d97q3A/e2vxm5kGdFCWARxLxBTlglC668yhx4de31NMiiUwIZUHpJ5HYpXzh9aSMx4mm+Y8jfdhqbQtBmhVgDjcHGhkLFlFgvoX83U8OC5gatbzZR6xJU+zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779987154; c=relaxed/simple;
	bh=X24SxR1u76k2hkRFRsAwehv4tlymbZDci/F6iyWrK10=;
	h=To:Subject:From:Message-Id:Date; b=YywZcaVEm8XKGfhHziA+0dXK/+NlJSBISJeepMSS9rEMOfNgh3XxJML3BTioS2QgWXuct6Lc0V9ruKqomfFDCbYHchEiZutf5ySZXR9RDqEQYz8Ha6LPTJEZ4rIBRfgSpJ/y9MyPBiU/Pb5iGMJV+Olid+jqoaN9VSht7ES1k9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCtC7t9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCtC7t9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2359C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779987153;
	bh=X24SxR1u76k2hkRFRsAwehv4tlymbZDci/F6iyWrK10=;
	h=To:Subject:From:Date:From;
	b=QCtC7t9jadAF8HOCx+4hqPoEwepgo1W5JNCcVMkjDgyMJd4Eb28UhJfCanYIjKNrm
	 nUmZXYRbci4OcaoGMDDyvXZ+lY8NnU5GSYqk2q1g52EagDvIeEKcyXbm3AssjUDacp
	 9ixblo83s3l+66ZsWMn5QvDLNQaklhJaqZz8peNtqy8/iIc8lDNR3XrpkaAZKbrlSE
	 M3ieeM5S7IIGsXY3lxWnsdI0XB7Q7rIOLIijK+m0gWpUNJ9VmYKT76864e73S24U6E
	 t6wuxxy/xjPGIs4hcs6N3n5kdAEYzjeXMoYFFQhrFTIRo2omkVnffTVNTB1OurjNgU
	 v2f73J/WfQg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA342CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998715369.6238.730367312398649630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bdb1f68e381664caea4a8655d440d0dd53454ee094b5d5cf1daf68a9721176
Date: Thu, 28 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779987153
