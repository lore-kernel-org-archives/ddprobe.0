Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F929C321
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770543234; cv=none; b=qZHBEx9eN/0wT2M2msHJJHcJMrLGjgZnX/+Uc825PoqSn/xVANZYOXodarvk4xIyhS7zFF0nHqllV43MhzGC15ZCa3S0oVM2GsNXgCQ7j0LyLX7EbyCemfKjuMVkCJ/JsMgLiWnUs32amcsJcw6RLTDc70gt5DNhJMI/CJltVI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770543234; c=relaxed/simple;
	bh=E7PBjHdpP1uOW//lZU7N0UJ/XzR3qJeFh6Z7lUjZlUA=;
	h=To:Subject:From:Message-Id:Date; b=bPbHifigzo9HJvH7V76VAXQ5Q0QRi41DO0prnmVESQ5ZSZUevGUPNVT8BmnXCbiv33G9jfQ7OssW9Zp6hUFDAYEN1beKS8hxpAnkYClcpFXglk49+H/8poSA0L2qT6DtTx3fIfnzH7q159jmIe7/kV9e7h7HCDK6sEUDlbTs7JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxcX+VhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxcX+VhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE389C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770543233;
	bh=E7PBjHdpP1uOW//lZU7N0UJ/XzR3qJeFh6Z7lUjZlUA=;
	h=To:Subject:From:Date:From;
	b=dxcX+VhKu+S1p9U5TkV4Nh38Sh7ntgboB1GXG9OBuuhLl6GjQu0MfuLhU5BXy/sOq
	 5f9D7Ixy/inKzXLvsL/qm/m73Vri6pEHdyqNKT8dJohUd4hO6ukxjg2/DjrO0da3+f
	 L1OY7jihFc+0A1WJ+nPo8sg1zWPR+NjH0XWglAkF8GwVodPCk5CZ8DNaGjXGNrjMdk
	 nxy2XoimUhMtfP1nBKfpr35cbDQu2B21u7NR5bHbQPhPYU+fOCaTGc/t1aOT5dO3Pd
	 WOA5X1vPg6p1KQ2zuJWcFC29nlTYMF/3G3ejA3O6kzHHQq4eTmoVdf8EWFFLNdaxGi
	 Qqb/ZTVrJfsTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C09EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054323360.12946.2149319930273353723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22eebb01b685ae70b1f4e04a28c7ededc5657f4aef14d5482fbdc2deb3e2801e
Date: Sun, 08 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770543233
