Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DA42EA726
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760948395; cv=none; b=a6VZE99YHxglepLkYqJmDIexttsbDokKJOvWEMgciYSeUXk+PNC+sYvvHHynSX8TETIMoscXnefaxqCmwE5IX4hwXrfOuN+eoZcbYbaLw+dRp/Bnj6Yo8ToUPCOlL2qD+Mh/s+Gz5zTyirDlQd+TWEVNubLzTklQArr4Hbv5Ro8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760948395; c=relaxed/simple;
	bh=DdHEm7hyC5v94297zqKXrMCAzplNifFsi8J9wIfOgz8=;
	h=To:Subject:From:Message-Id:Date; b=KiYtgj/1mQu/rqkGh/cKWLFz9k8uAbrJh5Ad2EmHmjgmUWx+Q/MvBkGhlc8w9tuxN0ENXKyiJBO1nSKvtfhILIPCVnNcFXglOQtZhRRkKcaJaOGIh9Lw4w+YkOVVCYgR8q8pH63TLeQ6WVXRuXOCeYtl5tYtAluw/1ff1423B6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGFPmmAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGFPmmAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F04AC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760948393;
	bh=DdHEm7hyC5v94297zqKXrMCAzplNifFsi8J9wIfOgz8=;
	h=To:Subject:From:Date:From;
	b=kGFPmmAlwhNkRsEHSioIbY/2Wz+9NMSbhN26ijoLSfd3ttLi0kGkj54OqcueTmBF6
	 lWzsyC+JbBEYclKH1IgzG1yma9eYjDJgNwzAk0LCnrPDejQcatEgsv8gDCLefHMh9M
	 1l7edUc8Ng3AAuRm/KBVYHLyIEYTWlqlke3fxGIQumDLCS2YazFP/rVmWPuTs1q4ie
	 0WQoTlpRNCTnKA7gZx3N68zw9roZrcaMuo/WHGuTIDHQBU/2Aug9BQ/gdlJH1jEJy4
	 uKIRR2ntZYJKTIIC/ukzJr8GOYlXseV6BLkZoqSE5Y9agAw3CFKqbnKF8FnMojPLu1
	 AN58hN00sr/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C98CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094839358.7797.17601086628184076488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd2fca93862827ec8bed18f66f1ea8c131c0cd0eda8e5b073fdce6e47c554d2
Date: Mon, 20 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760948393
