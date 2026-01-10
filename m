Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181E635965
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768083834; cv=none; b=UxImYwvuc5tJXxi/wS4nLSJYGZPTkkif1Md8xBw40KJgyJ/L6MDmzIK+dOVk6WJ9/MoVcTgEaQug0jgp/wIkbaDqJBwXSYKZVDbdj4hI+NTu1UP6+xZ1yNq+dqkQ0Am1eCD39KxABgEwWMNk9QCXepTCn3yiPk2GNbSsIx8ri/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768083834; c=relaxed/simple;
	bh=AgTP+1fgheXATdsl3TboI/32fv2zjKfN8LwmVE2zGzU=;
	h=To:Subject:From:Message-Id:Date; b=C0zQqRJbGv4/+fTo8zm6pCS7tpOHIFXd3s26eLfRJwf5aCESrIfJ8dA+epNxkIBuIcBmBhxKjn0nalZu3lzohNFGbWKp/hhKZl09MFtKan1iMVtSE8zNcur6h3HjZns3sLgj3FG9k4Tj9pzuXQAytsgjbpCDcEezhfGgPHPOKqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuI5IKBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuI5IKBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768083833;
	bh=AgTP+1fgheXATdsl3TboI/32fv2zjKfN8LwmVE2zGzU=;
	h=To:Subject:From:Date:From;
	b=WuI5IKBpllxCI9K4lr25eX228qxKbJQ0dzw3lT8zD5XjeR5UXD4yplUTJsUNuDXl8
	 Z75Yr1NkCuYJWvzEeVNVS2SDbVA4I50JbtuUGE2l12ypv5DlMwVEU+aYISDpbjBQ9T
	 NWecD2CSARNh82Uv1vRapyzvx3R4or7RHvKWTSUm6Dn/JDVGuCbMyHmBHzstaTf9wH
	 U1tSt6zU1LFp6NksdnD23hRigBDFo5jY9Qc4Nh2EiYp0TlzvxKSBVz5t7hUavuZsb+
	 EksfOWmkT9Kygskz79MB4QZ28qFNjz5BOaLn8wJb5vSsp1K1I4Zqg12CHwzef89H2A
	 lvglJBR+62usw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92663D25026
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808383357.10995.15439716780672908259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd38edd80187b814dda67ae17594edc606afc55eda998d73468c4b766cbfe7b6
Date: Sat, 10 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768083833
