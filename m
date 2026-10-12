Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6915A33A6F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791835234; cv=none; b=AMUCa6JtD6ztdbQpdhcC4q/uGCJ6cmmCz5JmwzqBOh3ZP/dMvdpyfrCivhW7JtOEXHBTkS61oFl4zUJGgJ9/llO7OTsYK2LvAjPdZN1A/4Hj+poR/Cno4maylSWsIzeDH3uAAj2fgKREHLdxV3w+47Rx8wI/bRHMox1tlRvY7jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791835234; c=relaxed/simple;
	bh=gXHv2+j1JF64fzBTWVdIoBC0BDkACBMnoGC3I5wzGkM=;
	h=To:Subject:From:Message-Id:Date; b=Kzgh9IaKVPSBKJ0/dJ6RsjTijyABp0nEylAgSsi77ivUF+r29pujSshbkP7cdqLrpB8EPMjgcjwLN8S8QYYEv3UfaBzRN1t/YlSg7vR9Qpcx+avSD1XSWGR/wMeHg70tIJALEtOvTUXVy5EklEHx46HL16cddz5AlRF8465JQy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1po4DQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1po4DQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5748C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791835233;
	bh=gXHv2+j1JF64fzBTWVdIoBC0BDkACBMnoGC3I5wzGkM=;
	h=To:Subject:From:Date:From;
	b=V1po4DQ6RyT1sVp9RcmJUyQrSbwi9duHgpPHqtZg43ATt1+0j/vbp1RPHl1o5GNs7
	 45PtmVIQTZRLcQk4dsHu2rUDkccD5VE+ZviSKIwqyJz4CVioBtDZouQ/apRpRjWz+7
	 ZdBTjufIVxV3GnDyrLNlAHzxgU2ZEbePtNeSItjMWxvZNdE27bxFo3/e0BP7sjq+CU
	 YnAmulSoo5hJIofTmdsLrsDMNe6LiEqbqONEBqwxWL3c/+aONMqWKrCO9UX89rolW3
	 JJuIQwL4Kp+7GCF2YvlKUQx2N6rGFRdlDMDmI6jADf/RwaOrOY+rGkVUvaZwlYh4xS
	 Yl6s5Qqxehh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E18CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183523369.1627.18193333106658851940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f785b277e85ffdd361ec7a7fac3d952903ab1f1c8b294f703ef241dfd0cc3b02
Date: Mon, 12 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791835233
