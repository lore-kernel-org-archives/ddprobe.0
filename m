Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448B5492E27
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788928234; cv=none; b=RzUrO5ov7igvPd/iJwzcD4j1gmVYGnLx5Fg4dIVgf1upded2eDi8WViLJgy5xnrZiiQ+Cz3vAOgYnTNM4mOGjcLCtQ4V3YZ0Il83DJXxSft4OgP3SCLzYVEUj76CAFvIB5rtafJrR2hsUWoluOE5mFHUqeeWOJXe5mrFpfXqkHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788928234; c=relaxed/simple;
	bh=mGZtKwzs6im9DC6h3Xf51tfuKE0lRFRm3cIohJvLgWg=;
	h=To:Subject:From:Message-Id:Date; b=dDmjKTeqt8KEP3IPPKNjzdEUVfGwWyaisDwv+joN8AfQtTVq6AidXyrSgb12v6VtYk9Quivm+hHmO6IT2PhVfdcn4rH02kgsOcMf5ZL/wJKRwsit1GmLycEjRXn8Owua60GTXOm2i8erJYluz9+h1A4VKUxw0pd0IlNkwJ747+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9zYvdzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9zYvdzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7D9C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788928233;
	bh=mGZtKwzs6im9DC6h3Xf51tfuKE0lRFRm3cIohJvLgWg=;
	h=To:Subject:From:Date:From;
	b=O9zYvdzsid/34qFnzF5Oar01B37LW9G8gTQZ4itgcymTKSQgCSwOXyHRxp9+xe6/g
	 hrG3EBRNhXJ9wVZlh4y8Af8kZtojoZchCDxnMLQ0qMY3zjwHKaa9AEJa5zkoRnyD+7
	 BsoYPDXEPMxBt7e7k3HBifgTjfhSqb9DvwIVtmunkxYiZVad2PClv86CthctBX0Kms
	 XjGDyXlb8k7u/MECZWM3d7s+mWl0rmUgO6iw3nQUV35M86KxTdhkTc49X3u/nkRWoD
	 kuscYgfCjU8LPk+mg2Bfnhd8MllH9LH52W16rcG4+GArEbdFvVWyEdE50J73xx2XHs
	 dsbDTNggav3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC6C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892823369.27128.9549456730787967248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c649e81e8f80a3a92d1e42d36f8c3a915b3de076cbd211a49aa164323055d75a
Date: Wed, 09 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788928233
