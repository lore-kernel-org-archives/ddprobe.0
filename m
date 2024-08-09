Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298215ADB3
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723230354; cv=none; b=RUZI6KrZMs0Wm+S30ONpUyGxAkF4eAI79d05lWA984eWxTKUW12NhW5itp6UAiywwN+Mnl51t3DB5HeVNT7IqG9ZmsRqvdoHb6WRji+b1CxUHUN66aoFOyZPtTOBp7santB0XoWP8ZJgz+VvU4JMZEO+B7mw7w+J+NObHCbe8Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723230354; c=relaxed/simple;
	bh=allZ64c+pmO8lFtyEPKHQMnq2oQ3ytJgR2rV8pYjupc=;
	h=To:Subject:From:Message-Id:Date; b=nlOrKngEIvixbEYjhsVWv0KsmddF4BLzByQGur8GcC/Ro+KBxFZU7e8alS/6yxVPKIiLAqwvBp8SIVIKKj8VS4thP9KvKAE/98FbxCLLfURvOK1TQcDVJ5OaA9uEFD+C4HQOm0/+x882mXdatVADDlaloPUFE/jLnRYWc9DEwhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+ApaZx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+ApaZx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D00C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723230353;
	bh=allZ64c+pmO8lFtyEPKHQMnq2oQ3ytJgR2rV8pYjupc=;
	h=To:Subject:From:Date:From;
	b=l+ApaZx4eIz3zlJAG5PqI/uj/JvQWTraMaAdiK/51xk/8tooUS3xdg4riScIn4SCm
	 snzMKFVDy0rJ0d0ae8ZqKUfrNCRd8eOTDtJzTRHCJVfc2M6lX8f0nMW08tsvK0EICZ
	 yst4UvT04b8DWLlHzS3SVT16NMtbvGtZv70zKQMjhxuU471A0ag13wU1d34o0uxEMp
	 v/fp4+OCmhdk257bx7FpY/QwDj8Pt2j+Rb2+jqx+MHonCN/bDuO/P7igoxHLOpCh6Q
	 bLhWx7Gcjkt9UkAQZQWc99TymssVtjuGT8agJweVMPW1lDacgFgo0Z73AysCRwrXcw
	 lmf8hGyw8eL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B05AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323035362.16485.2933338241260047734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572fea135fbef29bc99891eb87a9e88254dc5a283e16e529592fe144032e0b46
Date: Fri, 09 Aug 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723230353
