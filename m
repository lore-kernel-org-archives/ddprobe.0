Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCFF34AB06
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777577254; cv=none; b=qFq5A4IWNnk1++p7fREVa3UaZRuqCLWL8YDhs5S1VZ/EqnDr2BHsd3zH+B/wxvkM/bJfAu7oL2Ll5lMR+2CRMkIJ0eDVc550FiXOtYasFTowOjvMWdDpS/EvsfqWxlkASr20J+n/hBgEe5EDEPsMZhu73CvoROL/19ekcJ5laOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777577254; c=relaxed/simple;
	bh=GqkWi4cyksPA3QT58BZripQcAKgsAlclcRBYt0IZinY=;
	h=To:Subject:From:Message-Id:Date; b=H5NaD+9POSxEbkiHSrCR8uriKDm2R6Csd9ZOKVAGZEm8FUCb3J+alQvfodx0WqH5Lm/u2/zeoI/KtzEmtn+Wv8pEst89u0et0OuW6m3VaHmPKedmHgA+NkAklE0W8HJJmAYSAgtegO4oj1AQjrOw2NPtAjcYOTn9xQ5o5IFshlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSzR1S2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSzR1S2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB24C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777577253;
	bh=GqkWi4cyksPA3QT58BZripQcAKgsAlclcRBYt0IZinY=;
	h=To:Subject:From:Date:From;
	b=PSzR1S2V20Gix1JwRX1rbm/8e04L7w+y4a3AvU0Pp0umn9RCYkgXCBe95hgxCp686
	 jaJowW+COpZwGU9YPSKTdJJGmo2ZQIPavJpNmytz3Nhfd55o85rqjWgpJ9xouHwhxZ
	 zb15ZQ8DO/PNJy0jeo0pYLtY0eRNbG5GvBu2eec7CR9bklAS8JMrlKYx48GIXDClaE
	 kWY017/Yy5Tq0QTzjHAeraYkXiuM5DmorFEjZSEpNt/T6EMAcQODJIkUU1yT0DU8Ug
	 CFkC+8z9TifBZLF9OdZsYeA41lNP+LTbZ53Cw+aiPEdAPx+VJIVi9PDN+BzGwiB+lo
	 D7vIIIU6AdTAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA289CD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757725368.32637.9916604571905111680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7079833d30cc1f418c50b0f180a37a06969dd7e526e674c334f1be2a467ec9
Date: Thu, 30 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777577253
