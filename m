Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243BF13440A
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716210143; cv=none; b=eR07SRNzOWLrHkLpNvYBWvVhTIHxlChHhWuxS8PgMaYtG7bXgbPPenZPXZe8Y5wEbUWwh+HRYS+WBV58+ByoyZXrPGzS0X8ZHK5iOloqGr7q+Kl6Iwk/qjROb+t2imAmLOiUIftRqKdU0sXP45B3+2LasebofN79dRv+vv/3fzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716210143; c=relaxed/simple;
	bh=SOEsawmOvRdBdPtB2jZ8Id+UCkvwZ4ZlhZim6iy5tvs=;
	h=To:Subject:From:Message-Id:Date; b=gQH+n/SEFhMNK6e3yrXgsvvCs01+V3wLYiCC9Vwh/4xKXTnRaCE0+gfPCM8PTF0jtu6Udm0TJ028ZbnecIBqAG939FNiSyow73BFrznTais1iUq1TPFl+vAamkf6+x4Kjn8mgWBxGEPK75ebxcKOE1nvLJsSwaaQJCBW3CClZYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIOI1L/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIOI1L/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBBABC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716210143;
	bh=SOEsawmOvRdBdPtB2jZ8Id+UCkvwZ4ZlhZim6iy5tvs=;
	h=To:Subject:From:Date:From;
	b=lIOI1L/vbBZYCvVPNoIYReGqYxi0Cuhzaee7x4QXqbfLKOFnEL/b1CtnjS+tGz0s+
	 frtd+8l1hF74weSphlLBZWpsdF4lAZppGNCJRmbuGVuzInJ1c3cMykMsQaRgKpHARs
	 xuonAEhUOTYOe7zu+ATobOXmridJ42DXB2DsJcZ9r7vm1AIqohoOhWG/FTIbY5evML
	 2V8zhRIa+H9Ps5OeVHG7BS7k826/SCLHEWwmrh5DWrBm7fv0jiTSnDCkA5j0uxIliO
	 xgHS9Ywa+7l4bmGsj3gU3tBcqhJSew0CYSy7Mj36ndUzzjUxk+f9sJSB2Mbmj0iBm2
	 nWBFec5WS/lQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE660C25B78
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621014282.26588.11003103628315071742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7155205ee36dda04a3f5bb3f13e1024f0d2f858f47ac81f1662f1bd4a6d506e
Date: Mon, 20 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716210142
