Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282173246EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776848254; cv=none; b=toOHsG4AS3qJXJm+TFpqzugM+4Wz50H7gVJ5ozohRHW1wpy4+mDd6thILZF6jBjAiQf3ekjf1IYRd2kdbxP7fJZEj28dIjtooGCMIO2vxZA/2i1FKhGqiUHJOfL4isdXZBatJGh5XqNCdszXuQ2bi4BjI7fwK1Nt1h5xudnI5nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776848254; c=relaxed/simple;
	bh=HUiy8shWPzsHQZOQAXAyXI/tV5jrDwdg+TzVrnRukI0=;
	h=To:Subject:From:Message-Id:Date; b=Kuy8hidLhcQwBG4zZSeRbQ3vjJaX927a/pKmkMbTHewxKnE20CEsfXHh0Ha0ginCtfOCJE5CJIPSIg2qMEGU5dWpukJqile8FoRU7+gaRmeTgQ3Hoc/hrYO4xYOFzTt5sKN9LUlmA+JMzRYhnT5nwcTrVxeo0RnKk1UcTjwnThQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv3yXTnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv3yXTnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0198C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776848253;
	bh=HUiy8shWPzsHQZOQAXAyXI/tV5jrDwdg+TzVrnRukI0=;
	h=To:Subject:From:Date:From;
	b=sv3yXTnBEYOQsQklOFXeyZyeQ3dp9qJlbb8+Zvmmt6YODJ2jrG+sVDP6kxLcPdBF5
	 Xot+BPuedTSaKaHBsDRdFaS3WfT/fE96Mz0dNVO0VbQcQkK5CfuvbAi2GWavGY5Gg3
	 eHkhXUjJLHmWGMEEt6wY7a/Kh8IRkBskIjTuJXEak6TjWIxczsKfvCQoRfwFiaSAQ+
	 Vf4RR18KSHtFX8p6mwNXT4C7pS9uQvuBk8x8ejXWVmo8GmtvoJ8aLUOkiono3Vfy0E
	 Lc41ftxst648HNAE5rmpaEuyEbFPtA37fE9PKgdp5DAqeYC+aDUF+UCGZy7htYPu/3
	 QuU/Xv0a/h1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2605F9B5EB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684825371.27005.6809845592165189095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026789de4fa673260089e0eeb6a4b17ce6117a8441044179234ce29694723b75
Date: Wed, 22 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776848253
